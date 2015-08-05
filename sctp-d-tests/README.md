# Status of the Data Tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                              | Implemented | Finalized | OS specifc | Result FreeBSD | Result Linux |
|:----------------------------------|:-----------:|:---------:|:----------:|:--------------:|:------------:|
|[sctp-d-v-8-1](sctp-d-v-8-1.pkt)   | Yes (Note 1)| Yes       | No         | Passed         | Passed       |
|[sctp-d-v-8-2](sctp-d-v-8-2.pkt)   | Yes (Note 1)| Yes       | No         | Passed         | Passed       |
|[sctp-d-v-8-3](sctp-d-v-8-3.pkt)   | Yes         | Yes       | No         | Passed         | Passed       |
|[sctp-d-v-8-4](sctp-d-v-8-4.pkt)   | Yes         | Yes       | No         | Passed         | Passed       |
|[sctp-d-i-8-5](sctp-d-i-8-5.pkt)   | Yes         | No        | No         | Unknown        | Unknown      |
|[sctp-d-o-8-6](sctp-d-o-8-6.pkt)   | Yes         | No        | No         | Unknown        | Unknown      |
|[sctp-d-o-8-7](sctp-d-o-8-7.pkt)   | Impossible  | No        | No         | Unknown        | Unknown      |
|[sctp-d-o-8-8](sctp-d-o-8-8.pkt)   | Yes         | No        | No         | Unknown        | Unknown      |
|[sctp-d-v-8-9](sctp-d-v-8-9.pkt)   | No          | No        | No         | Unknown        | Unknown      |
|[sctp-d-v-8-10](sctp-d-v-8-10.pkt) | Impossible  | No        | No         | Unknown        | Unknown      |
|[sctp-d-i-8-11](sctp-d-i-8-11.pkt) | Yes         | Yes       | No         | Passed (Note 2)| Unknown      |
|[sctp-d-o-8-12](sctp-d-o-8-12.pkt) | Yes         | No        | No         | Unknown        | Unknown      |
|[sctp-d-v-8-13](sctp-d-v-8-13.pkt) | No (Note 3) | No        | No         | Unknown        | Unknown      |
|[sctp-d-v-8-14](sctp-d-v-8-14.pkt) | No (Note 3) | No        | No         | Unknown        | Unknown      |
|[sctp-d-v-8-15](sctp-d-v-8-15.pkt) | No (Note 3) | No        | No         | Unknown        | Unknown      |

## Notes
1. It is assumed that the MTU is 1500 bytes and that IPv4 is used.
2. Fix for [sctp-d-i-8-11](sctp-d-i-8-11.pkt): [head](https://svnweb.freebsd.org/changeset/base/286206).
3. Socket layer based implementations don't limit the length of user messages to be received. Therefore the optional test doesn't apply.
