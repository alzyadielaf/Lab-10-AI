credential(asma, 1234).
credential(ali, 5678).

login :-
    login_attempt(1).

login_attempt(Attempt) :-
    write('Username: '),
    read(Username),
    write('Password: '),
    read(Password),
    ( credential(Username, Password) ->
        write('Login Successful'), nl
    ;
        write('Login Unsuccessful'), nl,
        ( Attempt < 3 ->
            NextAttempt is Attempt + 1,
            login_attempt(NextAttempt)
        ;
            write('Sorry, you exceeded the maximum '),
            write('number of attempts, try again later.'),
            nl
        )
    ).
