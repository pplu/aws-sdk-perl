
package Paws::SSM::DescribeMaintenanceWindowScheduleResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ScheduledWindowExecutions => (is => 'ro', isa => 'ArrayRef[Paws::SSM::ScheduledWindowExecution]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeMaintenanceWindowScheduleResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. (You use this token in
the next call.)


=head2 ScheduledWindowExecutions => ArrayRef[L<Paws::SSM::ScheduledWindowExecution>]

Information about Maintenance Window executions scheduled for the
specified time range.


=head2 _request_id => Str


=cut

1;