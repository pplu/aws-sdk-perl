
package Paws::SSM::CreateMaintenanceWindowResult;
  use Moose;
  has WindowId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateMaintenanceWindowResult

=head1 ATTRIBUTES


=head2 WindowId => Str

The ID of the created Maintenance Window.


=head2 _request_id => Str


=cut

1;