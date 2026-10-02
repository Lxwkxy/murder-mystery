:- module(murder_mystery, [solve_murder/2, find_murderer/1]).

:- use_module(library(lists), [member/2]).

% Each person has one room and one weapon. The clues determine both.
solve_murder(Murderer, Suspects) :-
    Suspects = [
        person(scarlett, _, _),
        person(mustard, _, _),
        person(plum, _, _)
    ],
    member(person(scarlett, lounge, _), Suspects),
    member(person(mustard, _, knife), Suspects),
    member(person(plum, pantry, _), Suspects),
    member(person(_, study, _), Suspects),
    member(person(_, _, gas), Suspects),
    member(person(_, _, rope), Suspects),
    member(person(Murderer, pantry, gas), Suspects).

find_murderer(Murderer) :-
    solve_murder(Murderer, _).
