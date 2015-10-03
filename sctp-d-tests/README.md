# Status of the Data Tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                                                                                                        | Implemented | Finalized  | OS specific | Result FreeBSD | Result Linux |
|:------------------------------------------------------------------------------------------------------------|:-----------:|:----------:|:-----------:|:--------------:|:------------:|
|[sctp-d-v-8-1](sctp-d-v-8-1.pkt   "Sending of a user message not requireing fragmentation")                  | Yes (Note 1)| Yes        | No          | Passed         | Passed       |
|[sctp-d-v-8-2](sctp-d-v-8-2.pkt   "Sending of a user message requireing fragmentation")                      | Yes (Note 1)| Yes        | No          | Passed         | Passed       |
|[sctp-d-v-8-3](sctp-d-v-8-3.pkt   "Handling of fragmented user message (first, middle, end)")                | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-d-v-8-4](sctp-d-v-8-4.pkt   "Handling of SACK acknowledging an outstanding TSN")                       | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-d-i-8-5](sctp-d-i-8-5.pkt   "Handling of T3 Timeouts")                                                 | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-d-o-8-6](sctp-d-o-8-6.pkt   "Handling of duplicate DATA chunks")                                       | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-d-o-8-7](sctp-d-o-8-7.pkt   "Performing zero window probing with un-fragmented user data")             | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-d-o-8-8](sctp-d-o-8-8.pkt   "Performing zero window probing with fragmented user data")                | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-d-v-8-9](sctp-d-v-8-9.pkt   "Send retransmissions before transmissions")                               | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-d-v-8-10](sctp-d-v-8-10.pkt "Handling of packets containing a SACK chunk from alternate peer address") | Yes         | No (Note 2)| No          | Unknown        | Unknown      |
|[sctp-d-i-8-11](sctp-d-i-8-11.pkt "Handling of empty DATA chunks")                                           | Yes         | Yes        | No          | Passed (Note 3)| Passed       |
|[sctp-d-o-8-12](sctp-d-o-8-12.pkt "Handling of outdated SACK chunks")                                        | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-d-v-8-13](sctp-d-v-8-13.pkt "Handling of user messages of maximum size")                               | No (Note 4) | Yes        | No          | Unknown        | Unknown      |
|[sctp-d-v-8-14](sctp-d-v-8-14.pkt "Sending of user messages of maximum size")                                | No (Note 4) | Yes        | No          | Unknown        | Unknown      |
|[sctp-d-v-8-15](sctp-d-v-8-15.pkt "Handling of user messages larger than the maximum size")                  | No (Note 4) | Yes        | No          | Unknown        | Unknown      |

## Notes
1. It is assumed that the MTU is 1500 bytes and that IPv4 is used as the network protocol.
2. Requires multi-homing support (the peer needs more than one address) of packetdrill. This is tracked in [issue 28](https://github.com/nplab/packetdrill/issues/28).
3. Fix for [sctp-d-i-8-11](sctp-d-i-8-11.pkt): [r286206](https://svnweb.freebsd.org/changeset/base/286206).
4. Socket layer based implementations don't limit the length of user messages to be received. Therefore the optional test doesn't apply.
