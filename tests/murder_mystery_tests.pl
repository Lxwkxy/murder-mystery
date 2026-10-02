:- begin_tests(murder_mystery).

:- use_module('../src/murder_mystery').

test(unique_murderer) :-
    findall(Murderer, find_murderer(Murderer), Murderers),
    assertion(Murderers == [plum]).

test(complete_solution) :-
    findall(Murderer-Suspects, solve_murder(Murderer, Suspects), Solutions),
    assertion(Solutions == [
        plum-[
            person(scarlett, lounge, rope),
            person(mustard, study, knife),
            person(plum, pantry, gas)
        ]
    ]).

:- end_tests(murder_mystery).
