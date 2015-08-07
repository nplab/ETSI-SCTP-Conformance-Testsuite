# Status of the Association Termination Tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                                  | Implemented | Finalized | OS specific | Result FreeBSD | Result Linux   |
|:--------------------------------------|:-----------:|:---------:|:-----------:|:--------------:|:--------------:|
|[sctp-at-v-2-2](sctp-at-v-2-2.pkt)     | Yes         | Yes       | No          | Passed         | Passed         |
|[sctp-at-i-2-3](sctp-at-i-2-3.pkt)     | Yes         | Yes       | No          | Passed         | Passed         |
|[sctp-at-i-2-4](sctp-at-i-2-4.pkt)     | Yes         | Yes       | No          | Passed         | Passed         |
|[sctp-at-i-2-5](sctp-at-i-2-5.pkt)     | Yes         | Yes       | No          | Failed (Note 1)| Passed         |
|[sctp-at-v-2-6](sctp-at-v-2-6.pkt)     | Yes         | Yes       | No          | Passed         | Failed (Note 2)|
|[sctp-at-i-2-7-1](sctp-at-i-2-7-1.pkt) | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-at-i-2-7-2](sctp-at-i-2-7-2.pkt) | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-at-i-2-7-3](sctp-at-i-2-7-3.pkt) | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-at-i-2-7-4](sctp-at-i-2-7-4.pkt) | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-at-i-2-8](sctp-at-i-2-8.pkt)     | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-at-i-2-9](sctp-at-i-2-9.pkt)     | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-at-i-2-10](sctp-at-i-2-10.pkt)   | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-at-i-2-11](sctp-at-i-2-11.pkt)   | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-at-i-2-12](sctp-at-i-2-12.pkt)   | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-at-i-2-13](sctp-at-i-2-13.pkt)   | Yes         | No        | No          | Unknown        | Unknown        |
|[sctp-at-v-2-14](sctp-at-v-2-14.pkt)   | Yes         | No        | No          | Unknown        | Unknown        |

# Notes

1. It is assumed that the shutdown-guard timer is 5 * RTO_MAX. This is currently not the case for FreeBSD resulting in a test failure (Even if that is not explicitly described in the test purpose). This issue is tracked in [issue](https://github.com/sctplab/SCTP_NKE_Yosemite/issues/6).
2. Once the association has been terminated on a connected non-blocking 1-to-1 style socket, read() returns -1 indicating "Resource temporarily unavailable" instead of 0. See Note 6 on [README](https://github.com/nplab/ETSI-SCTP-Conformance-Testsuite/blob/master/sctp-bdc-tests/README.md).
3. 
