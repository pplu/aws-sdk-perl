
package Paws::EC2::CreateFleetResult;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str', request_name => 'fleetId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateFleetResult

=head1 ATTRIBUTES


=head2 FleetId => Str

The ID of the EC2 Fleet.


=head2 _request_id => Str


=cut

