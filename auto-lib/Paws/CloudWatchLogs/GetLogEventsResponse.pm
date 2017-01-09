
package Paws::CloudWatchLogs::GetLogEventsResponse;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::OutputLogEvent]', traits => ['Unwrapped'], xmlname => 'events' );
  has NextBackwardToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextBackwardToken' );
  has NextForwardToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextForwardToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetLogEventsResponse

=head1 ATTRIBUTES


=head2 Events => ArrayRef[L<Paws::CloudWatchLogs::OutputLogEvent>]

The events.


=head2 NextBackwardToken => Str

The token for the next set of items in the backward direction. The
token expires after 24 hours.


=head2 NextForwardToken => Str

The token for the next set of items in the forward direction. The token
expires after 24 hours.


=head2 _request_id => Str


=cut

1;