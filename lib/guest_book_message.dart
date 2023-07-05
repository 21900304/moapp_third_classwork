// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

class GuestBookMessage {
  GuestBookMessage({required this.name, required this.message, required this.time, required this.userId, required this.docId});
  final String name;
  final String message;
  final String time;
  final String userId;
  final String docId;
}
