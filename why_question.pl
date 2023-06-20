why(F):- 
    node(_N, F, _, initial_fact, _NL)
    ->  write('\nComputer: Because '), 
        print_fact(F),
        write(' is an initial fact.'),
    conversations(false,_).
  
why(F):- 
    %node(_N, F, _, R, NL), !,                           
    user_rule(R, A, F),
    check_rule(NL,F),
    write('\nComputer: Because '),
    print_fact(F),
    write(' is deduced using RULE '),
    system_rule(R),
    assert(rule_used(R)),
    assert(asked_question(F)),!,
    assert(yr_user_computer(R, A, F)),!,
    write('---FROM SYSTEM FACTS---\n'),
    %write(NL),
    pretty_print_node_list(NL,Pretty),
    write(Pretty),
    Used=true,
    conversations(Used,R),
    nl.

%% LOUISE:  You also want to store these facts in a list of facts that the user now knows the computer believes (or does not believe for negative literals),So you should be extending Y_user_computer and N_user_computer
 

pretty_print_node_list([],"").
pretty_print_node_list([Head|Tail],Out):-
    pretty_head(Head),
    pretty_print_node_list(Tail,Out).


pretty_head(node(_, Fact,_, _Rule, _)):-
   ( \+node(_,Fact,_, unprovable,_)
     ->  (\+ y_user_computer(_N,Fact)
        ->  aggregate_all(count, y_user_computer(_,_), Count),
             N is Count +1,
            assert(y_user_computer(N,Fact)),!,
            print_fact(Fact),nl
        ;
            print_fact(Fact),nl
        )
     ; not_fact(Fact)
     ).

not_fact(not(H)):-
    \+ n_user_computer(_,H)
    ->  
        aggregate_all(count, n_user_computer(_,_), A),
        N_2 is A +1,
        assert(n_user_computer(N_2,H)),!,
        print_fact(not(H)),nl.
 

