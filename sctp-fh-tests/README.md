# Status of the Fault Handling Tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                                  | Implemented    | Finalized | OS specifc | Result FreeBSD | Result Linux    |
|:--------------------------------------|:--------------:|:---------:|:----------:|:--------------:|:---------------:|
|[sctp-fh-i-5-1-1](sctp-fh-i-5-1-1.pkt) | Yes            | No        | No         | Passed         | Unknown (Note 1)|
|[sctp-fh-i-5-1-2](sctp-fh-i-5-1-2.pkt) | Yes            | No        | No         | Passed         | Unknown (Note 1)|
|[sctp-fh-v-5-2](sctp-fh-v-5-2.pkt)     | Yes            | Yes       | No         | Passed         | Passed          |
|[sctp-fh-o-5-3-1](sctp-fh-o-5-3-1.pkt) | Yes (Note 2)   | No        | No         | Passed         | Passed          |
|[sctp-fh-o-5-3-2](sctp-fh-o-5-3-2.pkt) | Yes (Note 2, 3)| No        | No         | Passed         | Passed          |
|[sctp-fh-o-5-3-3](sctp-fh-o-5-3-3.pkt) | Yes (Note 2)   | No        | No         | Passed         | Passed          |
|[sctp-fh-o-5-3-4](sctp-fh-o-5-3-4.pkt) | Yes (Note 2, 4)| No        | No         | Passed         | Passed          |
|[sctp-fh-o-5-3-5](sctp-fh-o-5-3-5.pkt) | No (Note 5)    | No        | No         | Unknown        | Unknown         |

# Notes

1. Linux sends HEARTBEATs. Use SCTP_PEER_ADDR_PARAMS socket option to disable them once it is implemented ([issue](https://github.com/nplab/packetdrill/issues/27)).
2. packetdrill currenly doesn't support the injection of OOTB packets. A workaround is used, the issue is tracked in [issue](https://github.com/nplab/packetdrill/issues/24).
3. It is assumed that the intention of the test case is to verify that ABORT chunks are not sent in repsonse to OOTB ABORT chunks.
4. It is assumed that the intention of the test case is to verify that ABORT chunks are not sent in repsonse to OOTB SHUTDOWN-COMPLETE chunks.
5. packetdrill doesn't support the specification of source addresses on a per packet base, which must also be non-uni-cast. This is tracked in [issue](https://github.com/nplab/packetdrill/issues/26).
