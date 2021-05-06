
package Paws::OpsWorksCM::StartMaintenanceResponse;
  use Moose;
  has Server => (is => 'ro', isa => 'Paws::OpsWorksCM::Server');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::StartMaintenanceResponse

=head1 ATTRIBUTES


=head2 Server => L<Paws::OpsWorksCM::Server>

Contains the response to a C<StartMaintenance> request.


=head2 _request_id => Str


=cut

1;