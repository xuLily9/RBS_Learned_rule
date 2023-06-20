:- use_module(library(dcg/basics)).

lexer([Token | Tail]) -->
    lexem(Token),   
    lexer(Tail).
lexer([]) -->
    [].
lexem(K) -->
    condition(K).

lexem(result(K)) -->
    result(K).

condition(A)-->
    [if],term_to_list(A).
condition(C)-->
    [and],term_to_list(C).
result(B) -->
    [then],[B].

term_to_list(smaller(A,B))-->
    smaller(A,B).

term_to_list(bigger(A,B)) -->
     bigger(A,B).

term_to_list(equal(A,B)) -->
     equal(A,B).

term_to_list(smaller_than(A,B)) -->
     smaller_than(A,B).

term_to_list(bigger_than(A,B)) -->
     bigger_than(A,B).

term_to_list(A) -->
     [A].

smaller(A,B) -->
        [A],
        [<],
        [B].

bigger(A,B) -->
        [A],
        [>],
        [B].

equal(A,B) -->
        [A],
        [=],
        [B].

smaller_than(A,B) -->
        [A],
        [<=],
        [B].

bigger_than(A,B) -->
        [A],
        [>=],
        [B].

data([A|As]) --> 
    spaces(_), 
    chars([X|Xs]), 
    {atom_codes(A, [X|Xs])}, 
    spaces(_), 
    data(As).
data([]) --> [].

chars([X|Xs]) --> char(X), !, chars(Xs).
chars([]) --> [].

spaces([X|Xs]) --> space(X), !, spaces(Xs).
spaces([]) --> [].

space(X) --> [X], {code_type(X, space)}. 
char(X) --> [X], {\+ code_type(X, space)}.

no_braces([])     --> [].
no_braces([C|Cs]) --> [C], { dif(C, '(') }, no_braces(Cs).
no_braces(Cs)     --> ['('], no_braces(_), [')'], no_braces(Cs).


parse(Tokens, Result) :-
  phrase(lexer(Result), Tokens).
  %writeln(Result).

my_representation(Codes, Result) :-
    processData(Codes, [Result|_Empty]).

stream_representations(Input, Lines) :-
    read_line_to_codes(Input, Line),
    (   Line == end_of_file
    ->  Lines = []
    ;   my_representation(Line, FinalLine),
        Lines = [FinalLine | FurtherLines],
        stream_representations(Input, FurtherLines) ).

main :-
    open('raw_rule_84.txt', read, Input),
    stream_representations(Input, Lines),
    exampleOpen, !,
    list_L(Lines),
    exampleClose,
    close(Input).


exampleOpen:-
    open('rule0.txt',write, Out),
    nb_setval(fileOutput,Out).

exampleClose:-
    nb_getval(fileOutput,Out),
    close(Out).

processData([], []).
processData(Codes,[AtomList|Out]) :-
    % convert the list of codes to a list of code lists of words
    phrase(data(AtomList), Codes, Rest),
    processData(Rest, Out).

my_concat([],[]).
my_concat([Hin|Tin], [Hout|Tout]):-
    concat_atom(Hin, '', Hout),
    my_concat(Tin, Tout).


list_L([H|T]):-
    parse(H,L),
    nb_getval(fileOutput,Out),
    write(Out,L),write(Out, '\n'),
    list_L(T).
list_L([]).



