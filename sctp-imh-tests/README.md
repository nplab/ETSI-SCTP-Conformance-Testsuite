# Status of the Invalid Message Handling Tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                                                                                                                            | Implemented  | Finalized   | OS specific | Result FreeBSD | Result Linux |
|:--------------------------------------------------------------------------------------------------------------------------------|:------------:|:-----------:|:-----------:|:--------------:|:------------:|
|[sctp-imh-i-3-1](sctp-imh-i-3-1.pkt   "Handling of an INIT chunk being too small")                                               | Yes (Note 1) | Yes         | No          | Passed         | Passed       |
|[sctp-imh-i-3-2](sctp-imh-i-3-2.pkt   "Handling of an INIT-ACK chunk being too small")                                           | Yes          | Yes         | Yes (Note 2)| Passed         | Passed       |
|[sctp-imh-i-3-3](sctp-imh-i-3-3.pkt   "Handling of a packet with a wrong verification tag containg a COOKIE-ECHO chunk")         | Yes          | No (Note 3) | No          | Unknown        | Unknown      |
|[sctp-imh-i-3-4](sctp-imh-i-3-4.pkt   "Handling of a packet with a wrong checksum containg an INIT chunk")                       | Yes          | No (Note 4) | No          | Unknown        | Unknown      |
|[sctp-imh-i-3-5](sctp-imh-i-3-5.pkt   "Handling of a COOKIE-ECHO chunk with a wrong cookie")                                     | Yes          | Yes         | No          | Passed         | Passed       |
|[sctp-imh-i-3-6](sctp-imh-i-3-6.pkt   "Handling of a COOKIE-ECHO chunk with an expired cookie")                                  | Yes (Note 5) | Yes         | No          | Passed         | Passed       |
|[sctp-imh-i-3-7](sctp-imh-i-3-7.pkt   "Handling of a packet with a wrong verification tag containing an ABORT chunk")            | Yes          | No (Note 3) | No          | Unknown        | Unknown      |
|[sctp-imh-i-3-8](sctp-imh-i-3-8.pkt   "Handling of a packet too small for the contained INIT chunk")                             | Yes          | No (Note 6) | No          | Unknown        | Unknown      |
|[sctp-imh-i-3-9](sctp-imh-i-3-9.pkt   "Handling of a packet with a wrong verification tag containing a SHUTDOWN-ACK chunk")      | Yes          | No (Note 3) | No          | Unknown        | Unknown      |
|[sctp-imh-i-3-10](sctp-imh-i-3-10.pkt "Handling of a packet with a wrong verification tag containing a SHUTDOWN-COMPLETE chunk") | Yes          | No (Note 3) | No          | Unknown        | Unknown      |

# Notes
1. It is assumed that the SUT does not send an ABORT chunk in response to a malformed INIT chunk.
2. FreeBSD silently discards the malformed INIT-ACK chunk and retransmits the INIT chunk. Linux responds with an ABORT chunk indicating a protocol violation and signals ECONNREFUSED in the socket layer.
3. packetdrill lacks the ability to specifiy verification tags in the SCTP common header. This is tracked in [issue 32](https://github.com/nplab/packetdrill/issues/32).
4. packetdrill doesn't allow to specify a bad checksum for inbound packets. This is tracked in [issue 33](https://github.com/nplab/packetdrill/issues/33).
5. It is assumed that the SUT uses a cookie lifetime of 60 seconds.
6. packetdrill lacks the ability to specifiy arbitrary packets. This is tracked in [issue 35](https://github.com/nplab/packetdrill/issues/35).
