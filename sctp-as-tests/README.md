# Status of the Association Setup Tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                                                                                                                                       | Implemented  | Finalized | OS specific | Result FreeBSD | Result Linux    |
|:-------------------------------------------------------------------------------------------------------------------------------------------|:------------:|:---------:|:-----------:|:--------------:|:---------------:|
|[sctp-as-v-1-1-1](sctp-as-v-1-1-1.pkt   "Performing an active association setup")                                                           | Yes          | Yes       | No          | Passed         | Passed          |
|[sctp-as-v-1-1-2](sctp-as-v-1-1-2.pkt   "Performing a passive association setup")                                                           | Yes          | Yes       | No          | Passed         | Passed          |
|[sctp-as-i-1-2-1](sctp-as-i-1-2-1.pkt   "Retransmissions of INIT chunks")                                                                   | Yes          | Yes       | No          | Passed         | Passed          |
|[sctp-as-i-1-2-2](sctp-as-i-1-2-2.pkt   "Retransmissions of COOKIE-ECHO chunks")                                                            | Yes          | Yes       | No          | Passed         | Passed          |
|[sctp-as-i-1-3-1](sctp-as-i-1-3-1.pkt   "Handling of excessive retransmissions of INIT chunks")                                             | Yes          | Yes       | No          | Passed         | Failed (Note 1) |
|[sctp-as-i-1-3-2](sctp-as-i-1-3-2.pkt   "Handling of excessive retransmissions of COOKIE-ECHO chunks")                                      | Yes          | Yes       | No          | Passed         | Failed (Note 2) |
|[sctp-as-i-1-4](sctp-as-i-1-4.pkt       "Ensuring no resource allocation on reception of INIT chunk")                                       | No (Note 3)  | Yes       | No          | Unknown        | Unknown         |
|[sctp-as-v-1-5-1](sctp-as-v-1-5-1.pkt   "Using random initate tags for INIT chunks")                                                        | No (Note 4)  | Yes       | No          | Unknown        | Unknown         |
|[sctp-as-v-1-5-2](sctp-as-v-1-5-2.pkt   "Using random initate tags for INIT-ACK chunks")                                                    | No (Note 4)  | Yes       | No          | Unknown        | Unknown         |
|[sctp-as-v-1-6-1](sctp-as-v-1-6-1.pkt   "Handling of INIT chunk with various parameters")                                                   | Yes          | Yes       | No          | Passed         | Passed          |
|[sctp-as-v-1-6-2](sctp-as-v-1-6-2.pkt   "Handling of INIT-ACK chunk with various parameters")                                               | Yes (Note 5) | Yes       | No          | Passed         | Passed          |
|[sctp-as-v-1-7-1](sctp-as-v-1-7-1.pkt   "Handling of INIT chunks with IS less then configured OS in the CLOSED state")                      | Yes          | Yes       | No          | Passed         | Passed          |
|[sctp-as-i-1-7-2](sctp-as-i-1-7-2.pkt   "Handling of INIT chunks with OS 0 in the CLOSED state")                                            | Yes (Note 6) | Yes       | No          | Passed         | Passed          |
|[sctp-as-v-1-7-3](sctp-as-v-1-7-3.pkt   "Handling of INIT-ACK chunks with IS less than OS of the INIT in the COOKIE-WAIT state")            | Yes          | Yes       | No          | Passed         | Passed          |
|[sctp-as-i-1-7-4](sctp-as-i-1-7-4.pkt   "Handling of INIT-ACK chunks with outgoing stream 0 in the COOKIE-WAIT state")                      | Yes (Note 7) | Yes       | No          | Passed         | Passed          |
|[sctp-as-v-1-7-5](sctp-as-v-1-7-5.pkt   "Ensuring the support of 2 incoming and outgoing streams")                                          | Yes          | Yes       | No          | Passed         | Passed          |
|[sctp-as-i-1-8-1](sctp-as-i-1-8-1.pkt   "Handling of INIT chunks with unknown parameter (highest order bits 11)")                           | Yes          | Yes       | Yes (Note 8)| Passed         | Passed          |
|[sctp-as-i-1-8-2](sctp-as-i-1-8-2.pkt   "Handling of INIT chunks with unknown parameter (highest order bits 00)")                           | Yes          | Yes       | Yes (Note 8)| Passed         | Passed          |
|[sctp-as-i-1-8-3](sctp-as-i-1-8-3.pkt   "Handling of INIT chunks with unknown parameter (highest order bits 11)")                           | Yes          | Yes       | Yes (Note 8)| Passed         | Passed          |
|[sctp-as-i-1-8-4](sctp-as-i-1-8-4.pkt   "Handling of INIT chunks with unknown parameter (highest order bits 10)")                           | Yes          | Yes       | Yes (Note 8)| Passed         | Passed          |
|[sctp-as-o-1-9-1](sctp-as-o-1-9-1.pkt   "Handling of INIT chunks with known addresses in the ESTABLSISHED state")                           | Yes          | Yes       | No          | Passed (Note 9)| Passed          |
|[sctp-as-o-1-9-2](sctp-as-o-1-9-2.pkt   "Handling of INIT chunks with new addresses in the ESTABLSISHED state")                             | Yes          | Yes       | No          | Passed (Note 9)| Passed          |
|[sctp-as-v-1-10-1](sctp-as-v-1-10-1.pkt "Handling of INIT chunks with no address parameters in the CLOSED state")                           | Yes          | Yes       | No          | Passed         | Passed          |
|[sctp-as-v-1-10-2](sctp-as-v-1-10-2.pkt "Handling of INIT-ACK chunks with no address parameters in the COOKIE-WAIT state")                  | Yes          | Yes       | No          | Passed         | Passed          |
|[sctp-as-v-1-11-1](sctp-as-v-1-11-1.pkt "Handling of INIT chunks with one or more address parameters in the CLOSED state")                  | Yes (Note 10)| No        | No          | Unknown        | Unknown         |
|[sctp-as-v-1-11-2](sctp-as-v-1-11-2.pkt "Handling of INIT-ACK chunks with one or more address parameters in the COOKIE-WAIT state")         | Yes (Note 10)| No        | No          | Unknown        | Unknown         |
|[sctp-as-v-1-12-1](sctp-as-v-1-12-1.pkt "Handling of INIT chunks with one hostname address parameter in the CLOSED state")                  | Yes          | Yes       | No          | Passed         | Passed          |
|[sctp-as-i-1-12-2](sctp-as-i-1-12-2.pkt "Handling of INIT-ACK chunks with one hostname address parameter in the COOKIE-WAIT state")         | Yes          | Yes       | No          | Passed         | Passed (Note 11)|
|[sctp-as-v-1-13-1](sctp-as-v-1-13-1.pkt "Handling of INIT chunks with a supported address types parameter (good case) in the CLOSED state") | Yes          | Yes       | No          | Passed         | Passed          |
|[sctp-as-i-1-13-2](sctp-as-i-1-13-2.pkt "Handling of INIT chunks with a supported address types parameter (bad case) in the CLOSED state")  | Yes (Note 12)| Yes       | No          | Passed         | Passed          |
|[sctp-as-i-1-14-1](sctp-as-i-1-14-1.pkt "Handling of INIT chunks with initiate tag 0 in the CLOSED state")                                  | Yes (Note 13)| Yes       | No          | Passed         | Passed          |
|[sctp-as-i-1-14-2](sctp-as-i-1-14-2.pkt "Handling of INIT-ACK chunks with initiate tag 0 in the COOKIE-WAIT state")                         | Yes (Note 14)| Yes       | No          | Passed         | Passed          |
|[sctp-as-i-1-15](sctp-as-i-1-15.pkt     "Using all peer addresses for INIT (re)transmissions")                                              | Yes (Note 15)| No        | No          | Unknown        | Unknown         |

# Notes

1. Linux doesn't apply the limit srto_max given in the SCTP_RTOINFO socket option to the retransmissions of INITs. An additional use of the SCTP_INITMSG socket option is required. Except for that, the test case is OK.
2. Linux doesn't apply the limit srto_max given in the SCTP_RTOINFO socket option to the retransmissions of COOKIE_ECHOs. An additional use of the SCTP_INITMSG socket option is required. Except for that, the test case is OK.
3. There is no way in the socket API to limit the number of SCTP associations. Therefore this test is not applicable. It shouldn't be mandatory...
4. packetdrill does not provide an infrastructure for testing the randomness of the choosen initiate tags. Therefore these tests can't be realized with packetdrill.
5. The test specification requires to send a cookie_preservative parameter in the INIT-ACK chunk. However, this parameter is not allowed in the INIT-ACK chunk as described in [RFC 4960](https://tools.ietf.org/html/rfc4960#section-3.3.3) and doesn't make sense.
6. It is assumed that an INIT chunk indicating the number of outgoing streams of 0 is responded with an ABORT chunk indicating an invalid mandatory parameter.
7. FreeBSD sends the ABORT with the T-bit set whereas Linux sends the ABORT with the T-bit cleared.
8. The sysctl's are platform dependent, of course. FreeBSD sends the cookie parameter as the last parameter in the INIT-ACK chunk, whereas Linux sends it as the first parameter.
9. Fix for [sctp-as-o-1-9-1](sctp-as-o-1-9-1.pkt) and [sctp-as-o-1-9-2](sctp-as-o-1-9-2.pkt): [r294057](https://svnweb.freebsd.org/changeset/base/294057).
10. Requires multi-homing support (the peer needs more than one address) of packetdrill. This is tracked in [issue 28](https://github.com/nplab/packetdrill/issues/28).
11. It looks like Linux is sending multiple packets with ABORT chunks if multiple problems with the INIT-ACK exist (missing mandatory parameter (cookie missing) and unresolvable address (hostname parameter)).
12. The test description doesn't make sense. The supported address types parameter should be ignored. See the implementation note in the last paragraph of [RFC 4960](https://tools.ietf.org/html/rfc4960#section-5.1.2). Therefore it is tested that if only IPv6 support is announced but IPv4 is used, the association setup is successful.
13. It is assumed that the SUT sends an ABORT using an error cause indicating an invalid mandatory parameter. FreeBSD sets the T-bit of the ABORT chunk, Linux doesn't. It should be noted that there is no TCB to be destroyed.
14. It is assumed that the SUT sends an ABORT using an error cause indicating an invalid mandatory parameter. FreeBSD sets the T-bit of the ABORT chunk, Linux doesn't. Furthermore it should be noted that FreeBSD indicates ETIMEDOUT at the socket layer, whereas Linux provides ECONNREFUSED.
15. Requires multi-homing support (the peer needs more than one address) of packetdrill. This is tracked in [issue 28](https://github.com/nplab/packetdrill/issues/28). Furthermore sctp_connectx() needs to be supported by packetdrill. This is tracked in [issue 30](https://github.com/nplab/packetdrill/issues/30).
