# Status of the Error Tests

The following table show the current status of the Implementation. Once the implementation is completed, the implementation specific columns will be removed.

| Name                                                                                                                            | Implemented | Finalized | OS specific | Result FreeBSD | Result Linux   |
|:--------------------------------------------------------------------------------------------------------------------------------|:-----------:|:---------:|:-----------:|:--------------:|:--------------:|
|[sctp-e-o-6-1](sctp-e-o-6-1.pkt "Handling of an ERROR chunk indicating state cookie in state COOKIE-ECHOED")                     | Yes         | Yes       | No          | Passed         | Passed         |
|[sctp-e-o-6-2](sctp-e-o-6-2.pkt "Handling of an ERROR chunk indicating state cookie in states other than COOKIE-ECHOED")         | Yes         | Yes       | No          | Passed         | Passed         |
|[sctp-e-i-6-3](sctp-e-i-6-3.pkt "Handling of a DATA chunk on a non-existing stream")                                             | Yes         | Yes       | No          | Passed         | Passed         |
|[sctp-e-i-6-4](sctp-e-i-6-4.pkt "Handling of an INIT-ACK chunk without a cookie")                                                | Yes         | Yes       | No          | Passed (Note 1)| Passed         |
|[sctp-e-i-6-5](sctp-e-i-6-5.pkt "Handling of an INIT-ACK chunk containing an unknown parameter")                                 | Yes         | Yes       | No          | Passed (Note 2)| Failed (Note 3)|
|[sctp-e-i-6-6](sctp-e-i-6-6.pkt "Handling of a COOKIE-ECHO chunk bundled with an ERROR chunk indicating unrecognized parameters")| Yes (Note 4)| Yes       | No          | Passed         | Passed         |

# Notes
1. Fix for [sctp-e-i-6-4](sctp-e-i-6-4.pkt): [r287717](https://svnweb.freebsd.org/changeset/base/287717) and [r287719](https://svnweb.freebsd.org/changeset/base/287719).
2. Fix for [sctp-e-i-6-5](sctp-e-i-6-5.pkt): [r287669](https://svnweb.freebsd.org/changeset/base/287669).
3. The final padding is considered a padding of the parameter and not of the ERROR chunk.
4. It is assumed that the SUT sends a FORWARD-TSN Supported parameter.
   However, there is no way to enforce this generically. This is a limitation of the specification.
