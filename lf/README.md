## Intro

### [Conceptual] Functional Programming

TODO

- One of the goals is to have pure computations:

### [Conceptual] Enumerated types and constructors

TODO

- Constructors: what are? (they can be any token really)

- Are constructor functions? (related to: args applied to constructors)

> These are all things that can be applied to a number to yield a
> number. However, there is a fundamental difference between [S]
> and the other two: functions like [pred] and [minustwo] are
> defined by giving _computation rules_ -- e.g., the definition of
> [pred] says that [pred 2] can be simplified to [1] -- while the
> definition of [S] has no such behavior attached. Although it is
> _like_ a function in the sense that it can be applied to an
> argument, it does not _do_ anything at all! It is just a way of
> writing down numbers.
>
> Think about standard decimal numerals: the numeral [1] is not a
> computation; it's a piece of data. When we write [111] to mean
> the number one hundred and eleven, we are using [1], three times,
> to write down a concrete representation of a number.
>
> Let's go on and define some more functions over numbers.
>
> For most interesting computations involving numbers, simple
> pattern matching is not enough: we also need recursion. For
> example, to check that a number [n] is even, we may need to
> recursively check whether [n-2] is even. Such functions are
> introduced with the keyword [Fixpoint] instead of [Definition].

#### [Coq] _destruction_ and _pattern matching_ relies on the constructors

TODO

## Basics

#### [Conceptual] Proof assistants, unit tests...

> Question: I got the point that we can have a certain func `fn`,
> build theorems for it and prove them. However, is it correct to say that
> for `fn` to be really reliable, we have to build and prove several theorems?
> (like building different test scenarios for unit tests).

So, proof assistants programming languages are not reliable magically.
Yes, they're more reliable than the usual tests that we write with other
programming languages. However, still, as for tests, we still have to write `n` theorems
and prove them all.

## Induction

#### [Coq] Difference between `destruction` and `induction` (the latter creates an assumption)

TODO

#### [Coq] Proofs within proofs to target rewrites

TODO

#### [Conceptual] Formal vs Informal proofs

TODO

#### [Conceptual] I don't understand why proofs using `induction` are logically legit.

see `add_assoc''` formal and informal proofs

Given a statement `forall n nat, P(n)`
When we use `induction`, we separate in two subgoals, the second with `S n'` where `P(n')` is true.

How is it legit to continue the proof claiming that `P(n')` is true if that is a not-proved assumption as `P(n)`.
(We use `P(n')` to rewrite and prove `P(S n')`).
