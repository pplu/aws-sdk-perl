
package Paws::SSM::DescribeMaintenanceWindowTasksResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tasks => (is => 'ro', isa => 'ArrayRef[Paws::SSM::MaintenanceWindowTask]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeMaintenanceWindowTasksResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 Tasks => ArrayRef[L<Paws::SSM::MaintenanceWindowTask>]

Information about the tasks in the Maintenance Window.


=head2 _request_id => Str


=cut

1;