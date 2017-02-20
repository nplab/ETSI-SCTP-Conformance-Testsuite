# Status of the Acknowledgement Tests

| Name                                                                         | OS specific | Result FreeBSD | Result Linux |
|:-----------------------------------------------------------------------------|:-----------:|:--------------:|:------------:|
|[sctp-a-v-9-1](sctp-a-v-9-1.pkt "First SACK is sent immediately")             | No          | Passed         | Passed       |
|[sctp-a-v-9-2](sctp-a-v-9-2.pkt "SACK can cover multiple bundled DATA chunks")| No          | Passed         | Passed       |
|[sctp-a-o-9-3](sctp-a-o-9-3.pkt "SACK with gap report is sent immediately")   | Yes (Note 1)| Passed         | Passed       |

# Notes
1. Right after the gap is closed, Linux does delay the sending of the SACK whereas FreeBSD doesn't.
