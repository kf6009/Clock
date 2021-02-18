---- MODULE MC ----
EXTENDS Time, TLC

\* INVARIANT definition @modelCorrectnessInvariants:1
inv_161363971639617000 ==
time \in Hours \X Minutes
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_161363971639618000 ==
<>(hr=1)
----
\* PROPERTY definition @modelCorrectnessProperties:1
prop_161363971639619000 ==
[]<>(hr=1)
----
=============================================================================
\* Modification History
\* Created Thu Feb 18 09:15:16 GMT 2021 by alunm
