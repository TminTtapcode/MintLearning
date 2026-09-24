# Acceptance Test Catalog

## AT-01 Diagnostic personalization

Given learner answers Java basics correctly but fails HTTP anchor questions,
when diagnostic completes,
then roadmap should not require all Java basics as new learning and should prioritize HTTP prerequisites appropriately.

## AT-02 Completion is not mastery

Given learner opens and completes all content in a learning unit without independent evidence,
then concept must not automatically become STRONG.

## AT-03 Missed days recovery

Given learner returns after several missed planned days,
when Today is generated,
then system rebalances from current state and does not create one overdue task per missed calendar item.

## AT-04 IDOR protection

Given authenticated learner A,
when client manipulates a learner/user identifier toward learner B,
then server must still scope learner-owned data to authenticated identity or reject access.

## AT-05 Review side effect

Given assessment records repeated retrieval failure,
then mastery decreases appropriately and a review/remediation action is scheduled according to v1 rules.

## AT-06 Time budget

Given user selects 10-minute session,
then planner returns a short valid session rather than a 60-minute normal session marked overdue later.
