# Status of the Duplicate Messages Tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                                  | Implemented | Finalized | OS specific | Result FreeBSD | Result Linux |
|:--------------------------------------|:-----------:|:---------:|:-----------:|:--------------:|:------------:|
|[sctp-dm-o-4-1](sctp-dm-o-4-1.pkt)     | Yes         | Yes       | No          | Passed         | Passed       |
|[sctp-dm-o-4-2-1](sctp-dm-o-4-2-1.pkt) | Yes         | Yes       | No          | Failed (Note 1)| Passed       |
|[sctp-dm-o-4-2-2](sctp-dm-o-4-2-2.pkt) | Yes         | Yes       | No          | Failed (Note 1)| Passed       |
|[sctp-dm-o-4-3](sctp-dm-o-4-3.pkt)     | Yes         | Yes       | No          | Passed         | Passed       |
|[sctp-dm-o-4-4](sctp-dm-o-4-4.pkt)     | Yes         | Yes       | No          | Passed         | Passed       |
|[sctp-dm-o-4-5](sctp-dm-o-4-5.pkt)     | Yes         | Yes       | No          | Passed         | Passed       |
|[sctp-dm-o-4-6-1](sctp-dm-o-4-6-1.pkt) | Yes         | No        | No          | Unknown        | Unknown      |
|[sctp-dm-o-4-6-2](sctp-dm-o-4-6-2.pkt) | Yes         | No        | No          | Unknown        | Unknown      |
|[sctp-dm-o-4-6-3](sctp-dm-o-4-6-3.pkt) | Yes         | No        | No          | Unknown        | Unknown      |
|[sctp-dm-o-4-7-1](sctp-dm-o-4-7-1.pkt) | Yes         | No        | No          | Unknown        | Unknown      |
|[sctp-dm-o-4-7-2](sctp-dm-o-4-7-2.pkt) | Yes         | No        | No          | Unknown        | Unknown      |
|[sctp-dm-o-4-7-3](sctp-dm-o-4-7-3.pkt) | Yes         | No        | No          | Unknown        | Unknown      |
|[sctp-dm-o-4-8](sctp-dm-o-4-8.pkt)     | Almost      | No        | No          | Unknown        | Unknown      |
|[sctp-dm-o-4-9](sctp-dm-o-4-9.pkt)     | Yes         | No        | No          | Unknown        | Unknown      |
|[sctp-dm-o-4-10](sctp-dm-o-4-10.pkt)   | Yes         | No        | No          | Unknown        | Unknown      |

# Notes
1. FreeBSD sends an ABORT if the listening socket is closed when the INIT is received. This is tracked in [issue](https://github.com/sctplab/SCTP_NKE_Yosemite/issues/5).
