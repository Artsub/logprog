% Реализация стандартных предикатов обработки списков

% Длина списка
% (список, длина)
my_length([], 0).
my_length([_|L], N):-my_length(L, M), N is M + 1.

% Принадлежность элемента списку
% (элемент, список)
my_member(X, [X|_]).
my_member(X, [_|T]):-my_member(X, T).

% Конкатeнация списков
% (список1, список2, список1+2)
my_append([], L, L).
my_append([X|L1], L2, [X|L3]):-my_append(L1, L2, L3).

% Удаление элемента из списка
% (элемент, список, список без элемента)
my_remove(X, [X|T], T).
my_remove(X, [Y|T], [Y|Z]):-my_remove(X, T, Z).

% Перестановки элементов в списке
% (список, перестановка)
my_permute([], []).
my_permute(L, [X|T]):-my_remove(X, L, Y), my_permute(Y, T).

% Подсписки списка
% (подсписок, список)
my_sublist(S, L):-my_append(_, L1, L), my_append(S, _, L1).
