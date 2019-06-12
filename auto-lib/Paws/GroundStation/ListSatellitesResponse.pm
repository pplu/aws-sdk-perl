
package Paws::GroundStation::ListSatellitesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Satellites => (is => 'ro', isa => 'ArrayRef[Paws::GroundStation::SatelliteListItem]', traits => ['NameInRequest'], request_name => 'satellites');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListSatellitesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Next token that can be supplied in the next call to get the next page
of satellites.


=head2 Satellites => ArrayRef[L<Paws::GroundStation::SatelliteListItem>]

List of satellites.


=head2 _request_id => Str


=cut

