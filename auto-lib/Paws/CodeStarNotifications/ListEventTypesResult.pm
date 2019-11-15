
package Paws::CodeStarNotifications::ListEventTypesResult;
  use Moose;
  has EventTypes => (is => 'ro', isa => 'ArrayRef[Paws::CodeStarNotifications::EventTypeSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::ListEventTypesResult

=head1 ATTRIBUTES


=head2 EventTypes => ArrayRef[L<Paws::CodeStarNotifications::EventTypeSummary>]

Information about each event, including service name, resource type,
event ID, and event name.


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of the results.


=head2 _request_id => Str


=cut

