
package Paws::EC2::RequestSpotFleetResponse;
  use Moose;
  has SpotFleetRequestId => (is => 'ro', isa => 'Str', request_name => 'spotFleetRequestId', traits => ['NameInRequest',], required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RequestSpotFleetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SpotFleetRequestId => Str

The ID of the Spot fleet request.


=head2 _request_id => Str


=cut

