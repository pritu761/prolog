edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(e, g).
edge(f, g).

bfs(Start, Goal, Path) :-
    bfs_queue([[Start]], Goal, RevPath),
    reverse(RevPath, Path).


bfs_queue([[Goal | Rest] | _], Goal, [Goal | Rest]).

bfs_queue([[Current | Rest] | Others], Goal, Path) :-
    findall(
        [Next, Current | Rest],
        (
            edge(Current, Next),
            \+ member(Next, [Current | Rest])
        ),
        NewPaths
    ),
    append(Others, NewPaths, UpdatedQueue),
    bfs_queue(UpdatedQueue, Goal, Path).

