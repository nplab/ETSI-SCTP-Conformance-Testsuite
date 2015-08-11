# Status of the Invalid Message Handling Tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                                  | Implemented | Finalized | OS specific | Result FreeBSD | Result Linux |
|:--------------------------------------|:-----------:|:---------:|:-----------:|:--------------:|:------------:|
|[sctp-imh-i-3-1](sctp-imh-i-3-1.pkt)   | Yes (Note 1)| Yes       | No          | Passed         | Passed       |
|[sctp-imh-i-3-2](sctp-imh-i-3-2.pkt)   | Yes         | Yes       | Yes (Note 2)| Passed         | Passed       |
|[sctp-imh-i-3-3](sctp-imh-i-3-3.pkt)   | Yes (Note 3)| No        | No          | Unknown        | Unknown      |
|[sctp-imh-i-3-4](sctp-imh-i-3-4.pkt)   | Yes (Note 4)| No        | No          | Unknown        | Unknown      |
|[sctp-imh-i-3-5](sctp-imh-i-3-5.pkt)   | Yes (Note 5)| No        | No          | Unknown        | Unknown      |
|[sctp-imh-i-3-6](sctp-imh-i-3-6.pkt)   | Yes (Note 6)| Yes       | No          | Passed         | Passed       |
|[sctp-imh-i-3-7](sctp-imh-i-3-7.pkt)   | Yes (Note 7)| No        | No          | Unknown        | Unknown      |
|[sctp-imh-i-3-8](sctp-imh-i-3-8.pkt)   | No          | No        | No          | Unknown        | Unknown      |
|[sctp-imh-i-3-9](sctp-imh-i-3-9.pkt)   | No          | No        | No          | Unknown        | Unknown      |
|[sctp-imh-i-3-10](sctp-imh-i-3-10.pkt) | No          | No        | No          | Unknown        | Unknown      |

# Notes
1. It is assumed that the SUT does not send an ABORT chunk in response to a malformed INIT chunk.
2. FreeBSD silently discards the malformed INIT-ACK chunk and retransmits the INIT chunk. Linux responds with an ABORT chunk indicating a protocol violation and signals ECONNREFUSED in the socket layer.
3. packetdrill seems to have a problem with checking that an accept() call fails. This is tracked in [issue 31](https://github.com/nplab/packetdrill/issues/31). Furthermore, packetdrill lacks the ability to specifiy verification tags in the SCTP common header. This is tracked in [issue 32](https://github.com/nplab/packetdrill/issues/32).
4. packetdrill doesn't allow to specify a bad checksum for inbound packets. This is tracked in [issue 33](https://github.com/nplab/packetdrill/issues/33).
5. packetdrill seems to have a problem with checking that an accept() call fails. This is tracked in [issue 31](https://github.com/nplab/packetdrill/issues/31). Furthermore, packetdrill lacks the ability to specify the cookie. This is tracked in in [issue 34](https://github.com/nplab/packetdrill/issues/34).
6. It is assumed that the SUT uses a cookie lifetime of 60 seconds.
7. packetdrill lacks the ability to specifiy verification tags in the SCTP common header. This is tracked in [issue 32](https://github.com/nplab/packetdrill/issues/32).
