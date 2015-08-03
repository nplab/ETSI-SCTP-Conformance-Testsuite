# Status of the Error Tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                            | Implemented  | Finalized | OS specifc | Result FreeBSD | Result Linux |
|:--------------------------------|:------------:|:---------:|:----------:|:--------------:|:------------:|
|[sctp-e-o-6-1](sctp-e-o-6-1.pkt) | Yes          | Yes       | No         | Passed         | Passed       |
|[sctp-e-o-6-2](sctp-e-o-6-2.pkt) | Yes          | Yes       | No         | Passed         | Passed       |
|[sctp-e-i-6-3](sctp-e-i-6-3.pkt) | Yes          | Yes       | No         | Passed         | Passed       |
|[sctp-e-i-6-4](sctp-e-i-6-4.pkt) | Yes (Note 1) | Yes       | No         | Unknown        | Unknown      |
|[sctp-e-i-6-5](sctp-e-i-6-5.pkt) | Yes (Note 2) | Yes       | No         | Passed         | Passed       |
|[sctp-e-i-6-6](sctp-e-i-6-6.pkt) | Yes (Note 3) | Yes       | No         | Passed         | Passed       |

# Notes
1. It is not clear whether the padding is a cause padding or a chunk padding.
   So is the length of the ABORT chunk 14 (as used by Linux) or 16 (as used by FreeBSD).
   packetdrill also uses currently 14.
2. There is a bug in FreeBSD when dealing with unknown parameters which require padding.
   See [issue](https://github.com/sctplab/SCTP_NKE_Yosemite/issues/1). Even when that is fixed,
   Note 1 still applies.
3. It is assumed that the SUT sends a FORWARD-TSN Supported parameter.
   However, there is on way to enforce this generically. This is a limitation of the specification.
