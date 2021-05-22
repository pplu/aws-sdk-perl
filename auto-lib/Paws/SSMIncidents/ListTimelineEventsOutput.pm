
package Paws::SSMIncidents::ListTimelineEventsOutput;
  use Moose;
  has EventSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SSMIncidents::EventSummary]', traits => ['NameInRequest'], request_name => 'eventSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::ListTimelineEventsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventSummaries => ArrayRef[L<Paws::SSMIncidents::EventSummary>]

Details about each event that occurred during the incident.


=head2 NextToken => Str

The pagination token to continue to the next page of results.


=head2 _request_id => Str


=cut

