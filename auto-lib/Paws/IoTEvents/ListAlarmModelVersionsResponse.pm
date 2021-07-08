
package Paws::IoTEvents::ListAlarmModelVersionsResponse;
  use Moose;
  has AlarmModelVersionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTEvents::AlarmModelVersionSummary]', traits => ['NameInRequest'], request_name => 'alarmModelVersionSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::ListAlarmModelVersionsResponse

=head1 ATTRIBUTES


=head2 AlarmModelVersionSummaries => ArrayRef[L<Paws::IoTEvents::AlarmModelVersionSummary>]

A list that summarizes each alarm model version.


=head2 NextToken => Str

The token that you can use to return the next set of results, or
C<null> if there are no more results.


=head2 _request_id => Str


=cut

