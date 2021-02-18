-------------------------------- MODULE Time --------------------------------
EXTENDS Naturals
VARIABLES min, hr   \* Declare hour and minute as our state variables

(* Some type definitions *)
Hours   == 1..12
Minutes == 0..59

time == <<hr,min>>  \* time is a pair of hour and minute
                    \* we can use this definition in several ways

TimeType ==
    /\ hr \in Hours
    /\ min \in Minutes

minuteTick == min'= (min+1)%60

HourTick == hr' = (hr%12) + 1

(*
The CASE structure is just a multi-way if.
Rather like those found in C and java

Each 'case' starts with a predicate followed by an arrow ->
   The formula between the arrow and box [] is evaluated and is the value of
   the case expression
*)
Tick == CASE
        min=59 -> minuteTick/\HourTick []
        OTHER -> minuteTick /\ UNCHANGED hr

Initial == \* Pick some non-deterministic starting point
    /\ hr  \in Hours
    /\ min \in Minutes
-----
Clock == Initial /\ [][Tick]_time /\ WF_time(Tick)
=============================================================================
\* Modification History
\* Last modified Thu Feb 18 09:14:47 GMT 2021 by alunm
\* Created Mon Feb 15 12:12:41 GMT 2021 by alunm
