
package Paws::SSM::DeregisterTaskFromMaintenanceWindowResult;
  use Moose;
  has WindowId => (is => 'ro', isa => 'Str');
  has WindowTaskId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeregisterTaskFromMaintenanceWindowResult

=head1 ATTRIBUTES


=head2 WindowId => Str

The ID of the Maintenance Window the task was removed from.


=head2 WindowTaskId => Str

The ID of the task removed from the Maintenance Window.


=head2 _request_id => Str


=cut

1;