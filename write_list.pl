
%% LOUISE:  both write_why_list and write_why_not_list feel a bit redundant to me.
%% The user has already said they want an explanation.
why(1, "[Agree]. Why do you believe it?").
why(2, "[Disagree]. Why do you believe it?").
why(3, "[I do not know]. Why do you believe it?").

whynot(1, "[Agree]. Why don't you believe it?").
whynot(2, "[Disagree]. Why don't you believe it?").
whynot(3, "[I do not know]. Why don't you believe it?").

reason(1, "Because it's a user initial fact.").
reason(2, "Because it is a new fact deduced by a rule.").
reason(3, "Exit.").

agree(1, "No, I do not need explanation. Exit.").
agree(2, "Yes, I need an explanation.").

yes_no:-
    agree(N, Name),
    write(N), write('. '), write(Name), nl,
    fail.
yes_no.

write_user_fact:-
    write('\n----------User FACTS ----------\n'),nl,
    user_fact(_N, Fact, _,initial_fact, []),
    print_fact(Fact),nl,
    fail.
write_user_fact.

write_user_rule:-
    write('\n----------User RULES ----------\n'),nl,
    user_rule(N, _Antecedants, _C),
    %write(user_rule(N, Antecedants, C)),nl,
    print_rule(N),nl,
    fail.
write_user_rule.


print_fact(Fact):-
    fact_description(Fact).
print_rule(Rule):-
     rule_description(Rule).

true_then:-
    why(N, Name),
    write(N), write('. '), write(Name), nl,
    fail.
true_then.

false_then:-
    whynot(N, Name),
    write(N), write('. '), write(Name), nl,
    fail.
false_then.

write_why_list:-
    y_user_computer(N,F),
    %deduce_user(F,_),
    \+ asked_question(F),
    N1 is N+1,
    write(N1),write(". Why do you believe "), print_fact(F), write("?"),nl,
    fail.
write_why_list.



write_whynot_list:-
    n_user_computer(A,F),
    %\+deduce_user(F,_),
    \+ asked_question(F),
    aggregate_all(count, y_user_computer(_,_), Count),  %This is only for the number of select question, know how many why questions and then count why not question
    B is A+Count+1,
    write(B),write(". Why do not you believe "), print_fact(F), write("?"),nl,
    fail.
write_whynot_list.




write_w_list:-
    y_computer_user(_N,F),
    \+ deduce_backwards(F,_),
    \+ asked_question(F),
    aggregate_all(count, computer_ask_user(_,_), Num),
    N is Num+1,
    assert(computer_ask_user(N, F)),
    %write("Why do you believe "), print_fact(F), write("?"),nl,
    fail.
write_w_list.



write_x_list:-
    n_computer_user(_,F),
    deduce_backwards(F,_),
    \+ asked_question(F),
    aggregate_all(count, computer_ask_user(_,_), Num),
    N is Num +1,
    assert(computer_ask_user(N, F)),
    %write("Why don't you believe "), print_fact(F), write("?"),nl,
    fail.
write_x_list.



random_pick(Res, R):- 
        length(Res, Length),  
        Upper is Length + 1,
        random(1, Upper, Rand),
        nth_item(Res, Rand, R).

nth_item([H|_], 1, H).
nth_item([_|T], N, X):-
        nth_item(T, N1, X),
        N is N1 + 1.


write_reason:-
    reason(N, Name),
    write(N), write('. '), write(Name), nl,
    fail.
write_reason.


write_initial_list:-
    initial_question(N,_F,Pretty),
    write(N), write('. '), write(Pretty), nl,
    fail.
write_initial_list.
