user_fact(1,married,1, initial_fact, []).
user_fact(2,dependents,0, initial_fact, []).
user_fact(3,education,0, initial_fact, []).
user_fact(4,self_employed,1, initial_fact, []).
user_fact(5,applicantincome,3000, initial_fact, []).
user_fact(6,coapplicantincome,0, initial_fact, []).
user_fact(7,loanamount,66, initial_fact, []).
user_fact(8,loan_amount_term,360, initial_fact, []).
user_fact(9,credit_history,1, initial_fact, []).

node(1,married,1, initial_fact, []).
node(2,dependents,0, initial_fact, []).
node(3,education,0, initial_fact, []).
node(4,self_employed,1, initial_fact, []).
node(5,applicantincome,3000, initial_fact, []).
node(6,coapplicantincome,0, initial_fact, []).
node(7,loanamount,66, initial_fact, []).
node(8,loan_amount_term,360, initial_fact, []).
node(9,credit_history,1, initial_fact, []).

fact_description(married):-
    write('he married ').
fact_description(dependents):-
    write('he does not have dependents').
fact_description(education):-
    write('he has no education').
fact_description(self_employed):-
    write('he is self employed').
fact_description(credit_history):-
    write('he has credit history').
fact_description(applicantincome):-
    write('his applicant income is 3000').
fact_description(coapplicantincome):-
    write('his coapplicant income is 0').
fact_description(loanamount):-
    write('his loan amount is 66').
fact_description(loan_amount_term):-
    write('his loan amount term is 360').
fact_description(result(yes)):-
    write('result is yes').
fact_description(result(no)):-
    write('result is reject').

conclusion(result(yes)).

user_rule(1, [bigger(education,0),smaller_than(married,0)], result(no)).

user_rule(2, [bigger(loanamount,0.56),smaller_than(self_employed,0),smaller_than(credit_history,0)], result(no)).

user_rule(3, [bigger(loanamount,0.56),smaller_than(credit_history,0)], result(no)).

user_rule(4, [smaller_than(self_employed,0),smaller_than(married,0),smaller_than(dependents,0.67),bigger(loanamount,0.2),smaller_than(credit_history,0)], result(no)).

user_rule(5, [smaller_than(self_employed,0),bigger(loanamount,0.56),bigger(married,0),smaller_than(credit_history,0),smaller_than(dependents,0.33)], result(no)).

user_rule(6, [smaller_than(dependents,0.33),bigger(loanamount,0.56),bigger(married,0),smaller_than(credit_history,0)], result(no)).

user_rule(7, [smaller_than(dependents,0.33),bigger(education,0),bigger(loanamount,0.34),smaller_than(married,0)], result(no)).

user_rule(8, [smaller_than(coapplicantincome,0.03),smaller_than(dependents,0),smaller_than(self_employed,0),smaller_than(credit_history,0)], result(no)).

user_rule(9, [smaller_than(dependents,0.33),bigger(loanamount,0.34),smaller_than(credit_history,0)], result(no)).

user_rule(10, [smaller_than(dependents,0.33),smaller_than(education,0),bigger(married,0),smaller_than(credit_history,0)], result(no)).

user_rule(11, [smaller_than(self_employed,0),bigger(education,0),smaller_than(married,0),smaller_than(dependents,0.67),smaller_than(credit_history,0)], result(no)).

user_rule(12, [smaller_than(self_employed,0),smaller_than(dependents,0.67),smaller_than(credit_history,0)], result(no)).

user_rule(13, [smaller_than(education,0),smaller_than(credit_history,0)], result(no)).

user_rule(14, [bigger(loanamount,0.56),smaller_than(dependents,0),smaller_than(self_employed,0),bigger(education,0)], result(no)).

user_rule(15, [smaller_than(self_employed,0),bigger(education,0),smaller_than(dependents,0.67),bigger(loanamount,0.56),smaller_than(credit_history,0)], result(no)).

user_rule(16, [smaller_than(self_employed,0),bigger(married,0),smaller_than(dependents,0.67),smaller_than(credit_history,0)], result(no)).

user_rule(17, [smaller_than(dependents,0),smaller_than(self_employed,0),smaller_than(credit_history,0)], result(no)).

user_rule(18, [smaller_than(dependents,0.33),bigger(education,0),bigger(loanamount,0.34),smaller_than(credit_history,0)], result(no)).

user_rule(19, [smaller_than(dependents,0.33),bigger(loanamount,0.34),smaller_than(married,0),smaller_than(credit_history,0)], result(no)).

user_rule(20, [smaller_than(self_employed,0),smaller_than(married,0),smaller_than(credit_history,0)], result(no)).

user_rule(21, [smaller_than(self_employed,0),bigger(education,0),smaller_than(credit_history,0)], result(no)).

user_rule(22, [smaller_than(married,0),smaller_than(credit_history,0)], result(no)).

user_rule(23, [bigger(education,0),smaller_than(credit_history,0)], result(no)).

user_rule(24, [smaller_than(dependents,0),smaller_than(self_employed,0),bigger(education,0),bigger(married,0)], result(no)).

user_rule(25, [smaller_than(dependents,0),smaller_than(credit_history,0)], result(no)).

user_rule(26, [smaller_than(dependents,0.33),bigger(education,0),bigger(loanamount,0.34)], result(no)).

user_rule(27, [smaller_than(dependents,0),smaller_than(self_employed,0),bigger(education,0),smaller_than(married,0)], result(no)).

user_rule(28, [smaller_than(dependents,0),smaller_than(self_employed,0),bigger(education,0),smaller_than(credit_history,0)], result(no)).

user_rule(29, [bigger(loanamount,0.56),smaller_than(dependents,0),smaller_than(self_employed,0),smaller_than(credit_history,0)], result(no)).

user_rule(30, [bigger(loanamount,0.56),smaller_than(self_employed,0),bigger(education,0),smaller_than(credit_history,0)], result(no)).

user_rule(31, [bigger(loanamount,0.56),bigger(education,0),smaller_than(credit_history,0)], result(no)).

user_rule(32, [bigger(loanamount,0.56),smaller_than(married,0),smaller_than(credit_history,0)], result(no)).

user_rule(33, [smaller_than(dependents,0),bigger(education,0),bigger(married,0),smaller_than(credit_history,0)], result(no)).

user_rule(34, [smaller_than(dependents,0.33),bigger(loanamount,0.34),bigger(married,0),smaller_than(credit_history,0)], result(no)).

user_rule(35, [smaller_than(education,0),smaller_than(married,0),smaller_than(credit_history,0)], result(no)).

user_rule(36, [smaller_than(self_employed,0),smaller_than(married,0),smaller_than(dependents,0.67),smaller_than(credit_history,0)], result(no)).

user_rule(37, [smaller_than(self_employed,0),bigger(education,0),smaller_than(dependents,0.67),smaller_than(credit_history,0)], result(no)).

user_rule(38, [smaller_than(self_employed,0),smaller_than(dependents,0.67),bigger(loanamount,0.56),bigger(married,0),smaller_than(credit_history,0)], result(no)).

user_rule(39, [smaller_than(dependents,0),smaller_than(education,0),smaller_than(self_employed,0),smaller_than(credit_history,0)], result(no)).

user_rule(40, [bigger(loanamount,0.2),smaller_than(self_employed,0),smaller_than(married,0),smaller_than(credit_history,0)], result(no)).

user_rule(41, [bigger(loanamount,0.56),smaller_than(self_employed,0),smaller_than(dependents,0.67),smaller_than(credit_history,0)], result(no)).

user_rule(42, [bigger(loanamount,0.56),smaller_than(education,0),smaller_than(credit_history,0)], result(no)).

user_rule(43, [bigger(loanamount,0.56),bigger(education,0),smaller_than(married,0)], result(no)).

user_rule(44, [smaller_than(self_employed,0),bigger(education,0),smaller_than(married,0),smaller_than(credit_history,0)], result(no)).

user_rule(45, [smaller_than(self_employed,0),smaller_than(credit_history,0)], result(no)).


user_rule(46, [bigger(education,0),smaller_than(married,0),smaller_than(credit_history,0)], result(no)).

user_rule(47, [smaller_than(dependents,0.33),smaller_than(self_employed,0),bigger(married,0),smaller_than(credit_history,0)], result(no)).

user_rule(48, [smaller_than(dependents,0),smaller_than(self_employed,0),smaller_than(married,0),smaller_than(credit_history,0)], result(no)).

user_rule(49, [smaller_than(dependents,0),smaller_than(self_employed,0),bigger(loanamount,0.18),smaller_than(credit_history,0)], result(no)).

user_rule(50, [smaller_than(dependents,0.33),bigger(married,0),smaller_than(credit_history,0)], result(no)).

user_rule(51, [smaller_than(dependents,0.33),bigger(loanamount,0.34),bigger(education,0),bigger(married,0)], result(no)).

user_rule(52, [smaller_than(dependents,0.33),smaller_than(self_employed,0),bigger(loanamount,0.56),bigger(married,0)], result(no)).

user_rule(53, [smaller_than(education,0),bigger(self_employed,0)], result(yes)).

user_rule(54, [bigger(credit_history,0),smaller_than(education,0),bigger(married,0),smaller_than(loanamount,0.56)], result(yes)).

user_rule(55, [bigger(credit_history,0),bigger(self_employed,0),bigger(married,0),smaller_than(loanamount,0.56)], result(yes)).

user_rule(56, [bigger(credit_history,0),bigger(dependents,0),smaller_than(education,0)], result(yes)).

user_rule(57, [bigger(dependents,0.33),bigger(credit_history,0),smaller_than(education,0)], result(yes)).

user_rule(58, [bigger(credit_history,0),bigger(dependents,0),bigger(self_employed,0)], result(yes)).

user_rule(59, [bigger(coapplicantincome,0.05),bigger(credit_history,0),smaller_than(married,0),smaller_than(loanamount,0.13)], result(yes)).

user_rule(60, [bigger(dependents,0),bigger(applicantincome,0.04),smaller_than(education,0),smaller_than(married,0),bigger(credit_history,0)], result(yes)).

user_rule(61, [bigger(dependents,0),bigger(applicantincome,0.04),bigger(self_employed,0),smaller_than(married,0),bigger(credit_history,0)], result(yes)).

user_rule(62, [bigger(dependents,0.33),smaller_than(education,0),smaller_than(loanamount,0.56),bigger(married,0),bigger(credit_history,0)], result(yes)).

user_rule(63, [bigger(dependents,0),bigger(applicantincome,0.04),smaller_than(education,0),bigger(self_employed,0),smaller_than(married,0)], result(yes)).

user_rule(64, [bigger(credit_history,0),smaller_than(education,0)], result(yes)).

user_rule(65, [bigger(credit_history,0), bigger(self_employed,0)], result(yes)).

user_rule(66, [bigger(education,0), smaller_than(loanamount,0.56), bigger(married,0), bigger(credit_history,0), bigger(coapplicantincome,0.03)], result(yes)).

user_rule(67, [bigger(credit_history,0), bigger(dependents,0), bigger(married,0), smaller_than(loanamount,0.56)], result(yes)).

user_rule(68, [bigger(dependents,0), smaller_than(education,0), smaller_than(married,0), bigger(applicantincome,0.04)], result(yes)).

user_rule(69, [bigger(dependents,0.33), bigger(credit_history,0), bigger(married,0), smaller_than(loanamount,0.56)], result(yes)).

user_rule(70, [bigger(dependents,0), bigger(self_employed,0), smaller_than(married,0), bigger(applicantincome,0.04)], result(yes)).

user_rule(71, [bigger(dependents,0.33), smaller_than(education,0)], result(yes)).

user_rule(72, [bigger(self_employed,0), bigger(married,0)], result(yes)).

user_rule(73, [bigger(coapplicantincome,0.08), bigger(credit_history,0)], result(yes)).

user_rule(74, [bigger(credit_history,0), smaller_than(education,0), bigger(self_employed,0)], result(yes)).

user_rule(75, [bigger(credit_history,0), bigger(married,0), smaller_than(loanamount,0.56)], result(yes)).

user_rule(76, [smaller_than(education,0), bigger(self_employed,0), smaller_than(loanamount,0.56), bigger(married,0), bigger(credit_history,0)], result(yes)).

user_rule(77, [bigger(credit_history,0), bigger(married,0)], result(yes)).

user_rule(78, [bigger(credit_history,0), bigger(dependents,0), smaller_than(married,0), bigger(applicantincome,0.04)], result(yes)).

user_rule(79, [bigger(credit_history,0), bigger(dependents,0)], result(yes)).

rule(1, [bigger(education,0),smaller_than(married,0)], result(no)).

rule(2, [bigger(loanamount,0.56),smaller_than(self_employed,0),smaller_than(credit_history,0)], result(no)).

rule(3, [bigger(loanamount,0.56),smaller_than(credit_history,0)], result(no)).

rule(4, [smaller_than(self_employed,0),smaller_than(married,0),smaller_than(dependents,0.67),bigger(loanamount,0.2),smaller_than(credit_history,0)], result(no)).

rule(5, [smaller_than(self_employed,0),bigger(loanamount,0.56),bigger(married,0),smaller_than(credit_history,0),smaller_than(dependents,0.33)], result(no)).

rule(6, [smaller_than(dependents,0.33),bigger(loanamount,0.56),bigger(married,0),smaller_than(credit_history,0)], result(no)).

rule(7, [smaller_than(dependents,0.33),bigger(education,0),bigger(loanamount,0.34),smaller_than(married,0)], result(no)).

rule(8, [smaller_than(coapplicantincome,0.03),smaller_than(dependents,0),smaller_than(self_employed,0),smaller_than(credit_history,0)], result(no)).

rule(9, [smaller_than(dependents,0.33),bigger(loanamount,0.34),smaller_than(credit_history,0)], result(no)).

rule(10, [smaller_than(dependents,0.33),smaller_than(education,0),bigger(married,0),smaller_than(credit_history,0)], result(no)).

rule(11, [smaller_than(self_employed,0),bigger(education,0),smaller_than(married,0),smaller_than(dependents,0.67),smaller_than(credit_history,0)], result(no)).

rule(12, [smaller_than(self_employed,0),smaller_than(dependents,0.67),smaller_than(credit_history,0)], result(no)).


rule(13, [smaller_than(education,0),smaller_than(credit_history,0)], result(no)).

rule(14, [bigger(loanamount,0.56),smaller_than(dependents,0),smaller_than(self_employed,0),bigger(education,0)], result(no)).

rule(15, [smaller_than(self_employed,0),bigger(education,0),smaller_than(dependents,0.67),bigger(loanamount,0.56),smaller_than(credit_history,0)], result(no)).

rule(16, [smaller_than(self_employed,0),bigger(married,0),smaller_than(dependents,0.67),smaller_than(credit_history,0)], result(no)).

rule(17, [smaller_than(dependents,0),smaller_than(self_employed,0),smaller_than(credit_history,0)], result(no)).

rule(18, [smaller_than(dependents,0.33),bigger(education,0),bigger(loanamount,0.34),smaller_than(credit_history,0)], result(no)).

rule(19, [smaller_than(dependents,0.33),bigger(loanamount,0.34),smaller_than(married,0),smaller_than(credit_history,0)], result(no)).

rule(20, [smaller_than(self_employed,0),smaller_than(married,0),smaller_than(credit_history,0)], result(no)).

rule(21, [smaller_than(self_employed,0),bigger(education,0),smaller_than(credit_history,0)], result(no)).


rule(22, [smaller_than(married,0),smaller_than(credit_history,0)], result(no)).

rule(23, [bigger(education,0),smaller_than(credit_history,0)], result(no)).

rule(24, [smaller_than(dependents,0),smaller_than(self_employed,0),bigger(education,0),bigger(married,0)], result(no)).

rule(25, [smaller_than(dependents,0),smaller_than(credit_history,0)], result(no)).

rule(26, [smaller_than(dependents,0.33),bigger(education,0),bigger(loanamount,0.34)], result(no)).

rule(27, [smaller_than(dependents,0),smaller_than(self_employed,0),bigger(education,0),smaller_than(married,0)], result(no)).

rule(28, [smaller_than(dependents,0),smaller_than(self_employed,0),bigger(education,0),smaller_than(credit_history,0)], result(no)).

rule(29, [bigger(loanamount,0.56),smaller_than(dependents,0),smaller_than(self_employed,0),smaller_than(credit_history,0)], result(no)).

rule(30, [bigger(loanamount,0.56),smaller_than(self_employed,0),bigger(education,0),smaller_than(credit_history,0)], result(no)).

rule(31, [bigger(loanamount,0.56),bigger(education,0),smaller_than(credit_history,0)], result(no)).

rule(32, [bigger(loanamount,0.56),smaller_than(married,0),smaller_than(credit_history,0)], result(no)).

rule(33, [smaller_than(dependents,0),bigger(education,0),bigger(married,0),smaller_than(credit_history,0)], result(no)).

rule(34, [smaller_than(dependents,0.33),bigger(loanamount,0.34),bigger(married,0),smaller_than(credit_history,0)], result(no)).

rule(35, [smaller_than(education,0),smaller_than(married,0),smaller_than(credit_history,0)], result(no)).

rule(36, [smaller_than(self_employed,0),smaller_than(married,0),smaller_than(dependents,0.67),smaller_than(credit_history,0)], result(no)).

rule(37, [smaller_than(self_employed,0),bigger(education,0),smaller_than(dependents,0.67),smaller_than(credit_history,0)], result(no)).

rule(38, [smaller_than(self_employed,0),smaller_than(dependents,0.67),bigger(loanamount,0.56),bigger(married,0),smaller_than(credit_history,0)], result(no)).

rule(39, [smaller_than(dependents,0),smaller_than(education,0),smaller_than(self_employed,0),smaller_than(credit_history,0)], result(no)).

rule(40, [bigger(loanamount,0.2),smaller_than(self_employed,0),smaller_than(married,0),smaller_than(credit_history,0)], result(no)).

rule(41, [bigger(loanamount,0.56),smaller_than(self_employed,0),smaller_than(dependents,0.67),smaller_than(credit_history,0)], result(no)).

rule(42, [bigger(loanamount,0.56),smaller_than(education,0),smaller_than(credit_history,0)], result(no)).

rule(43, [bigger(loanamount,0.56),bigger(education,0),smaller_than(married,0)], result(no)).

rule(44, [smaller_than(self_employed,0),bigger(education,0),smaller_than(married,0),smaller_than(credit_history,0)], result(no)).

rule(45, [smaller_than(self_employed,0),smaller_than(credit_history,0)], result(no)).


rule(46, [bigger(education,0),smaller_than(married,0),smaller_than(credit_history,0)], result(no)).

rule(47, [smaller_than(dependents,0.33),smaller_than(self_employed,0),bigger(married,0),smaller_than(credit_history,0)], result(no)).

rule(48, [smaller_than(dependents,0),smaller_than(self_employed,0),smaller_than(married,0),smaller_than(credit_history,0)], result(no)).

rule(49, [smaller_than(dependents,0),smaller_than(self_employed,0),bigger(loanamount,0.18),smaller_than(credit_history,0)], result(no)).

rule(50, [smaller_than(dependents,0.33),bigger(married,0),smaller_than(credit_history,0)], result(no)).

rule(51, [smaller_than(dependents,0.33),bigger(loanamount,0.34),bigger(education,0),bigger(married,0)], result(no)).

rule(52, [smaller_than(dependents,0.33),smaller_than(self_employed,0),bigger(loanamount,0.56),bigger(married,0)], result(no)).

rule(53, [smaller_than(education,0),bigger(self_employed,0)], result(yes)).

rule(54, [bigger(credit_history,0),smaller_than(education,0),bigger(married,0),smaller_than(loanamount,0.56)], result(yes)).

rule(55, [bigger(credit_history,0),bigger(self_employed,0),bigger(married,0),smaller_than(loanamount,0.56)], result(yes)).

rule(56, [bigger(credit_history,0),bigger(dependents,0),smaller_than(education,0)], result(yes)).

rule(57, [bigger(dependents,0.33),bigger(credit_history,0),smaller_than(education,0)], result(yes)).

rule(58, [bigger(credit_history,0),bigger(dependents,0),bigger(self_employed,0)], result(yes)).

rule(59, [bigger(coapplicantincome,0.05),bigger(credit_history,0),smaller_than(married,0),smaller_than(loanamount,0.13)], result(yes)).

rule(60, [bigger(dependents,0),bigger(applicantincome,0.04),smaller_than(education,0),smaller_than(married,0),bigger(credit_history,0)], result(yes)).

rule(61, [bigger(dependents,0),bigger(applicantincome,0.04),bigger(self_employed,0),smaller_than(married,0),bigger(credit_history,0)], result(yes)).

rule(62, [bigger(dependents,0.33),smaller_than(education,0),smaller_than(loanamount,0.56),bigger(married,0),bigger(credit_history,0)], result(yes)).

rule(63, [bigger(dependents,0),bigger(applicantincome,0.04),smaller_than(education,0),bigger(self_employed,0),smaller_than(married,0)], result(yes)).

rule(64, [bigger(credit_history,0),smaller_than(education,0)], result(yes)).

rule(65, [bigger(credit_history,0), bigger(self_employed,0)], result(yes)).

rule(66, [bigger(education,0), smaller_than(loanamount,0.56), bigger(married,0), bigger(credit_history,0), bigger(coapplicantincome,0.03)], result(yes)).

rule(67, [bigger(credit_history,0), bigger(dependents,0), bigger(married,0), smaller_than(loanamount,0.56)], result(yes)).

rule(68, [bigger(dependents,0), smaller_than(education,0), smaller_than(married,0), bigger(applicantincome,0.04)], result(yes)).

rule(69, [bigger(dependents,0.33), bigger(credit_history,0), bigger(married,0), smaller_than(loanamount,0.56)], result(yes)).

rule(70, [bigger(dependents,0), bigger(self_employed,0), smaller_than(married,0), bigger(applicantincome,0.04)], result(yes)).

rule(71, [bigger(dependents,0.33), smaller_than(education,0)], result(yes)).

rule(72, [bigger(self_employed,0), bigger(married,0)], result(yes)).

rule(73, [bigger(coapplicantincome,0.08), bigger(credit_history,0)], result(yes)).



rule(74, [bigger(credit_history,0), smaller_than(education,0), bigger(self_employed,0)], result(yes)).

rule(75, [bigger(credit_history,0), bigger(married,0), smaller_than(loanamount,0.56)], result(yes)).

rule(76, [smaller_than(education,0), bigger(self_employed,0), smaller_than(loanamount,0.56), bigger(married,0), bigger(credit_history,0)], result(yes)).

rule(77, [bigger(credit_history,0), bigger(married,0)], result(yes)).

rule(78, [bigger(credit_history,0), bigger(dependents,0), smaller_than(married,0), bigger(applicantincome,0.04)], result(yes)).

rule(79, [bigger(credit_history,0), bigger(dependents,0)], result(yes)).







r_description(1):-
    write('1. if education > 0 and married <= 0 then no'),nl.
r_description(2):-
    write('2. if loanamount > 0.56 and self_employed <= 0 and credit_history <= 0 then no'),nl.
r_description(3):-
    write('3. if loanamount > 0.56 and credit_history <= 0 then no'),nl.
r_description(4):-
    write('4. if self_employed <= 0 and married <= 0 and dependents <= 0.67 and loanamount > 0.2 and credit_history <= 0 then no'),nl.
r_description(5):-
    write('5. if self_employed <= 0 and loanamount > 0.56 and married > 0 and credit_history <= 0 and dependents <= 0.33 then no'),nl.
r_description(6):-
    write('6. if dependents <= 0.33 and loanamount > 0.56 and married > 0 and credit_history <= 0 then no'),nl.
r_description(7):-
    write('7. if dependents <= 0.33 and education > 0 and loanamount > 0.34 and married <= 0 then no'),nl.
r_description(8):-
    write('8. if coapplicantincome <= 0.03 and dependents <= 0 and self_employed <= 0 and credit_history <= 0 then no'),nl.
r_description(9):-
    write('9. if dependents <= 0.33 and loanamount > 0.34 and credit_history <= 0 then no'),nl.
r_description(10):-
    write('10. if dependents <= 0.33 and education <= 0 and married > 0 and credit_history <= 0 then no'),nl.
r_description(11):-
    write('11.if self_employed <= 0 and education > 0 and married <= 0 and dependents <= 0.67 and credit_history <= 0 then no'),nl.
r_description(12):-
    write('12.if self_employed <= 0 and dependents <= 0.67 and credit_history <= 0 then no'),nl.
r_description(13):-
    write('13.if education <= 0 and credit_history <= 0 then no'),nl.
r_description(14):-
    write('14.if loanamount > 0.56 and dependents <= 0 and self_employed <= 0 and education > 0 then no'),nl.
r_description(15):-
    write('15.if self_employed <= 0 and education > 0 and dependents <= 0.67 and loanamount > 0.56 and credit_history <= 0 then no'),nl.
r_description(16):-
    write('16.if self_employed <= 0 and married > 0 and dependents <= 0.67 and credit_history <= 0 then no'),nl.
r_description(17):-
    write('17.if dependents <= 0 and self_employed <= 0 and credit_history <= 0 then no'),nl.
r_description(18):-
    write('18.if dependents <= 0.33 and education > 0 and loanamount > 0.34 and credit_history <= 0 then no'),nl.

r_description(19):-
    write('19. if dependents <= 0.33 and loanamount > 0.34 and married <= 0 and credit_history <= 0 then no'),nl.
r_description(20):-
    write('20. if self_employed <= 0 and married <= 0 and credit_history <= 0 then no'),nl.
r_description(21):-
    write('21. if self_employed <= 0 and education > 0 and credit_history <= 0 then no'),nl.

r_description(22):-
    write('22. if married <= 0 and credit_history <= 0 then no'),nl.
r_description(23):-
    write('23. if education > 0 and credit_history <= 0 then no'),nl.
r_description(24):-
    write('24. if dependents <= 0 and self_employed <= 0 and education > 0 and married > 0 then no'),nl.
r_description(25):-
    write('25. if dependents <= 0 and credit_history <= 0 then no'),nl.
r_description(26):-
    write('26. if dependents <= 0.33 and education > 0 and loanamount > 0.34 then no'),nl.
r_description(27):-
    write('27. if dependents <= 0 and self_employed <= 0 and education > 0 and married <= 0 then no'),nl.
r_description(28):-
    write('28. if dependents <= 0 and self_employed <= 0 and education > 0 and credit_history <= 0 then no'),nl.
r_description(29):-
    write('29. if loanamount > 0.56 and dependents <= 0 and self_employed <= 0 and credit_history <= 0 then no'),nl.
r_description(30):-
    write('30. if loanamount > 0.56 and self_employed <= 0 and education > 0 and credit_history <= 0 then no'),nl.
r_description(31):-
    write('31. if loanamount > 0.56 and education > 0 and credit_history <= 0 then no'),nl.
r_description(32):-
    write('32. if loanamount > 0.56 and married <= 0 and credit_history <= 0 then no'),nl.
r_description(33):-
    write('33. if dependents <= 0 and education > 0 and married > 0 and credit_history <= 0 then no'),nl.
r_description(34):-
    write('34. if dependents <= 0.33 and loanamount > 0.34 and married > 0 and credit_history <= 0 then no'),nl.
r_description(35):-
    write('35. if education <= 0 and married <= 0 and credit_history <= 0 then no'),nl.
r_description(36):-
    write('36. if self_employed <= 0 and married <= 0 and dependents <= 0.67 and credit_history <= 0 then no'),nl.
r_description(37):-
    write('37. if self_employed <= 0 and education > 0 and dependents <= 0.67 and credit_history <= 0 then no'),nl.

r_description(38):-
    write('38. if self_employed <= 0 and dependents <= 0.67 and loanamount > 0.56 and married > 0 and credit_history <= 0 then no'),nl.
r_description(39):-
    write('39. if dependents <= 0 and education <= 0 and self_employed <= 0 and credit_history <= 0 then no'),nl.
r_description(40):-
    write('40. if loanamount > 0.2 and self_employed <= 0 and married <= 0 and credit_history <= 0 then no
'),nl.
r_description(41):-
    write('41. if loanamount > 0.56 and self_employed <= 0 and dependents <= 0.67 and credit_history <= 0 then no
'),nl.
r_description(42):-
    write('42. if loanamount > 0.56 and education <= 0 and credit_history <= 0 then no'),nl.
r_description(43):-
    write('43. if loanamount > 0.56 and education > 0 and married <= 0 then no'),nl.
r_description(44):-
    write('44. if self_employed <= 0 and education > 0 and married <= 0 and credit_history <= 0 then no'),nl.
r_description(45):-
    write('45. if self_employed <= 0 and credit_history <= 0 then no'),nl.

r_description(46):-
    write('46. if education > 0 and married <= 0 and credit_history <= 0 then no'),nl.
r_description(47):-
    write('47. if dependents <= 0.33 and self_employed <= 0 and married > 0 and credit_history <= 0 then no'),nl.
r_description(48):-
    write('48. if dependents <= 0 and self_employed <= 0 and married <= 0 and credit_history <= 0 then no'),nl.
r_description(49):-
    write('49. if dependents <= 0 and self_employed <= 0 and loanamount > 0.18 and credit_history <= 0 then no'),nl.
r_description(50):-
    write('50. if dependents <= 0.33 and married > 0 and credit_history <= 0 then no'),nl.
r_description(51):-
    write('51. if dependents <= 0.33 and loanamount > 0.34 and education > 0 and married > 0 then no'),nl.
r_description(52):-
    write('52. if dependents <= 0.33 and self_employed <= 0 and loanamount > 0.56 and married > 0 then no'),nl.
r_description(53):-
    write('53. if education <= 0 and self_employed > 0 then yes'),nl.
r_description(54):-
    write('54. if credit_history > 0 and education <= 0 and married > 0 and loanamount <= 0.56 then yes'),nl.
r_description(55):-
    write('55. if credit_history > 0 and self_employed > 0 and married > 0 and loanamount <= 0.56 then yes'),nl.
r_description(56):-
    write('56. if credit_history > 0 and dependents > 0 and education <= 0 then yes'),nl.

r_description(57):-
    write('57. if dependents > 0.33 and credit_history > 0 and education <= 0 then yes'),nl.
r_description(58):-
    write('58. if credit_history > 0 and dependents > 0 and self_employed > 0 then yes'),nl.
r_description(59):-
    write('59. if coapplicantincome > 0.05 and credit_history > 0 and married <= 0 and loanamount <= 0.13 then yes'),nl.
r_description(60):-
    write('60. if dependents > 0 and applicantincome > 0.04 and education <= 0 and married <= 0 and credit_history > 0 then yes'),nl.
r_description(61):-
    write('61. if dependents > 0 and applicantincome > 0.04 and self_employed > 0 and married <= 0 and credit_history > 0 then yes'),nl.
r_description(62):-
    write('62. if dependents > 0.33 and education <= 0 and loanamount <= 0.56 and married > 0 and credit_history > 0 then yes'),nl.
r_description(63):-
    write('63. if dependents > 0 and applicantincome > 0.04 and education <= 0 and self_employed > 0 and married <= 0 then yes'),nl.
r_description(64):-
    write('64. if credit_history > 0 and education <= 0 then yes'),nl.
r_description(65):-
    write('65. if credit_history > 0 and self_employed > 0 then yes'),nl.
r_description(66):-
    write('66. if education > 0 and loanamount <= 0.56 and married > 0 and credit_history > 0 and coapplicantincome > 0.03 then yes'),nl.
r_description(67):-
    write('67. if credit_history > 0 and dependents > 0 and married > 0 and loanamount <= 0.56 then yes'),nl.
r_description(68):-
    write('68. if dependents > 0 and education <= 0 and married <= 0 and applicantincome > 0.04 then yes'),nl.
r_description(69):-
    write('69. if dependents > 0.33 and credit_history > 0 and married > 0 and loanamount <= 0.56 then yes'),nl.
r_description(70):-
    write('70. if dependents > 0 and self_employed > 0 and married <= 0 and applicantincome > 0.04 then yes'),nl.
r_description(71):-
    write('71. if dependents > 0.33 and education <= 0 then yes'),nl.
r_description(72):-
    write('72. if self_employed > 0 and married > 0 then yes'),nl.
r_description(73):-
    write('73. if coapplicantincome > 0.08 and credit_history > 0 then yes'),nl.
r_description(74):-
    write('74. if credit_history > 0 and education <= 0 and self_employed > 0 then yes'),nl.
r_description(75):-
    write('75. if credit_history > 0 and married > 0 and loanamount <= 0.56 then yes'),nl.
r_description(76):-
    write('76. if education <= 0 and self_employed > 0 and loanamount <= 0.56 and married > 0 and credit_history > 0 then yes'),nl.
r_description(77):-
    write('77. if credit_history > 0 and married > 0 then yes'),nl.
r_description(78):-
    write('78. if credit_history > 0 and dependents > 0 and married <= 0 and applicantincome > 0.04 then yes'),nl.
r_description(79):-
    write('79. if credit_history > 0 and dependents > 0 then yes'),nl.




rule_description(1):-
    write('1. if education > 0 and married <= 0 then no'),nl.
rule_description(2):-
    write('2. if loanamount > 0.56 and self_employed <= 0 and credit_history <= 0 then no'),nl.
rule_description(3):-
    write('3. if loanamount > 0.56 and credit_history <= 0 then no'),nl.
rule_description(4):-
    write('4. if self_employed <= 0 and married <= 0 and dependents <= 0.67 and loanamount > 0.2 and credit_history <= 0 then no'),nl.
rule_description(5):-
    write('5. if self_employed <= 0 and loanamount > 0.56 and married > 0 and credit_history <= 0 and dependents <= 0.33 then no'),nl.
rule_description(6):-
    write('6. if dependents <= 0.33 and loanamount > 0.56 and married > 0 and credit_history <= 0 then no'),nl.
rule_description(7):-
    write('7. if dependents <= 0.33 and education > 0 and loanamount > 0.34 and married <= 0 then no'),nl.
rule_description(8):-
    write('8. if coapplicantincome <= 0.03 and dependents <= 0 and self_employed <= 0 and credit_history <= 0 then no'),nl.
rule_description(9):-
    write('9. if dependents <= 0.33 and loanamount > 0.34 and credit_history <= 0 then no'),nl.
rule_description(10):-
    write('10. if dependents <= 0.33 and education <= 0 and married > 0 and credit_history <= 0 then no'),nl.
rule_description(11):-
    write('11.if self_employed <= 0 and education > 0 and married <= 0 and dependents <= 0.67 and credit_history <= 0 then no'),nl.
rule_description(12):-
    write('12.if self_employed <= 0 and dependents <= 0.67 and credit_history <= 0 then no'),nl.
rule_description(13):-
    write('13.if education <= 0 and credit_history <= 0 then no'),nl.
rule_description(14):-
    write('14.if loanamount > 0.56 and dependents <= 0 and self_employed <= 0 and education > 0 then no'),nl.
rule_description(15):-
    write('15.if self_employed <= 0 and education > 0 and dependents <= 0.67 and loanamount > 0.56 and credit_history <= 0 then no'),nl.
rule_description(16):-
    write('16.if self_employed <= 0 and married > 0 and dependents <= 0.67 and credit_history <= 0 then no'),nl.
rule_description(17):-
    write('17.if dependents <= 0 and self_employed <= 0 and credit_history <= 0 then no'),nl.
rule_description(18):-
    write('18.if dependents <= 0.33 and education > 0 and loanamount > 0.34 and credit_history <= 0 then no'),nl.

rule_description(19):-
    write('19. if dependents <= 0.33 and loanamount > 0.34 and married <= 0 and credit_history <= 0 then no'),nl.
rule_description(20):-
    write('20. if self_employed <= 0 and married <= 0 and credit_history <= 0 then no'),nl.
rule_description(21):-
    write('21. if self_employed <= 0 and education > 0 and credit_history <= 0 then no'),nl.

rule_description(22):-
    write('22. if married <= 0 and credit_history <= 0 then no'),nl.
rule_description(23):-
    write('23. if education > 0 and credit_history <= 0 then no'),nl.
rule_description(24):-
    write('24. if dependents <= 0 and self_employed <= 0 and education > 0 and married > 0 then no'),nl.
rule_description(25):-
    write('25. if dependents <= 0 and credit_history <= 0 then no'),nl.
rule_description(26):-
    write('26. if dependents <= 0.33 and education > 0 and loanamount > 0.34 then no'),nl.
rule_description(27):-
    write('27. if dependents <= 0 and self_employed <= 0 and education > 0 and married <= 0 then no'),nl.
rule_description(28):-
    write('28. if dependents <= 0 and self_employed <= 0 and education > 0 and credit_history <= 0 then no'),nl.
rule_description(29):-
    write('29. if loanamount > 0.56 and dependents <= 0 and self_employed <= 0 and credit_history <= 0 then no'),nl.
rule_description(30):-
    write('30. if loanamount > 0.56 and self_employed <= 0 and education > 0 and credit_history <= 0 then no'),nl.
rule_description(33):-
    write('33. if loanamount > 0.56 and education > 0 and credit_history <= 0 then no'),nl.
rule_description(34):-
    write('34. if loanamount > 0.56 and married <= 0 and credit_history <= 0 then no'),nl.
rule_description(33):-
    write('33. if dependents <= 0 and education > 0 and married > 0 and credit_history <= 0 then no'),nl.
rule_description(34):-
    write('34. if dependents <= 0.33 and loanamount > 0.34 and married > 0 and credit_history <= 0 then no'),nl.
rule_description(35):-
    write('35. if education <= 0 and married <= 0 and credit_history <= 0 then no'),nl.
rule_description(36):-
    write('36. if self_employed <= 0 and married <= 0 and dependents <= 0.67 and credit_history <= 0 then no'),nl.
rule_description(37):-
    write('37. if self_employed <= 0 and education > 0 and dependents <= 0.67 and credit_history <= 0 then no'),nl.

rule_description(38):-
    write('38. if self_employed <= 0 and dependents <= 0.67 and loanamount > 0.56 and married > 0 and credit_history <= 0 then no'),nl.
rule_description(39):-
    write('39. if dependents <= 0 and education <= 0 and self_employed <= 0 and credit_history <= 0 then no'),nl.
rule_description(40):-
    write('40. if loanamount > 0.2 and self_employed <= 0 and married <= 0 and credit_history <= 0 then no
'),nl.
rule_description(41):-
    write('41. if loanamount > 0.56 and self_employed <= 0 and dependents <= 0.67 and credit_history <= 0 then no
'),nl.
rule_description(42):-
    write('42. if loanamount > 0.56 and education <= 0 and credit_history <= 0 then no'),nl.
rule_description(43):-
    write('43. if loanamount > 0.56 and education > 0 and married <= 0 then no'),nl.
rule_description(44):-
    write('44. if self_employed <= 0 and education > 0 and married <= 0 and credit_history <= 0 then no'),nl.
rule_description(45):-
    write('45. if self_employed <= 0 and credit_history <= 0 then no'),nl.

rule_description(46):-
    write('46. if education > 0 and married <= 0 and credit_history <= 0 then no'),nl.
rule_description(47):-
    write('47. if dependents <= 0.33 and self_employed <= 0 and married > 0 and credit_history <= 0 then no'),nl.
rule_description(48):-
    write('48. if dependents <= 0 and self_employed <= 0 and married <= 0 and credit_history <= 0 then no'),nl.
rule_description(49):-
    write('49. if dependents <= 0 and self_employed <= 0 and loanamount > 0.18 and credit_history <= 0 then no'),nl.
rule_description(50):-
    write('50. if dependents <= 0.33 and married > 0 and credit_history <= 0 then no'),nl.
rule_description(51):-
    write('51. if dependents <= 0.33 and loanamount > 0.34 and education > 0 and married > 0 then no'),nl.
rule_description(52):-
    write('52. if dependents <= 0.33 and self_employed <= 0 and loanamount > 0.56 and married > 0 then no'),nl.
rule_description(53):-
    write('53. if education <= 0 and self_employed > 0 then yes'),nl.
rule_description(54):-
    write('54. if credit_history > 0 and education <= 0 and married > 0 and loanamount <= 0.56 then yes'),nl.
rule_description(55):-
    write('55. if credit_history > 0 and self_employed > 0 and married > 0 and loanamount <= 0.56 then yes'),nl.
rule_description(56):-
    write('56. if credit_history > 0 and dependents > 0 and education <= 0 then yes'),nl.

rule_description(57):-
    write('57. if dependents > 0.33 and credit_history > 0 and education <= 0 then yes'),nl.
rule_description(58):-
    write('58. if credit_history > 0 and dependents > 0 and self_employed > 0 then yes'),nl.
rule_description(59):-
    write('59. if coapplicantincome > 0.05 and credit_history > 0 and married <= 0 and loanamount <= 0.13 then yes'),nl.
rule_description(60):-
    write('60. if dependents > 0 and applicantincome > 0.04 and education <= 0 and married <= 0 and credit_history > 0 then yes'),nl.
rule_description(61):-
    write('61. if dependents > 0 and applicantincome > 0.04 and self_employed > 0 and married <= 0 and credit_history > 0 then yes'),nl.
rule_description(62):-
    write('62. if dependents > 0.33 and education <= 0 and loanamount <= 0.56 and married > 0 and credit_history > 0 then yes'),nl.
rule_description(63):-
    write('63. if dependents > 0 and applicantincome > 0.04 and education <= 0 and self_employed > 0 and married <= 0 then yes'),nl.
rule_description(64):-
    write('64. if credit_history > 0 and education <= 0 then yes'),nl.
rule_description(65):-
    write('65. if credit_history > 0 and self_employed > 0 then yes'),nl.
rule_description(66):-
    write('66. if education > 0 and loanamount <= 0.56 and married > 0 and credit_history > 0 and coapplicantincome > 0.03 then yes'),nl.
rule_description(67):-
    write('67. if credit_history > 0 and dependents > 0 and married > 0 and loanamount <= 0.56 then yes'),nl.
rule_description(68):-
    write('68. if dependents > 0 and education <= 0 and married <= 0 and applicantincome > 0.04 then yes'),nl.
rule_description(69):-
    write('69. if dependents > 0.33 and credit_history > 0 and married > 0 and loanamount <= 0.56 then yes'),nl.
rule_description(70):-
    write('70. if dependents > 0 and self_employed > 0 and married <= 0 and applicantincome > 0.04 then yes'),nl.
rule_description(71):-
    write('71. if dependents > 0.33 and education <= 0 then yes'),nl.
rule_description(72):-
    write('72. if self_employed > 0 and married > 0 then yes'),nl.
rule_description(73):-
    write('73. if coapplicantincome > 0.08 and credit_history > 0 then yes'),nl.

rule_description(74):-
    write('74. if credit_history > 0 and education <= 0 and self_employed > 0 then yes'),nl.
rule_description(75):-
    write('75. if credit_history > 0 and married > 0 and loanamount <= 0.56 then yes'),nl.
rule_description(76):-
    write('76. if education <= 0 and self_employed > 0 and loanamount <= 0.56 and married > 0 and credit_history > 0 then yes'),nl.
rule_description(77):-
    write('77. if credit_history > 0 and married > 0 then yes'),nl.
rule_description(78):-
    write('78. if credit_history > 0 and dependents > 0 and married <= 0 and applicantincome > 0.04 then yes'),nl.
rule_description(79):-
    write('79. if credit_history > 0 and dependents > 0 then yes'),nl.




system_rule(Rule):-
    r_description(Rule).
