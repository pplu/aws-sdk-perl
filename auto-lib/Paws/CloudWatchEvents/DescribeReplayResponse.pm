
package Paws::CloudWatchEvents::DescribeReplayResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Destination => (is => 'ro', isa => 'Paws::CloudWatchEvents::ReplayDestination');
  has EventEndTime => (is => 'ro', isa => 'Str');
  has EventLastReplayedTime => (is => 'ro', isa => 'Str');
  has EventSourceArn => (is => 'ro', isa => 'Str');
  has EventStartTime => (is => 'ro', isa => 'Str');
  has ReplayArn => (is => 'ro', isa => 'Str');
  has ReplayEndTime => (is => 'ro', isa => 'Str');
  has ReplayName => (is => 'ro', isa => 'Str');
  has ReplayStartTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has StateReason => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::DescribeReplayResponse

=head1 ATTRIBUTES


=head2 Description => Str

The description of the replay.


=head2 Destination => L<Paws::CloudWatchEvents::ReplayDestination>

A C<ReplayDestination> object that contains details about the replay.


=head2 EventEndTime => Str

The time stamp for the last event that was replayed from the archive.


=head2 EventLastReplayedTime => Str

The time that the event was last replayed.


=head2 EventSourceArn => Str

The ARN of the archive events were replayed from.


=head2 EventStartTime => Str

The time stamp of the first event that was last replayed from the
archive.


=head2 ReplayArn => Str

The ARN of the replay.


=head2 ReplayEndTime => Str

A time stamp for the time that the replay stopped.


=head2 ReplayName => Str

The name of the replay.


=head2 ReplayStartTime => Str

A time stamp for the time that the replay started.


=head2 State => Str

The current state of the replay.

Valid values are: C<"STARTING">, C<"RUNNING">, C<"CANCELLING">, C<"COMPLETED">, C<"CANCELLED">, C<"FAILED">
=head2 StateReason => Str

The reason that the replay is in the current state.


=head2 _request_id => Str


=cut

1;