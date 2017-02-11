# Status of the Bundling of Data Chunks with Control Chunks Tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                                                                                 | Implemented | Finalized | OS specific | Result FreeBSD | Result Linux   |
|:-------------------------------------------------------------------------------------|:-----------:|:---------:|:-----------:|:--------------:|:--------------:|
|[sctp-bdc-i-7-1](sctp-bdc-i-7-1.pkt "INIT chunk bundled with DATA chunk")             | Yes         | Yes       | No          | Passed (Note 1)| Passed         |
|[sctp-bdc-i-7-2](sctp-bdc-i-7-2.pkt "INIT-ACK chunk bundled with DATA chunk")         | Yes (Note 2)| Yes       | Yes         | Passed         | Passed         |
|[sctp-bdc-i-7-3](sctp-bdc-i-7-3.pkt "SHUTDOWN-COMPLETE chunk bundled with DATA chunk")| Yes (Note 3)| Yes       | Yes         | Passed         | Passed         |
|[sctp-bdc-v-7-4](sctp-bdc-v-7-4.pkt "COOKIE-ECHO chunk bundled with DATA chunk")      | Yes (Note 4)| Yes       | No          | Passed         | Passed         |
|[sctp-bdc-v-7-5](sctp-bdc-v-7-5.pkt "COOKIE-ACK chunk bundled with DATA chunk")       | Yes         | Yes       | No          | Passed         | Passed         |
|[sctp-bdc-v-7-6](sctp-bdc-v-7-6.pkt "SACK chunk bundled with SHUTDOWN chunk")         | Yes         | Yes       | No          | Passed         | Passed         |
|[sctp-bdc-v-7-7](sctp-bdc-v-7-7.pkt "SACK chunk bundled with DATA chunk")             | Yes         | Yes       | No          | Passed         | Passed         |
|[sctp-bdc-v-7-8](sctp-bdc-v-7-8.pkt "SHUTDOWN-ACK chunk bundled with DATA chunk")     | Yes (Note 5)| Yes       | No          | Passed         | Failed (Note 6)|

# Notes
1. Fix for [sctp-bdc-i-7-1](sctp-bdc-i-7-1.pkt): [r287535](https://svnweb.freebsd.org/changeset/base/287535).
2. FreeBSD just ignores the packet containing the INIT-ACK chunk bundled with a DATA chunk whereas Linux responds with an ABORT chunk indicating a protocol violation.
3. FreeBSD just ignores the packet containing the SHUTDOWN-COMPLETE chunk bundled with a DATA chunk whereas Linux responds with an ABORT chunk indicating a protocol violation.
4. It is assumed that the SUT bundles the COOKIE-ACK chunk with the SACK chunk.
5. It is assumed that the SUT ignores the DATA chunk, when it is bundled with the SHUTDOWN-ACK chunk, and sends a SHUTDOWN-COMPLETE chunk.
6. The message flow is correct. The problem is `read()` not returning 0 after the teardown handshake is complete.
