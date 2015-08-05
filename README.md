# ETSI-SCTP-Conformance-Testsuite
An implementation of the SCTP Conformance Tests for packetdrill according to
[ETSI TS 102 369](http://www.etsi.org/deliver/etsi_ts/102300_102399/102369/01.01.01_60/ts_102369v010101p.pdf).
The initial focus is on supporting FreeBSD and Linux.

The testsuite contains of 121 test purposes for the following main functionalities:

| Main Functionality                                                             | Number of Test Purposes | Implemented | Finalized |
|:-------------------------------------------------------------------------------|:-----------------------:|:-----------:|:---------:|
| [Association Setup (AS)](sctp-as-tests/README.md)                              | 33                      |             |           |
| [Association Termination (AT)](sctp-at-tests/README.md)                        | 16                      |             |           |
| [Invalid Message Handling (IMH)](sctp-imh-tests/README.md)                     | 10                      |             |           |
| [Duplicate Messages (DM)](sctp-dm-tests/README.md)                             | 15                      |             |           |
| [Fault Handling (FH)](sctp-fh-tests/README.md)                                 | 8                       |  7          |  1        |
| [Error (E)](sctp-e-tests/README.md)                                            | 6                       |  6          |  6        |
| [Bundling of Data Chunks with Control Chunks (BDC)](sctp-bdc-tests/README.md)  | 8                       |  8          |  8        |
| [Data (D)](sctp-d-tests/README.md)                                             | 15                      |             |           |
| [Acknowledgement (A)](sctp-a-tests/README.md)                                  | 3                       |  3          |  3        |
| [Miscellaneous (M)](sctp-m-tests/README.md)                                    | 4                       |  4          |  4        |
| [Retransmission Timer (RT)](sctp-rt-tests/README.md)                           | 3                       |  2          |  0        |
