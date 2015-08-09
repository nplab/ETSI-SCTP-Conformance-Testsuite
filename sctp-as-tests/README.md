# Status of the Association Setup Tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                                    | Implemented | Finalized | OS specific | Result FreeBSD | Result Linux   |
|:----------------------------------------|:-----------:|:---------:|:-----------:|:--------------:|:--------------:|
|[sctp-as-v-1-1-1](sctp-as-v-1-1-1.pkt)   | Yes         | Yes       | No          | Passed         | Passed         |
|[sctp-as-v-1-1-2](sctp-as-v-1-1-2.pkt)   | Yes         | Yes       | No          | Passed         | Passed         |
|[sctp-as-i-1-2-1](sctp-as-i-1-2-1.pkt)   | Yes         | Yes       | No          | Passed         | Passed         |
|[sctp-as-i-1-2-2](sctp-as-i-1-2-2.pkt)   | Yes         | Yes       | No          | Passed         | Passed         |
|[sctp-as-i-1-3-1](sctp-as-i-1-3-1.pkt)   | Yes         | Yes       | No          | Passed         | Failed (Note 1)|
|[sctp-as-i-1-3-2](sctp-as-i-1-3-2.pkt)   | Yes         | Yes       | No          | Passed         | Failed (Note 2)|
|[sctp-as-i-1-4](sctp-as-i-1-4.pkt)       | No (Note 3) | Yes       | No          | Unknown        | Unknown        |
|[sctp-as-v-1-5-1](sctp-as-v-1-5-1.pkt)   | No (Note 4) | Yes       | No          | Unknown        | Unknown        |
|[sctp-as-v-1-5-2](sctp-as-v-1-5-2.pkt)   | No (Note 4) | Yes       | No          | Unknown        | Unknown        |
|[sctp-as-v-1-6-1](sctp-as-v-1-6-1.pkt)   | Yes         | Yes       | No          | Passed         | Passed         |
|[sctp-as-v-1-6-2](sctp-as-v-1-6-2.pkt)   | Yes (Note 5)| Yes       | No          | Passed         | Passed         |
|[sctp-as-v-1-7-1](sctp-as-v-1-7-1.pkt)   | Yes (Note 6)| No        | No          | Unknown        | Unknown        |
|[sctp-as-i-1-7-2](sctp-as-i-1-7-2.pkt)   | Yes (Note 7)| Yes       | No          | Passed         | Passed         |
|[sctp-as-v-1-7-3](sctp-as-v-1-7-3.pkt)   | Almost      | No        | No          | Unknown        | Unknown        |
|[sctp-as-i-1-7-4](sctp-as-i-1-7-4.pkt)   | Almost      | No        | No          | Unknown        | Unknown        |
|[sctp-as-v-1-7-5](sctp-as-v-1-7-5.pkt)   | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-as-v-1-8-1](sctp-as-v-1-8-1.pkt)   | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-as-i-1-8-2](sctp-as-i-1-8-2.pkt)   | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-as-i-1-8-3](sctp-as-i-1-8-3.pkt)   | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-as-i-1-8-4](sctp-as-i-1-8-4.pkt)   | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-as-o-1-9-1](sctp-as-o-1-9-1.pkt)   | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-as-o-1-9-2](sctp-as-o-1-9-2.pkt)   | Impossible  | No        | No          | Unknown        | Unknown        |
|[sctp-as-v-1-10-1](sctp-as-v-1-10-1.pkt) | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-as-v-1-10-2](sctp-as-v-1-10-2.pkt) | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-as-v-1-11-1](sctp-as-v-1-11-1.pkt) | Impossible  | No        | No          | Unknown        | Unknown        |
|[sctp-as-v-1-11-2](sctp-as-v-1-11-2.pkt) | Impossible  | No        | No          | Unknown        | Unknown        |
|[sctp-as-v-1-12-1](sctp-as-v-1-12-1.pkt) | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-as-i-1-12-2](sctp-as-i-1-12-2.pkt) | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-as-v-1-13-1](sctp-as-v-1-13-1.pkt) | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-as-i-1-13-2](sctp-as-i-1-13-2.pkt) | Almost      | No        | No          | Unknown        | Unknown        |
|[sctp-as-i-1-14-1](sctp-as-i-1-14-1.pkt) | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-as-i-1-14-2](sctp-as-i-1-14-2.pkt) | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-as-1-1-15](sctp-as-1-1-15.pkt)     | Impossible  | No        | No          | Unknown        | Unknown        |

# Notes

1. Linux doesn't apply the limit srto_max given in the SCTP_RTOINFO socket option to the retransmissions of INITs. An additional use of the SCTP_INITMSG socket option is required. Except for that, the test case is OK.
2. Linux doesn't apply the limit srto_max given in the SCTP_RTOINFO socket option to the retransmissions of COOKIE_ECHOs. An additional use of the SCTP_INITMSG socket option is required. Except for that, the test case is OK.
3. There is no way in the socket API to limit the number of SCTP associations. Therefore this test is not applicable. It shouldn't be mandatory...
4. packetdrill does not provide an infrastructure for testing the randomness of the choosen initiate tags. Therefore these tests can't be realized with packetdrill.
5. The test specification requires to send a cookie_preservative parameter in the INIT-ACK chunk. However, this parameter is not allowed in the INIT-ACK chunk as described in [RFC 4960](https://tools.ietf.org/html/rfc4960#section-3.3.3) and doesn't make sense.
6. packetdrill is missing support for using getsockopt() for SCTP_STATUS (tracked in [issue 25](https://github.com/nplab/packetdrill/issues/25) and [issue 29](https://github.com/nplab/packetdrill/issues/29)).
7. It is assumed that an INIT chunk indicating the number of outgoing streams of 0 is responded with an ABORT chunk indicating an invalid mandatory parameter.
