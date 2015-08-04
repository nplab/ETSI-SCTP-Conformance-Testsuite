# Status of the Bundling of Data Chunks with Control Chunks tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                                | Implemented | Finalized | OS specifc | Result FreeBSD | Result Linux   |
|:------------------------------------|:-----------:|:---------:|:----------:|:--------------:|:--------------:|
|[sctp-bdc-i-7-1](sctp-bdc-i-7-1.pkt) | Yes         | Yes       | No         | Failed (Note 1)| Passed         |
|[sctp-bdc-i-7-2](sctp-bdc-i-7-2.pkt) | Yes         | No        | No         | Unknown        | Unknown        |
|[sctp-bdc-i-7-3](sctp-bdc-i-7-3.pkt) | Yes         | No        | No         | Unknown        | Unknown        |
|[sctp-bdc-v-7-4](sctp-bdc-v-7-4.pkt) | Yes (Note 2)| Yes       | No         | Passed         | Passed         |
|[sctp-bdc-v-7-5](sctp-bdc-v-7-5.pkt) | Yes         | Yes       | No         | Passed         | Passed         |
|[sctp-bdc-v-7-6](sctp-bdc-v-7-6.pkt) | Yes         | Yes       | No         | Passed         | Passed         |
|[sctp-bdc-v-7-7](sctp-bdc-v-7-7.pkt) | Yes         | Yes       | No         | Passed         | Passed         |
|[sctp-bdc-v-7-8](sctp-bdc-v-7-8.pkt) | Yes (Note 3)| Yes       | No         | Passed         | Failed (Note 4)|

# Notes
1. FreeBSD responds with an ABORT whereas [RFC4960]( https://tools.ietf.org/html/rfc4960#section-11.3) requires it to be silently discarded. This is tracked in [issue](https://github.com/sctplab/SCTP_NKE_Yosemite/issues/4).
2. It is assumed that the SUT bundled the COOKIE-ECHO chunk with the SACK chunk.
3. It is assused that the SUT ignores the DATA chunk, which is bundled with the SHUTDOWN-ACK chunk, and sends a SHUTDOWN-COMPLETE chunk.
4. The message flow is correct. The problem is read() not returning 0 after the teardown handshake is complete.
