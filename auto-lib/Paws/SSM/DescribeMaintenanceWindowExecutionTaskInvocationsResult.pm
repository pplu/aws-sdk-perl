
package Paws::SSM::DescribeMaintenanceWindowExecutionTaskInvocationsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WindowExecutionTaskInvocationIdentities => (is => 'ro', isa => 'ArrayRef[Paws::SSM::MaintenanceWindowExecutionTaskInvocationIdentity]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeMaintenanceWindowExecutionTaskInvocationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 WindowExecutionTaskInvocationIdentities => ArrayRef[L<Paws::SSM::MaintenanceWindowExecutionTaskInvocationIdentity>]

Information about the task invocation results per invocation.


=head2 _request_id => Str


=cut

1;