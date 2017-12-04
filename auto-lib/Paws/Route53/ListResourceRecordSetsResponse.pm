
package Paws::Route53::ListResourceRecordSetsResponse;
  use Moose;
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has NextRecordIdentifier => (is => 'ro', isa => 'Str');
  has NextRecordName => (is => 'ro', isa => 'Str');
  has NextRecordType => (is => 'ro', isa => 'Str');
  has ResourceRecordSets => (is => 'ro', isa => 'ArrayRef[Paws::Route53::ResourceRecordSet]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListResourceRecordSetsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IsTruncated => Bool

A flag that indicates whether more resource record sets remain to be
listed. If your results were truncated, you can make a follow-up
pagination request by using the C<NextRecordName> element.



=head2 B<REQUIRED> MaxItems => Str

The maximum number of records you requested.



=head2 NextRecordIdentifier => Str

I<Weighted, latency, geolocation, and failover resource record sets
only>: If results were truncated for a given DNS name and type, the
value of C<SetIdentifier> for the next resource record set that has the
current DNS name and type.



=head2 NextRecordName => Str

If the results were truncated, the name of the next record in the list.

This element is present only if C<IsTruncated> is true.



=head2 NextRecordType => Str

If the results were truncated, the type of the next record in the list.

This element is present only if C<IsTruncated> is true.

Valid values are: C<"SOA">, C<"A">, C<"TXT">, C<"NS">, C<"CNAME">, C<"MX">, C<"NAPTR">, C<"PTR">, C<"SRV">, C<"SPF">, C<"AAAA">, C<"CAA">

=head2 B<REQUIRED> ResourceRecordSets => ArrayRef[L<Paws::Route53::ResourceRecordSet>]

Information about multiple resource record sets.




=cut

