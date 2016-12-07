
package Paws::SSM::DeregisterTargetFromMaintenanceWindowResult;
  use Moose;
  has WindowId => (is => 'ro', isa => 'Str');
  has WindowTargetId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeregisterTargetFromMaintenanceWindowResult

=head1 ATTRIBUTES


=head2 WindowId => Str

The ID of the Maintenance Window the target was removed from.


=head2 WindowTargetId => Str

The ID of the removed target definition.


=head2 _request_id => Str


=cut

1;