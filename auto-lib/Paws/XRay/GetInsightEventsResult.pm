
package Paws::XRay::GetInsightEventsResult;
  use Moose;
  has InsightEvents => (is => 'ro', isa => 'ArrayRef[Paws::XRay::InsightEvent]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetInsightEventsResult

=head1 ATTRIBUTES


=head2 InsightEvents => ArrayRef[L<Paws::XRay::InsightEvent>]

A detailed description of the event. This includes the time of the
event, client and root cause impact statistics, and the top anomalous
service at the time of the event.


=head2 NextToken => Str

Use this token to retrieve the next page of insight events.


=head2 _request_id => Str


=cut

