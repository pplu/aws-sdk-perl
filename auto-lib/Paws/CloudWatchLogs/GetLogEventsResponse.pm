
package Paws::CloudWatchLogs::GetLogEventsResponse;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::OutputLogEvent]', traits => ['Unwrapped'], xmlname => 'events' );
  has NextBackwardToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextBackwardToken' );
  has NextForwardToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextForwardToken' );


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetLogEventsResponse

=head1 ATTRIBUTES


=head2 Events => ArrayRef[L<Paws::CloudWatchLogs::OutputLogEvent>]





=head2 NextBackwardToken => Str





=head2 NextForwardToken => Str






=cut

1;