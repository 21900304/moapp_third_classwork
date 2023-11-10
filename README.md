# PLT Homework3 task2

## Compile and Run

### In Terminal and cmd
1. Move to src diretory, then
2. Compile: > javac functions/Main.java
3. Run: > java functions/Main ""
note: "" is mandatory. ex:) java functions/Main "{with {x 3} {with {f {fun {y} {+ x y}}} {with {x 5} {f 4}}}}"


## Getting Started
* Problem 2:
* Solved by myself: No (Referred to external sources).
* Time taken: About 1 week.

[constract]
1. interp: FAE? DefrdSub? -> FAE-Value.
2. parse : sexp -> FAE.

[purpose] 
1. To interpret an FAE expression within a given deferred substitution context and
2. To parse a given S-expression into an FAE expression.

[tests]
1. input: "{with {x 8} {with {f {fun {y} {+ x y}}} {with {x 7} {f 5}}}}"   , output: (numV 13)
2. input: -p "{with {x 8} {with {f {fun {y} {+ x y}}} {with {x 7} {f 5}}}}"  , output: (app (fun 'x (app (fun 'f (app (fun 'x (app (id 'f) (num 5))) (num 7))) (fun 'y (add (id 'x) (id 'y))))) (num 8))
3. input: "{with {f {fun {y} {+ x y}}} {with {x 6} {f 9}}}"    output: Free Identifier
4. input: "{with {f {fun {y} {+ x y}}} {with {x 6} {f 9}}}"    output: (app (fun 'f (app (fun 'x (app (id 'f) (num 9))) (num 6))) (fun 'y (add (id 'x) (id 'y))))
5. input: "{with {double {fun {y} {+ y y}}} {with {x 7} {double 74}}}" output: (numV 148)
6. input: -p "{with {double {fun {y} {+ y y}}} {with {x 7} {double 74}}}" output: (app (fun 'double (app (fun 'x (app (id 'double) (num 74))) (num 7))) (fun 'y (add (id 'y) (id 'y))))
