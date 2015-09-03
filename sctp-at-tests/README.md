# Status of the Association Termination Tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                                  | Implemented  | Finalized | OS specific | Result FreeBSD | Result Linux   |
|:--------------------------------------|:------------:|:---------:|:-----------:|:--------------:|:--------------:|
|[sctp-at-v-2-2](sctp-at-v-2-2.pkt)     | Yes          | Yes       | No          | Passed         | Passed         |
|[sctp-at-i-2-3](sctp-at-i-2-3.pkt)     | Yes          | Yes       | No          | Passed         | Passed         |
|[sctp-at-i-2-4](sctp-at-i-2-4.pkt)     | Yes          | Yes       | No          | Passed         | Passed         |
|[sctp-at-i-2-5](sctp-at-i-2-5.pkt)     | Yes (Note 1) | Yes       | No          | Passed (Note 2)| Passed         |
|[sctp-at-v-2-6](sctp-at-v-2-6.pkt)     | Yes          | Yes       | No          | Passed         | Failed (Note 3)|
|[sctp-at-i-2-7-1](sctp-at-i-2-7-1.pkt) | Yes (Note 4) | Yes       | No          | Passed         | Passed         |
|[sctp-at-i-2-7-2](sctp-at-i-2-7-2.pkt) | Yes (Note 5) | Yes       | No          | Passed (Note 6)| Passed         |
|[sctp-at-i-2-7-3](sctp-at-i-2-7-3.pkt) | Yes (Note 7) | Yes       | No          | Passed         | Passed         |
|[sctp-at-i-2-7-4](sctp-at-i-2-7-4.pkt) | Yes (Note 8) | Yes       | No          | Passed         | Passed         |
|[sctp-at-i-2-8](sctp-at-i-2-8.pkt)     | Yes (Note 9) | Yes       | No          | Passed         | Passed         |
|[sctp-at-i-2-9](sctp-at-i-2-9.pkt)     | Yes (Note 10)| Yes       | No          | Passed         | Passed         |
|[sctp-at-i-2-10](sctp-at-i-2-10.pkt)   | Yes          | Yes       | No          | Passed         | Passed         |
|[sctp-at-i-2-11](sctp-at-i-2-11.pkt)   | Yes          | Yes       | No          | Passed         | Passed         |
|[sctp-at-i-2-12](sctp-at-i-2-12.pkt)   | Yes (Note 11)| Yes       | No          | Passed         | Passed         |
|[sctp-at-i-2-13](sctp-at-i-2-13.pkt)   | Yes          | Yes       | No          | Passed         | Passed         |
|[sctp-at-v-2-14](sctp-at-v-2-14.pkt)   | Yes          | Yes       | No          | Passed         | Passed         |

# Notes

1. When the shutdown guard timer runs off, Linux reports ETIMEDOUT and FreeBSD reports ECONNABORTED at the socket layer in errno  (similar to Note 11).
2. Fix for [sctp-at-i-2-5](sctp-at-i-2-5.pkt): [head](https://svnweb.freebsd.org/changeset/base/287294).
3. Once the association has been terminated on a connected non-blocking 1-to-1 style socket, read() returns -1 indicating "Resource temporarily unavailable" instead of 0. See Note 6 on [README](https://github.com/nplab/ETSI-SCTP-Conformance-Testsuite/blob/master/sctp-bdc-tests/README.md).
4. When calling write() after shutdown(, SHUT_WR), Linux reports ESHUTDOWN whereas FreeBSD reports ECONNRESET. Shouldn't EPIPE be reported?
5. When the association is in SHUTDOWN-RECEIVED state and write() is called, Linux reports ESHUTDOWN whereas FreeBSD reports ECONNRESET. Shouldn't EPIPE be reported?
6. Fix for [sctp-at-i-2-7-2](sctp-at-i-2-7-2.pkt): [head](https://svnweb.freebsd.org/changeset/base/287444).
7. When the association is in SHUTDOWN-PENDING state and write() is called, Linux reports ESHUTDOWN whereas FreeBSD reports ECONNRESET. Shouldn't EPIPE be reported?
8. When the association is in SHUTDOWN-ACK-SENT state and write() is called, Linux reports ESHUTDOWN whereas FreeBSD reports ECONNRESET. Shouldn't EPIPE be reported?
9. It is assumed that the sender of the SHUTDOWN always bundles a SACK, even if not necessary based on TSNs.
10. Not sure where it is specified that DATA chunks after SHUTDOWN chunk needs to be discarded. Looks like a protocol violation to me.
11. After more than Max.Assoc.Retrans retranmissions, FreeBSD reports ECONNABORTED whereas Linux reports ETIMEDOUT (similar to Note 1).
