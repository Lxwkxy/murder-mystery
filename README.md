# Murder Mystery in Prolog

A small logic programming project based on a three-suspect murder mystery. Each suspect is represented by `person(Name, Room, Weapon)`. The clues unify these terms until the murderer and every suspect's room and weapon are determined.

## Requirements

- SWI-Prolog

The project uses only SWI-Prolog's standard libraries; there are no packages to install.

## Run

From the project directory:

```sh
swipl -q -s main.pl
```

Expected output:

```text
Murderer: plum
```

On this Windows machine, SWI-Prolog is installed outside `PATH`. Run it from PowerShell with its full path:

```powershell
& 'C:\Program Files\swipl\bin\swipl.exe' -q -s main.pl
```

To explore the solution in the Prolog REPL:

```sh
swipl -q -s src/murder_mystery.pl
```

```prolog
?- solve_murder(Murderer, Suspects).
Murderer = plum,
Suspects = [person(scarlett, lounge, rope), person(mustard, study, knife), person(plum, pantry, gas)].
```

## Test

```sh
swipl -q -s tests/murder_mystery_tests.pl -g run_tests -t halt
```

PowerShell on this machine:

```powershell
& 'C:\Program Files\swipl\bin\swipl.exe' -q -s tests/murder_mystery_tests.pl -g run_tests -t halt
```

The tests check that there is exactly one murderer and exactly one complete solution.

## Clues

- Scarlett was in the lounge.
- Mustard had the knife.
- Plum was in the pantry.
- Someone was in the study.
- Someone had the gas, and someone had the rope.
- The murderer was in the pantry with the gas.

The program uses `member/2` from SWI-Prolog's standard `lists` library. The original mini project defined its own `member/2`; using the library predicate keeps the project focused on the puzzle.

## Project layout

```text
src/murder_mystery.pl         Puzzle rules and public predicates
tests/murder_mystery_tests.pl Uniqueness and complete-solution tests
main.pl                      Command-line entry point
```
