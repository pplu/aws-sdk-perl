
package Paws::SSM::DescribeMaintenanceWindowExecutionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WindowExecutions => (is => 'ro', isa => 'ArrayRef[Paws::SSM::MaintenanceWindowExecution]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeMaintenanceWindowExecutionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 WindowExecutions => ArrayRef[L<Paws::SSM::MaintenanceWindowExecution>]

Information about the Maintenance Windows execution.


=head2 _request_id => Str


=cut

1;