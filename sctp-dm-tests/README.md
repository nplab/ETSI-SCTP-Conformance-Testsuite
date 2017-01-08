# Status of the Duplicate Messages Tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                                                                                                                  | Implemented | Finalized  | OS specific | Result FreeBSD | Result Linux |
|:----------------------------------------------------------------------------------------------------------------------|:-----------:|:----------:|:-----------:|:--------------:|:------------:|
|[sctp-dm-o-4-1](sctp-dm-o-4-1.pkt     "Handling of INIT chunks in the COOKIE-WAIT state")                              | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-2-1](sctp-dm-o-4-2-1.pkt "Handling of INIT chunks in the ESTABLISHED state")                              | Yes         | Yes        | No          | Passed (Note 1)| Passed       |
|[sctp-dm-o-4-2-2](sctp-dm-o-4-2-2.pkt "Handling of INIT chunks in the SHUTDOWN-ACK-SENT state")                        | Yes         | Yes        | No          | Passed (Note 1)| Passed       |
|[sctp-dm-o-4-3](sctp-dm-o-4-3.pkt     "Handling of INIT-ACK chunks in the COOKIE-ECHOED state")                        | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-4](sctp-dm-o-4-4.pkt     "Handling of COOKIE-ACK chunks in the ESTABLISHED state")                        | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-5](sctp-dm-o-4-5.pkt     "Handling of SHUTDOWN chunks in the SHUTDOWN-SENT state")                        | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-6-1](sctp-dm-o-4-6-1.pkt "Handling of SHUTDOWN chunks in the COOKIE-WAIT state")                          | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-6-2](sctp-dm-o-4-6-2.pkt "Handling of SHUTDOWN chunks in the CLOSED state")                               | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-6-3](sctp-dm-o-4-6-3.pkt "Handling of SHUTDOWN chunks in the SHUTDOWN-SENT state (including T2 restart)") | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-7-1](sctp-dm-o-4-7-1.pkt "Handling of SHUTDOWN-ACK chunks in the COOKIE-WAIT state")                      | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-7-2](sctp-dm-o-4-7-2.pkt "Handling of SHUTDOWN-ACK chunks in the ESTABLISHED state")                      | Yes (Note 2)| Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-7-3](sctp-dm-o-4-7-3.pkt "Handling of SHUTDOWN-ACK chunks in the SHUTDOWN-ACK-SENT state")                | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-8](sctp-dm-o-4-8.pkt     "Handling of COOKIE-ECHO chunks with invalid MAC in the ESTABLISHED state")      | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-9](sctp-dm-o-4-9.pkt     "Handling of SHUTDOWN-COMPLETE chunks in the COOKIE-WAIT state")                 | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-10](sctp-dm-o-4-10.pkt   "Handling of DATA chunks in the SHUTDOWN-ACK-SENT state")                        | Yes (Note 3)| Yes        | No          | Passed         | Passed       |

# Notes
1. Fix for [sctp-dm-o-4-2-1](sctp-dm-o-4-2-1.pkt) and [sctp-dm-o-4-2-2](sctp-dm-o-4-2-2.pkt): [r294057](https://svnweb.freebsd.org/changeset/base/294057).
2. It is assumed that the SUT silently discards SHUTDOWN-ACK chunks received in the ESTABLISHED state.
3. It is assumed that the SUT silently discards DATA chunks received in the SHUTDOWN_ACK_SENT state.
