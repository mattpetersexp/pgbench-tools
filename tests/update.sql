\set nbranches :scale
\set ntellers 10 * :scale
\set naccounts 100000 * :scale
\set aid random(1, :naccounts)
\setrandom bid random(1,:nbranches)
\setrandom tid random(1,:ntellers)
\setrandom delta random(-5000,5000)
UPDATE pgbench_accounts SET abalance = abalance + :delta WHERE aid = :aid;
