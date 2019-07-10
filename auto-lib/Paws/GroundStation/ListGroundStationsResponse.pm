
package Paws::GroundStation::ListGroundStationsResponse;
  use Moose;
  has GroundStationList => (is => 'ro', isa => 'ArrayRef[Paws::GroundStation::GroundStationData]', traits => ['NameInRequest'], request_name => 'groundStationList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListGroundStationsResponse

=head1 ATTRIBUTES


=head2 GroundStationList => ArrayRef[L<Paws::GroundStation::GroundStationData>]

List of ground stations.


=head2 NextToken => Str

Next token that can be supplied in the next call to get the next page
of ground stations.


=head2 _request_id => Str


=cut

