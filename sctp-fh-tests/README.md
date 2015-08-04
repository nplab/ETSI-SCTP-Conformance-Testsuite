# Status of the Fault Handling Tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                                  | Implemented | Finalized | OS specifc | Result FreeBSD | Result Linux    |
|:--------------------------------------|:-----------:|:---------:|:----------:|:--------------:|:---------------:|
|[sctp-fh-i-5-1-1](sctp-fh-i-5-1-1.pkt) | Yes         | No        | No         | Passed         | Unknown (Note 1)|
|[sctp-fh-i-5-1-2](sctp-fh-i-5-1-2.pkt) | Yes         | No        | No         | Passed         | Unknown (Note 1)|
|[sctp-fh-v-5-2](sctp-fh-v-5-2.pkt)     | Yes         | Yes       | No         | Passed         | Passed          |
|[sctp-fh-o-5-3-1](sctp-fh-o-5-3-1.pkt) | Almost      | No        | No         | Unknown        | Unknown         |
|[sctp-fh-o-5-3-2](sctp-fh-o-5-3-2.pkt) | Almost      | No        | No         | Unknown        | Unknown         |
|[sctp-fh-o-5-3-3](sctp-fh-o-5-3-3.pkt) | Almost      | No        | No         | Unknown        | Unknown         |
|[sctp-fh-o-5-3-4](sctp-fh-o-5-3-4.pkt) | Almost      | No        | No         | Unknown        | Unknown         |
|[sctp-fh-o-5-3-5](sctp-fh-o-5-3-5.pkt) | Almost      | No        | No         | Unknown        | Unknown         |

# Notes

1. Linux sends HEARTBEATs. Use SCTP_PEER_ADDR_PARAMS socket option to disable them.
