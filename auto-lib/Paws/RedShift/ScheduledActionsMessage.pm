
package Paws::RedShift::ScheduledActionsMessage;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has ScheduledActions => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ScheduledAction]', request_name => 'ScheduledAction', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ScheduledActionsMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional parameter that specifies the starting point to return a set
of response records. When the results of a DescribeScheduledActions
request exceed the value specified in C<MaxRecords>, AWS returns a
value in the C<Marker> field of the response. You can retrieve the next
set of response records by providing the returned marker value in the
C<Marker> parameter and retrying the request.


=head2 ScheduledActions => ArrayRef[L<Paws::RedShift::ScheduledAction>]

List of retrieved scheduled actions.


=head2 _request_id => Str


=cut

