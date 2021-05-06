
package Paws::EC2::RequestSpotFleetResponse;
  use Moose;
  has SpotFleetRequestId => (is => 'ro', isa => 'Str', request_name => 'spotFleetRequestId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RequestSpotFleetResponse

=head1 ATTRIBUTES


=head2 SpotFleetRequestId => Str

The ID of the Spot Fleet request.


=head2 _request_id => Str


=cut

