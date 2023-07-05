// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'app_state.dart';
import 'guest_book_message.dart';
import 'src/widgets.dart';

class GuestBook extends StatefulWidget {
  GuestBook({
    super.key,
    required this.addMessage,
    required this.messages,
  });

  final FutureOr<void> Function(String message) addMessage;
  final List<GuestBookMessage> messages;

  @override
  State<GuestBook> createState() => _GuestBookState();
}

class _GuestBookState extends State<GuestBook> {
  final _formKey = GlobalKey<FormState>(debugLabel: '_GuestBookState');
  final _controller = TextEditingController();

  late DocumentReference _documentReference;

  DateTime now = DateTime.now();
  final currentUser = FirebaseAuth.instance.currentUser?.displayName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Leave a message',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your message to continue';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(width: 8),
                StyledButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await widget.addMessage(_controller.text);
                      _controller.clear();
                    }
                  },
                  child: Row(
                    children: const [
                      Icon(Icons.send),
                      SizedBox(width: 4),
                      Text('SEND'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        for (var message in widget.messages)
          Container(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      constraints: const BoxConstraints(
                        minWidth: 450.0,
                        maxWidth: 450.0
                      ),
                      child: Paragraph('${message.name}: ${message.message}'),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(message.time),
                    )
                  ],
                ),
                if (message.name == currentUser)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () async {
                          if (FirebaseAuth.instance.currentUser!.uid == message.userId) {
                            _documentReference = FirebaseFirestore.instance.collection('guestbook').doc(message.docId);
                            await _documentReference.delete();
                          }
                        },
                        icon: const Icon(Icons.delete_outline),
                      )
                    ],
                  )
                else
                const SizedBox.shrink()
              ],
            )
          ),
        const SizedBox(height: 8),
      ],
    );
  }
}