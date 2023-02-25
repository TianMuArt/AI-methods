read_user_input(List):-
    write('������ ������: '),nl,
    readln(List).

list_length([],0).
list_length([_|T],Length):-
    list_length(T,TailLength),
    Length is TailLength + 1.

greet_user:- write("³���! ��������� ������ ����� �������, �� �������� �������."),nl,write("� ��������� ��������� ���� �������� �� �����, ������� ���� ������� ������� ������ ��� � �����."),nl.

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


task_rule:-
    greet_user,
    read_user_input(List),
    list_length(List,Length),
    write(List),nl,
    write("ʳ������ ���: "),tab(1),write(Length),nl,
    sum_string_length(List,TotalLen),
    write("ʳ������ ������� � �����: "),tab(1),write(TotalLen),nl,
    avg_string_len(TotalLen,Length,AvgLen),
    write("������� ������� ���: "),tab(1),write(AvgLen),nl,
    write("�����, ������� ���� ������� �������: "),nl,
    print_words(List,AvgLen),
    write("ʳ���� ������ ��������.").

