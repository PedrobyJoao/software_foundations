### Functional Programming

- One of the goals is to have pure computations:

#### Enumerated types

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

- _destruction_ and _pattern matching_ relies on the constructors

## Basics

> Question: I got the point that we can have a certain func `fn`,
> build theorems for it and prove them. However, is it correct to say that
> for `fn` to be really reliable, we have to build and prove several theorems?
> (like building different test scenarios for unit tests).

## Induction

- Difference between `destruction` and `induction` (the latter creates an assumption)
