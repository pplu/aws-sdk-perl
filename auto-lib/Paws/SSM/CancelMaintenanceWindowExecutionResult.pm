
package Paws::SSM::CancelMaintenanceWindowExecutionResult;
  use Moose;
  has WindowExecutionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CancelMaintenanceWindowExecutionResult

=head1 ATTRIBUTES


=head2 WindowExecutionId => Str

The ID of the Maintenance Window execution that has been stopped.


=head2 _request_id => Str


=cut

1;