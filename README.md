# ETSI-SCTP-Conformance-Testsuite
An implementation of the SCTP Conformance Tests for packetdrill according to
[ETSI TS 102 369](http://www.etsi.org/deliver/etsi_ts/102300_102399/102369/01.01.01_60/ts_102369v010101p.pdf).
The initial focus is on supporting FreeBSD and Linux.

The testsuite contains of 121 test purposes. Four of those are not applicable to SCTP implementations using the socket API defined in [RFC 6458](https://tools.ietf.org/html/rfc6458) and two test purposes can't be implemented in packetdrill due to conceptual limits.
Therefore, 115 test purposes can be implemented with packetdrill.

The following table shows the status of the test purposes splitted up in the 11 main functionalities:

| Main Functionality                                                             | Number of Test Purposes | Implemented | Finalized    |
|:-------------------------------------------------------------------------------|:-----------------------:|:-----------:|:------------:|
| [Association Setup (AS)](sctp-as-tests/README.md)                              | 33                      |  30 (Note 1)|  27 (Note 2) |
| [Association Termination (AT)](sctp-at-tests/README.md)                        | 16                      |  16         |  16          |
| [Invalid Message Handling (IMH)](sctp-imh-tests/README.md)                     | 10                      |  10         |  10          |
| [Duplicate Messages (DM)](sctp-dm-tests/README.md)                             | 15                      |  15         |  15          |
| [Fault Handling (FH)](sctp-fh-tests/README.md)                                 | 8                       |  8          |  7  (Note 3) |
| [Error (E)](sctp-e-tests/README.md)                                            | 6                       |  6          |  6           |
| [Bundling of Data Chunks with Control Chunks (BDC)](sctp-bdc-tests/README.md)  | 8                       |  8          |  8           |
| [Data (D)](sctp-d-tests/README.md)                                             | 15                      |  12 (Note 4)|  11 (Note 2) |
| [Acknowledgement (A)](sctp-a-tests/README.md)                                  | 3                       |  3          |  3           |
| [Miscellaneous (M)](sctp-m-tests/README.md)                                    | 4                       |  4          |  4           |
| [Retransmission Timer (RT)](sctp-rt-tests/README.md)                           | 3                       |  3          |  2 (Note 2)  |

# Notes
1. One test is not applicable since the maximum number of associations supported by the SCTP stack can't be controlled via the socket API. Two tests are not implementable within packetdrill since checking the randomness of the initiate tags is not supported.
2. Support for multi-homing is required in packetdrill. This is currently missing and tracked in [packetdrill issue 28](https://github.com/nplab/packetdrill/issues/28).
3. Support for injecting packets with non-unicast source addresses is required in packetdrill. This is currenty missing and tracked in [packetdrill issue 26](https://github.com/nplab/packetdrill/issues/26).
4. Three tests are not applicable, since the socket layer does not have a message size limit for receiving messages. Partial delivery is used in the case the message can't be delivered atomically.


# Fixes for FreeBSD
1. Fix for [sctp-d-i-8-11](sctp-d-tests/sctp-d-i-8-11.pkt): [r286206](https://svnweb.freebsd.org/changeset/base/286206).
2. Fix for [sctp-at-i-2-5](sctp-at-tests/sctp-at-i-2-5.pkt): [r287294](https://svnweb.freebsd.org/changeset/base/287294).
3. Fix for [sctp-at-i-2-7-2](sctp-at-tests/sctp-at-i-2-7-2.pkt): [r287444](https://svnweb.freebsd.org/changeset/base/287444).
4. Fix for [sctp-bdc-i-7-1](sctp-bdc-tests/sctp-bdc-i-7-1.pkt): [r287535](https://svnweb.freebsd.org/changeset/base/287535).
5. Fix for [sctp-e-i-6-5](sctp-e-tests/sctp-e-i-6-5.pkt): [r287669](https://svnweb.freebsd.org/changeset/base/287669).
6. Fix for [sctp-e-i-6-4](sctp-e-tests/sctp-e-i-6-4.pkt): [r287717](https://svnweb.freebsd.org/changeset/base/287717) and [r287719](https://svnweb.freebsd.org/changeset/base/287719).
7. Fix for [sctp-imh-i-3-3](sctp-imh-tests/sctp-imh-i-3-3.pkt): [r290023](https://svnweb.freebsd.org/changeset/base/290023).
8. Fix for [sctp-dm-o-4-2-1](sctp-dm-tests/sctp-dm-o-4-2-1.pkt), [sctp-dm-o-4-2-2](sctp-dm-tests/sctp-dm-o-4-2-2.pkt), [sctp-as-o-1-9-1](sctp-as-tests/sctp-as-o-1-9-1.pkt), [sctp-as-o-1-9-2](sctp-as-tests/sctp-as-o-1-9-2.pkt): [r294057](https://svnweb.freebsd.org/changeset/base/294057).
9. Fix for [sctp-imh-i-3-9](sctp-imh-i-3-9.pkt): [b621fbb1](https://cgit.FreeBSD.org/src/commit/?id=b621fbb1bf1b2a1e6ea22e0ad2d7667b1aec9fae).
