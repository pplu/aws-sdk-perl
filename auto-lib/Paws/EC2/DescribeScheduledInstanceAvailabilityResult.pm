
package Paws::EC2::DescribeScheduledInstanceAvailabilityResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has ScheduledInstanceAvailabilitySet => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ScheduledInstanceAvailability]', request_name => 'scheduledInstanceAvailabilitySet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeScheduledInstanceAvailabilityResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
C<null> when there are no more results to return.


=head2 ScheduledInstanceAvailabilitySet => ArrayRef[L<Paws::EC2::ScheduledInstanceAvailability>]

Information about the available Scheduled Instances.


=head2 _request_id => Str


=cut

