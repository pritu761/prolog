/* ---------------- GRAPH REPRESENTATION ---------------- */

edge(a,b).
edge(a,c).
edge(b,d).
edge(b,e).
edge(c,f).
edge(e,g).


/* ---------------- BFS MAIN DRIVER ---------------- */

bfs(Start, Goal, Path) :-
    bfs_queue([[Start]], Goal, RevPath),
    my_reverse(RevPath, Path).


/* ---------------- BFS QUEUE PROCESS ---------------- */

% Goal found
bfs_queue([[Goal|Rest]|_], Goal, [Goal|Rest]).

% Expand current node
bfs_queue([[Current|Rest]|OtherPaths], Goal, Path) :-

    findall([Next,Current|Rest],
        (
            edge(Current, Next),
            \+ member(Next,[Current|Rest])
        ),
        NewPaths),

    append(OtherPaths, NewPaths, UpdatedQueue),

    bfs_queue(UpdatedQueue, Goal, Path).


/* ---------------- REVERSE LIST ---------------- */

my_reverse([], []).

my_reverse([H|T], R) :-
    my_reverse(T, R1),
    conc(R1, [H], R).


/* ---------------- CONCATENATION ---------------- */

conc([], L, L).

conc([H|T], L, [H|R]) :-
    conc(T, L, R).