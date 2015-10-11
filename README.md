# ETSI-SCTP-Conformance-Testsuite
An implementation of the SCTP Conformance Tests for packetdrill according to
[ETSI TS 102 369](http://www.etsi.org/deliver/etsi_ts/102300_102399/102369/01.01.01_60/ts_102369v010101p.pdf).
The initial focus is on supporting FreeBSD and Linux.

The testsuite contains of 121 test purposes for the following main functionalities:

| Main Functionality                                                             | Number of Test Purposes | Implemented | Finalized |
|:-------------------------------------------------------------------------------|:-----------------------:|:-----------:|:---------:|
| [Association Setup (AS)](sctp-as-tests/README.md)                              | 33                      |  30 (Note 1)|  24       |
| [Association Termination (AT)](sctp-at-tests/README.md)                        | 16                      |  16         |  16       |
| [Invalid Message Handling (IMH)](sctp-imh-tests/README.md)                     | 10                      |  10         |  5        |
| [Duplicate Messages (DM)](sctp-dm-tests/README.md)                             | 15                      |  15         |  14       |
| [Fault Handling (FH)](sctp-fh-tests/README.md)                                 | 8                       |  8          |  3        |
| [Error (E)](sctp-e-tests/README.md)                                            | 6                       |  6          |  6        |
| [Bundling of Data Chunks with Control Chunks (BDC)](sctp-bdc-tests/README.md)  | 8                       |  8          |  8        |
| [Data (D)](sctp-d-tests/README.md)                                             | 15                      |  12 (Note 2)|  11       |
| [Acknowledgement (A)](sctp-a-tests/README.md)                                  | 3                       |  3          |  3        |
| [Miscellaneous (M)](sctp-m-tests/README.md)                                    | 4                       |  4          |  4        |
| [Retransmission Timer (RT)](sctp-rt-tests/README.md)                           | 3                       |  3          |  2        |

# Notes
1. One test is not applicable and two tests are not implementable within packetdrill.
2. Three tests are not applicable.

# Fixes for FreeBSD
1. Fix for [sctp-d-i-8-11](sctp-d-tests/sctp-d-i-8-11.pkt): [r286206](https://svnweb.freebsd.org/changeset/base/286206).
2. Fix for [sctp-at-i-2-5](sctp-at-tests/sctp-at-i-2-5.pkt): [r287294](https://svnweb.freebsd.org/changeset/base/287294).
3. Fix for [sctp-at-i-2-7-2](sctp-at-tests/sctp-at-i-2-7-2.pkt): [r287444](https://svnweb.freebsd.org/changeset/base/287444).
4. Fix for [sctp-bdc-i-7-1](sctp-bdc-tests/sctp-bdc-i-7-1.pkt): [r287535](https://svnweb.freebsd.org/changeset/base/287535).
5. Fix for [sctp-e-i-6-5](sctp-e-i-6-5.pkt): [r287669](https://svnweb.freebsd.org/changeset/base/287669).
6. Fix for [sctp-e-i-6-4](sctp-e-i-6-4.pkt): [r287717](https://svnweb.freebsd.org/changeset/base/287717) and [r287719](https://svnweb.freebsd.org/changeset/base/287719).
