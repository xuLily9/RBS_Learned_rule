:- [why_question],[whynot_question],[write_list].
:- use_module(library(random)).
:-dynamic node/5, user_fact/5, different/1, asked_question/1,n_computer_user/1,y_computer_user/2,y_user_computer/2,n_user_computer/2,yr_user_computer/3,yr_computer_user/3,computer_ask_user/2,rule_used/1,d_rule/2.

check_rule(NodeList, Result) :-
    rule(_RuleId, Conditions, Result),
    check_antecedants(Conditions, NodeList).


larger(X, Y) :- X > Y.
smal(X, Y) :- X < Y.

larger_than(X, Y):- X >= Y.
smal_than(X, Y):- X =< Y.

equal(X, Y):- X == Y.


% Define the predicate to check if all conditions are true
check_antecedants([],[]).
check_antecedants([H|T], [A|NodeList]):-
    condition(H,A),
    check_antecedants(T, NodeList).



condition(bigger_than(X,Y),node(ID, X, N, R, DAG)):- 
    node(ID, X, N, R, DAG), 
    larger_than(N,Y).

condition(smaller(X,Y),node(ID, X, N, R, DAG)):- 
    node(ID, X, N, R, DAG), 
    smal(N,Y).


condition(bigger(X,Y),node(ID, X, N, R, DAG)):- 
    node(ID, X, N, R, DAG), 
    larger(N,Y).

condition(smaller_than(X,Y),node(ID, X, N, R, DAG)):- 
    node(ID, X, N, R, DAG), 
    smal_than(N,Y).


condition(equal(X,Y),node(ID, X, N, R, DAG)):- 
    node(ID, X, N, R, DAG), 
    equal(N,Y).



chat:-
    print_welcome,
    print_conclusion(Conclusion,F),
    assert(asked_question(F)),
    ask_agree(Conclusion,F),
    conversations(_Used,_).

print_welcome:-
    exampleOpen,
    write_user_fact,
    write_user_rule.

exampleOpen:-
    get_time(N),
    string_concat(N, ' .txt',Filename),
    open(Filename,write, Out),
    write(Out,'\n----------CONVERSATION REPORT ----------\n'),
    nb_setval(fileOutput,Out).

writeBothFact(String):-
    write(String),
    nb_getval(fileOutput,Out),
    write(Out,String).

writeBothRule(String):-
    write(String),write(nl),
    nb_getval(fileOutput,Out),
    write(Out,String),write(Out,nl).

exampleClose:-
    nb_getval(fileOutput,Out),
    close(Out).

print_conclusion(Conclusion,F):-
    write('\n----------CONVERSATION ----------\n'),nl,
    nb_getval(fileOutput,Out),
    write('System: '),conclusion(F), 
    write(Out,'\nSystem: '),
    (
    	check_rule(_NL, F)
    ->  
        print_fact(F),write(': True.\n'),nl,
        write(Out,' is true\n'),
        Conclusion =true
    ;   
        print_fact(F),write(': False.\n'),nl,
        write(Out,' is false\n'),
        Conclusion = false
        
    ).


ask_agree(Conclusion,F):-
    repeat,
    nb_getval(fileOutput,Out),
    write('System: Do you need explanation?\n'),
    write(Out, 'System: Do you need explanation?\n'),
    yes_no,
    write('User:'),read(N),
    (   N =:= 1
    ->   write(Out,'User: NO, BYE\n'),exampleClose,write('System: Bye\n')->halt
    ;   N =:= 2
    ->   write(Out,'User: Yes\n'),
    
        (   Conclusion =true
        ->  database(Conclusion,F),
            write('User: Why do you believe '),
            write(Out,'User: Why do you believe '), print_fact(F), write(Out,'?\n'),write('?\n'), 
            why(F)
        ;   database(Conclusion,F),
            write('User: Why do not you believe '), 
            write(Out,'User: Why do not you believe '), print_fact(F), write('?\n'),write(Out, '?\n'),
            write('\n System: Why do you believe '), 
            write(Out,'\nSystem: Why do you believe '), print_fact(F), write('? '),write(Out, '? '),
            whynot(F)
        )
    ;   write("Not a valid choice, try again..."), nl,fail
    ).



    database(Conclusion,F):-
   (    Conclusion =true
    ->
        assert(n_computer_user(F)),!,     %% LOUISE: At this point the computer should add F to N_computer_user and Y_user_computer
        aggregate_all(count, y_user_computer(_,_), Count1),
        A is Count1 +1,
        assert(y_user_computer(A,F)),!,
        assert(asked_question(F)),!
    ;
        aggregate_all(count, n_user_computer(_,_), Count2),
        B is Count2 +1,
        assert(n_user_computer(B,F)),!,
        %write(n_user_computer(B,F)),
        aggregate_all(count, y_computer_user(_,_), Count3),
        C is Count3 +1,
        assert(y_computer_user(C,F)),!,     %% LOUISE: At this point the computer should add F to Y_computer_user and N_user_computer
        assert(asked_question(F)),!
    ).



conversations(Used,R):-
    repeat,
    write('\n----------SELECT A QUESTION OR EXIT----------\n'),nl,
    (Used=true
    -> dialogue(R)
    ; dialogue2).

dialogue(R):-
    repeat,
    nb_getval(fileOutput,Out),
    write('System: Please select one of the option:\n'),
    write('1. Exit\n'),
    write('2. I do not have this rule used by computer or I have a slightly different rule\n'),
    write(Out,'\nSystem: Please select one of the option:\n'),
    write(Out,'\n1. Exit\n'),
    write(Out,'\n2. I do not have this rule used by computer\n'),
    write_why_list,!,
    write_whynot_list,!,
    write('User:'),
    prompt(_, ''),
    read(N),
    (   
        N=:= 1
     -> write(Out,'\nSystem:Bye\n'),exampleClose,write('System:Bye\n')->halt
    ;   
        N=:= 2
    ->  rule(R,A,F),
       (\+ user_rule(_,A,F),
        write(Out, '\n----------DISAGREEMENT----------\n'),
        write(Out,'\n System: I have found the disagreement. The computer used a rule that the user do not have it.\n'),
        write('\nSystem: I have found the disagreement. The computer used a rule that the user do not have it.\n')
        ;  write('\n System: This computer and user both have this rule, please select again.\n'),
             write(Out,'\n System: This computer and user both have this rule, please select again.\n'),
            dialogue2
        )
    ;   
        N1 is N-1,
        y_user_computer(N1, Fact), N \=1, N \=2
        ->  write(Out,'\nUser: Why do you believe '),write('\nUser: Why do you believe '),print_fact(Fact), write('?\n'),write(Out,'?\n'),
            assert(asked_question(Fact)),
            why(Fact)
    ;   
        aggregate_all(count, y_user_computer(_,_), Count),
        A is N-Count-1,
        n_user_computer(A,Fact), N \=1, N \=2
         -> write(Out,'\nUser: Why do not you believe '),write('\nUser: Why do not you believe '),print_fact(Fact), write('?\n'),write(Out,'?\n'),
            write(Out,'\nSystem: Why do you beleive '),write('\nSystem: Why do you beleive '), print_fact(Fact), write('? '),write(Out, '?'),
            assert(asked_question(Fact)),
            whynot(Fact)
    ;   
        write('Not a valid choice, try again...'), nl,fail
    ).


dialogue2:-
    repeat,
    nb_getval(fileOutput,Out),
    write('System: Please select one of the option:\n'),
    write('1. Exit\n'),
    write(Out,'\nSystem: Please select one of the option:\n'),
    write(Out,'\n1. Exit\n'),
    write_why_list,!,
    write_whynot_list,!,
    write('User:'),
    prompt(_, ''),
    read(N),
    (   
        N=:= 1
     -> write(Out,'\nSystem:Bye\n'),exampleClose,write('System:Bye\n')->halt
   ;   
        N1 is N-1,
        y_user_computer(N1, Fact), N \=1, N \=2
        ->  write(Out,'\nUser: Why do you believe '),write('\nUser: Why do you believe '),print_fact(Fact), write('?\n'),write(Out,'?\n'),
            assert(asked_question(Fact)),
            why(Fact)
    ;   
        aggregate_all(count, y_user_computer(_,_), Count),
        A is N-Count-1,
        n_user_computer(A,Fact), N \=1, N \=2
         -> write(Out,'\nUser: Why do not you believe '),write('\nUser: Why do not you believe '),print_fact(Fact), write('?\n'),write(Out,'?\n'),
            write(Out,'\nSystem: Why do you beleive '),write('\nSystem: Why do you beleive '), print_fact(Fact), write('? '),write(Out, '?'),
            assert(asked_question(Fact)),
            whynot(Fact)
    ;   
        write('Not a valid choice, try again...'), nl,fail
    ).