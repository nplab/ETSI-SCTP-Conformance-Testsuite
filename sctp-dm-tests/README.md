# Status of the Duplicate Messages Tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                                  | Implemented | Finalized  | OS specific | Result FreeBSD | Result Linux |
|:--------------------------------------|:-----------:|:----------:|:-----------:|:--------------:|:------------:|
|[sctp-dm-o-4-1](sctp-dm-o-4-1.pkt)     | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-2-1](sctp-dm-o-4-2-1.pkt) | Yes         | Yes        | No          | Failed (Note 1)| Passed       |
|[sctp-dm-o-4-2-2](sctp-dm-o-4-2-2.pkt) | Yes         | Yes        | No          | Failed (Note 1)| Passed       |
|[sctp-dm-o-4-3](sctp-dm-o-4-3.pkt)     | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-4](sctp-dm-o-4-4.pkt)     | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-5](sctp-dm-o-4-5.pkt)     | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-6-1](sctp-dm-o-4-6-1.pkt) | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-6-2](sctp-dm-o-4-6-2.pkt) | Yes (Note 2)| No         | No          | Passed         | Passed       |
|[sctp-dm-o-4-6-3](sctp-dm-o-4-6-3.pkt) | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-7-1](sctp-dm-o-4-7-1.pkt) | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-7-2](sctp-dm-o-4-7-2.pkt) | Yes (Note 3)| Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-7-3](sctp-dm-o-4-7-3.pkt) | Yes         | Yes        | No          | Passed         | Passed       |
|[sctp-dm-o-4-8](sctp-dm-o-4-8.pkt)     | Yes         | No (Note 4)| No          | Unknown        | Unknown      |
|[sctp-dm-o-4-9](sctp-dm-o-4-9.pkt)     | Yes         | No         | No          | Unknown        | Unknown      |
|[sctp-dm-o-4-10](sctp-dm-o-4-10.pkt)   | Yes         | No         | No          | Unknown        | Unknown      |

# Notes
1. FreeBSD sends an ABORT if the listening socket is closed when the INIT is received. This is tracked in [issue](https://github.com/sctplab/SCTP_NKE_Yosemite/issues/5).
2. packetdrill currenly doesn't support the injection of OOTB packets. A workaround is used, the issue is tracked in [issue 24](https://github.com/nplab/packetdrill/issues/24).
3. It is assumed that the SUT silently discards SHUTDOWN-ACK chunks received in the ESTABLISHED state.
4. Packetdrill currently doesn't allow to inject an illegal cookie. This is tracked in [issue 23](https://github.com/nplab/packetdrill/issues/23).
