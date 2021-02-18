---- MODULE MC ----
EXTENDS Time, TLC

\* INVARIANT definition @modelCorrectnessInvariants:1
inv_161363969134410000 ==
time \in Hours \X Minutes
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_161363969134411000 ==
<>(hr=1)
----
=============================================================================
\* Modification History
\* Created Thu Feb 18 09:14:51 GMT 2021 by alunm
