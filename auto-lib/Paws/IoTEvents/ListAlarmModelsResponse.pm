
package Paws::IoTEvents::ListAlarmModelsResponse;
  use Moose;
  has AlarmModelSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTEvents::AlarmModelSummary]', traits => ['NameInRequest'], request_name => 'alarmModelSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::ListAlarmModelsResponse

=head1 ATTRIBUTES


=head2 AlarmModelSummaries => ArrayRef[L<Paws::IoTEvents::AlarmModelSummary>]

A list that summarizes each alarm model.


=head2 NextToken => Str

The token that you can use to return the next set of results, or
C<null> if there are no more results.


=head2 _request_id => Str


=cut

