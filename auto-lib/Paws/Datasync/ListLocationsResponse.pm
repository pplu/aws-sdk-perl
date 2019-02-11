
package Paws::Datasync::ListLocationsResponse;
  use Moose;
  has Locations => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::LocationListEntry]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::ListLocationsResponse

=head1 ATTRIBUTES


=head2 Locations => ArrayRef[L<Paws::Datasync::LocationListEntry>]

An array that contains a list of locations.


=head2 NextToken => Str

An opaque string that indicates the position at which to begin
returning the next list of locations.


=head2 _request_id => Str


=cut

1;