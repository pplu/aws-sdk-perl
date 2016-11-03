
package Paws::CloudWatchLogs::GetLogEventsResponse;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::OutputLogEvent]', traits => ['NameInRequest'], request_name => 'events' );
  has NextBackwardToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextBackwardToken' );
  has NextForwardToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextForwardToken' );


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetLogEventsResponse

=head1 ATTRIBUTES


=head2 Events => ArrayRef[L<Paws::CloudWatchLogs::OutputLogEvent>]





=head2 NextBackwardToken => Str





=head2 NextForwardToken => Str






=cut

1;