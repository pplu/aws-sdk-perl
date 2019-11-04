
package Paws::CloudWatchEvents::ListEventBusesResponse;
  use Moose;
  has EventBuses => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::EventBus]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListEventBusesResponse

=head1 ATTRIBUTES


=head2 EventBuses => ArrayRef[L<Paws::CloudWatchEvents::EventBus>]

This list of event buses.


=head2 NextToken => Str

A token you can use in a subsequent operation to retrieve the next set
of results.


=head2 _request_id => Str


=cut

1;