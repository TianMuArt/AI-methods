speak(X):-write("Your number: "), tab(1), write(X).
test_list([H|T]):-write("head: "), write(H), nl, write(T).
recurrent_list([H|T]):-write(H),tab(1),recurrent_list(T).

ask_user:-
    write('What is your name? '),
    readln(X),
    write('Hello, '), write(X).


read_user_input(List):-
    write('Введіть строку: '),nl,
    readln(List),
    write('Ви ввели: '), write(List).

%sum_length([H|T],Sum):-Sum is length(H)+sum_length(T).

print_len([H|T],Sum):-
    string_length(H,Len),
    write(Len),
    Sum is Sum + Len,
    print_len(T,Sum).

list_length([],0).

list_length([_|T],Length):-
    list_length(T,TailLength),
    Length is TailLength + 1.

greet_user:- write("Вітаю! Необхідно ввести рядок символів, які розділено пробілом."),nl.

str_length(String,Length):-
    atom_chars(String,Chars),
    length(Chars,Length).


sum_string_length([],0).
sum_string_length([H|T],TotalLength):-
    str_length(H,Length),
    sum_string_length(T,Restlen),
    TotalLength is Length+Restlen.

avg_string_len(TotalLen,Length,AvgLen):-
    AvgLen is floor(TotalLen/Length).


print_words([],_).
print_words([H|T],AvgLen):-
    str_length(H,Len),
    (Len = AvgLen -> writeln(H);true),
    print_words(T,AvgLen).


test_rule:-
    greet_user,
    read_user_input(List),
    list_length(List,Length),
    write(List),nl,
    write("Кількість слів: "),tab(1),write(Length),nl,
    sum_string_length(List,TotalLen),
    write("Кількість символів у рядку: "),tab(1),write(TotalLen),nl,
    avg_string_len(TotalLen,Length,AvgLen),
    write("Середня довжина слів: "),tab(1),write(AvgLen),nl,
    write("Слова, довжина яких дорівнює середній: "),nl,
    print_words(List,AvgLen),
    write("Кінець роботи програми. До побачення!").

















