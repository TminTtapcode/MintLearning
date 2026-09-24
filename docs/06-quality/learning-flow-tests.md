# Learning Flow Test Scenarios

Các scenario này quan trọng hơn test CRUD đơn lẻ.

## LF-01 Resource completion is not mastery

Given user opens/completes HTTP resource
When no practice/assessment evidence exists
Then HTTP must not become STRONG solely from resource completion.

## LF-02 Delayed retrieval success

Given HTTP has prior learning evidence and a due review
When user answers retrieval correctly
Then evidence type is RETRIEVAL
And mastery does not decrease
And next review interval becomes longer according to heuristic.

## LF-03 Retrieval failure

Given REST review is due
When user answers incorrectly
Then concept becomes/continues REVIEW_DUE or NEEDS_REINFORCEMENT
And review is scheduled sooner
And Today may include remediation.

## LF-04 Repeated gap

Given user fails SQL JOIN twice
When planner builds next suitable session
Then guided remediation can appear before a harder independent JOIN task.

## LF-05 Prerequisite is guidance

Given Spring Controller depends on HTTP/REST
When user opens Spring concept from Roadmap
Then preview is allowed
And UI explains recommended prerequisites.

## LF-06 Missed days

Given last session was several days ago
When user returns
Then system generates from current due/mastery state
And does not create one overdue task per missed day.
