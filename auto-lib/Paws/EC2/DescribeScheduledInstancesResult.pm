
package Paws::EC2::DescribeScheduledInstancesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has ScheduledInstanceSet => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ScheduledInstance]', request_name => 'scheduledInstanceSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeScheduledInstancesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
C<null> when there are no more results to return.


=head2 ScheduledInstanceSet => ArrayRef[L<Paws::EC2::ScheduledInstance>]

Information about the Scheduled Instances.


=head2 _request_id => Str


=cut

