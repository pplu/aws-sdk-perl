
package Paws::WorkLink::CreateFleetResponse;
  use Moose;
  has FleetArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::CreateFleetResponse

=head1 ATTRIBUTES


=head2 FleetArn => Str

The ARN of the fleet.


=head2 _request_id => Str


=cut

