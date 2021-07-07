
package Paws::IoTEventsData::ListAlarmsResponse;
  use Moose;
  has AlarmSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTEventsData::AlarmSummary]', traits => ['NameInRequest'], request_name => 'alarmSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::ListAlarmsResponse

=head1 ATTRIBUTES


=head2 AlarmSummaries => ArrayRef[L<Paws::IoTEventsData::AlarmSummary>]

A list that summarizes each alarm.


=head2 NextToken => Str

The token that you can use to return the next set of results, or
C<null> if there are no more results.


=head2 _request_id => Str


=cut

