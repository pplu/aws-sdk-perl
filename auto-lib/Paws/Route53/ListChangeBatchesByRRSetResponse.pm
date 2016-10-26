
package Paws::Route53::ListChangeBatchesByRRSetResponse;
  use Moose;
  has ChangeBatchRecords => (is => 'ro', isa => 'ArrayRef[Paws::Route53::ChangeBatchRecord]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str', required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has NextMarker => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListChangeBatchesByRRSetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeBatchRecords => ArrayRef[L<Paws::Route53::ChangeBatchRecord>]

The change batches within the given hosted zone and time period.



=head2 IsTruncated => Bool

A flag that indicates if there are more change batches to list.



=head2 B<REQUIRED> Marker => Str

The page marker.



=head2 B<REQUIRED> MaxItems => Str

The maximum number of items on a page.



=head2 NextMarker => Str

The next page marker.




=cut

