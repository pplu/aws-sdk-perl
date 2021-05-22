
package Paws::CloudWatchEvents::StartReplayResponse;
  use Moose;
  has ReplayArn => (is => 'ro', isa => 'Str');
  has ReplayStartTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has StateReason => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::StartReplayResponse

=head1 ATTRIBUTES


=head2 ReplayArn => Str

The ARN of the replay.


=head2 ReplayStartTime => Str

The time at which the replay started.


=head2 State => Str

The state of the replay.

Valid values are: C<"STARTING">, C<"RUNNING">, C<"CANCELLING">, C<"COMPLETED">, C<"CANCELLED">, C<"FAILED">
=head2 StateReason => Str

The reason that the replay is in the state.


=head2 _request_id => Str


=cut

1;