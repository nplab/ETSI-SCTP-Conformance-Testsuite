# Status of the Bundling of Data Chunks with Control Chunks tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                                | Implemented | Finalized | OS specifc | Result FreeBSD | Result Linux   |
|:------------------------------------|:-----------:|:---------:|:----------:|:--------------:|:--------------:|
|[sctp-bdc-i-7-1](sctp-bdc-i-7-1.pkt) | Yes         | Yes       | No         | Failed (Note 1)| Passed         |
|[sctp-bdc-i-7-2](sctp-bdc-i-7-2.pkt) | Yes (Note 2)| Yes       | Yes        | Passed         | Passed         |
|[sctp-bdc-i-7-3](sctp-bdc-i-7-3.pkt) | Yes (Note 3)| Yes       | Yes        | Passed         | Passed         |
|[sctp-bdc-v-7-4](sctp-bdc-v-7-4.pkt) | Yes (Note 4)| Yes       | No         | Passed         | Passed         |
|[sctp-bdc-v-7-5](sctp-bdc-v-7-5.pkt) | Yes         | Yes       | No         | Passed         | Passed         |
|[sctp-bdc-v-7-6](sctp-bdc-v-7-6.pkt) | Yes         | Yes       | No         | Passed         | Passed         |
|[sctp-bdc-v-7-7](sctp-bdc-v-7-7.pkt) | Yes         | Yes       | No         | Passed         | Passed         |
|[sctp-bdc-v-7-8](sctp-bdc-v-7-8.pkt) | Yes (Note 5)| Yes       | No         | Passed         | Failed (Note 6)|

# Notes
1. FreeBSD responds with an ABORT whereas [RFC4960]( https://tools.ietf.org/html/rfc4960#section-11.3) requires it to be silently discarded. This is tracked in [issue](https://github.com/sctplab/SCTP_NKE_Yosemite/issues/4).
2. FreeBSD just ignores the packet containing the INIT-ACK chunk bundled with a DATA chunk whereas Linux responds with an ABORT chunk indicating a protocol violation.
3. FreeBSD just ignores the packet containing the SHUTDOWN-COMPLETE chunk bundled with a DATA chunk whereas Linux responds with an ABORT chunk indicating a protocol violation.
4. It is assumed that the SUT bundled the COOKIE-ECHO chunk with the SACK chunk.
5. It is assused that the SUT ignores the DATA chunk, which is bundled with the SHUTDOWN-ACK chunk, and sends a SHUTDOWN-COMPLETE chunk.
6. The message flow is correct. The problem is read() not returning 0 after the teardown handshake is complete.
