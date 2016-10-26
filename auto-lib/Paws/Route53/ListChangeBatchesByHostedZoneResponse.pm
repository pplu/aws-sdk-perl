
package Paws::Route53::ListChangeBatchesByHostedZoneResponse;
  use Moose;
  has ChangeBatchRecords => (is => 'ro', isa => 'ArrayRef[Paws::Route53::ChangeBatchRecord]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str', required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has NextMarker => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListChangeBatchesByHostedZoneResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeBatchRecords => ArrayRef[L<Paws::Route53::ChangeBatchRecord>]

The change batches within the given hosted zone and time period.



=head2 IsTruncated => Bool

A flag that indicates if there are more change batches to list.



=head2 B<REQUIRED> Marker => Str

For the second and subsequent calls to ListHostedZones, Marker is the
value that you specified for the marker parameter in the request that
produced the current response.



=head2 B<REQUIRED> MaxItems => Str

The value that you specified for the C<maxitems> parameter in the call
to C<ListHostedZones> that produced the current response.



=head2 NextMarker => Str

The next page marker.




=cut

