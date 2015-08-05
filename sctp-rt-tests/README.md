# Status of the Retransmission Timer Tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                                | Implemented | Finalized | OS specifc | Result FreeBSD |   Result Linux  |
|:------------------------------------|:-----------:|:---------:|:----------:|:--------------:|:---------------:|
|[sctp-rt-i-11-1](sctp-rt-i-11-1.pkt) | Yes         | No        | No         | Passed         | Unknown (Note 1)|
|[sctp-rt-i-11-2](sctp-rt-i-11-2.pkt) | Yes (Note 2)| No        | No         | Passed         | Unknown (Note 1)|
|[sctp-rt-i-11-3](sctp-rt-i-11-3.pkt) | No (Note 3) | No        | No         | Unknown        | Unknown         |

# Notes
1. Linux sends HEARTBEATs. Use SCTP_PEER_ADDR_PARAMS socket option to disable them once it is implemented. This is tracked in [issue 27](https://github.com/nplab/packetdrill/issues/27).
2. The test descriptions of sctp-rt-i-11-1 and sctp-rt-i-11-2 are identical.
3. Requires multi-homing support (the peer needs more than one address) of packetdrill. This is tracked in [issue 28](https://github.com/nplab/packetdrill/issues/28).
