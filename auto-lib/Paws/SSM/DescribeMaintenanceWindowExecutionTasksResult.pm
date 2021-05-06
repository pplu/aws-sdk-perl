
package Paws::SSM::DescribeMaintenanceWindowExecutionTasksResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WindowExecutionTaskIdentities => (is => 'ro', isa => 'ArrayRef[Paws::SSM::MaintenanceWindowExecutionTaskIdentity]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeMaintenanceWindowExecutionTasksResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 WindowExecutionTaskIdentities => ArrayRef[L<Paws::SSM::MaintenanceWindowExecutionTaskIdentity>]

Information about the task executions.


=head2 _request_id => Str


=cut

1;