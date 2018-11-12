
package Paws::SSM::RegisterTaskWithMaintenanceWindowResult;
  use Moose;
  has WindowTaskId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::RegisterTaskWithMaintenanceWindowResult

=head1 ATTRIBUTES


=head2 WindowTaskId => Str

The ID of the task in the Maintenance Window.


=head2 _request_id => Str


=cut

1;