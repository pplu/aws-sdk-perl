
package Paws::StorageGateway::DescribeTapesOutput;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has Tapes => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::Tape]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeTapesOutput

=head1 ATTRIBUTES


=head2 Marker => Str

An opaque string that can be used as part of a subsequent
C<DescribeTapes> call to retrieve the next page of results.

If a response does not contain a marker, then there are no more results
to be retrieved.


=head2 Tapes => ArrayRef[L<Paws::StorageGateway::Tape>]

An array of virtual tape descriptions.


=head2 _request_id => Str


=cut

1;