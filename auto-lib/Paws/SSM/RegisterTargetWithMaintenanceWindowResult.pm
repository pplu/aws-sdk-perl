
package Paws::SSM::RegisterTargetWithMaintenanceWindowResult;
  use Moose;
  has WindowTargetId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::RegisterTargetWithMaintenanceWindowResult

=head1 ATTRIBUTES


=head2 WindowTargetId => Str

The ID of the target definition in this Maintenance Window.


=head2 _request_id => Str


=cut

1;