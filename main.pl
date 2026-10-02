:- use_module('src/murder_mystery').

:- initialization(main, main).

main :-
    find_murderer(Murderer),
    format('Murderer: ~w~n', [Murderer]).
