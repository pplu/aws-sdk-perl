
package Paws::ApplicationAutoScaling::DescribeScheduledActionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ScheduledActions => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationAutoScaling::ScheduledAction]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::DescribeScheduledActionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to get the next set of results. This value is
C<null> if there are no more results to return.


=head2 ScheduledActions => ArrayRef[L<Paws::ApplicationAutoScaling::ScheduledAction>]

Information about the scheduled actions.


=head2 _request_id => Str


=cut

1;