# Status of the Fault Handling Tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                                                                                                                         | Implemented  | Finalized   | OS specific | Result FreeBSD | Result Linux    |
|:-----------------------------------------------------------------------------------------------------------------------------|:------------:|:-----------:|:-----------:|:--------------:|:---------------:|
|[sctp-fh-i-5-1-1](sctp-fh-i-5-1-1.pkt "Handling of excessive timer based retransmissions")                                    | Yes (Note 1) | Yes         | No          | Passed         | Passed          |
|[sctp-fh-i-5-1-2](sctp-fh-i-5-1-2.pkt "Resetting the number of retransmissions on reception of a SACK chunk")                 | Yes (Note 1) | Yes         | No          | Passed         | Passed          |
|[sctp-fh-v-5-2](sctp-fh-v-5-2.pkt     "Handling of HEARTBEAT chunks in the ESTABLISHED state")                                | Yes          | Yes         | No          | Passed         | Passed          |
|[sctp-fh-o-5-3-1](sctp-fh-o-5-3-1.pkt "Handling of OOTB packets containing a DATA chunk")                                     | Yes          | Yes         | No          | Passed         | Passed          |
|[sctp-fh-o-5-3-2](sctp-fh-o-5-3-2.pkt "Handling of OOTB packets containing an ABORT chunk")                                   | Yes (Note 2) | Yes         | No          | Passed         | Passed          |
|[sctp-fh-o-5-3-3](sctp-fh-o-5-3-3.pkt "Handling of OOTB packets containing an SHUTDOWN-ACK chunk")                            | Yes          | Yes         | No          | Passed         | Passed          |
|[sctp-fh-o-5-3-4](sctp-fh-o-5-3-4.pkt "Handling of OOTB packets containing an SHUTDOWN-COMPLETE chunk")                       | Yes (Note 3) | Yes         | No          | Passed         | Passed          |
|[sctp-fh-o-5-3-5](sctp-fh-o-5-3-5.pkt "Handling of packets with a non-unicast source address containing a COOKIE-ECHO chunk") | Yes          | No (Note 4) | No          | Unknown        | Unknown         |

# Notes

1. After more than Max.Assoc.Retrans retransmissions, FreeBSD reports ECONNABORTED whereas Linux reports ETIMEDOUT.
2. It is assumed that the intention of the test case is to verify that ABORT chunks are not sent in response to OOTB ABORT chunks.
3. It is assumed that the intention of the test case is to verify that ABORT chunks are not sent in response to OOTB SHUTDOWN-COMPLETE chunks.
4. packetdrill doesn't support the specification of source addresses on a per packet base, which must also be non-uni-cast. This is tracked in [issue 26](https://github.com/nplab/packetdrill/issues/26).
