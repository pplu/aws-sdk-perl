
package Paws::CloudWatchEvents::ListEventSourcesResponse;
  use Moose;
  has EventSources => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::EventSource]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListEventSourcesResponse

=head1 ATTRIBUTES


=head2 EventSources => ArrayRef[L<Paws::CloudWatchEvents::EventSource>]

The list of event sources.


=head2 NextToken => Str

A token you can use in a subsequent operation to retrieve the next set
of results.


=head2 _request_id => Str


=cut

1;