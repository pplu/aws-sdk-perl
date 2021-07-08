
package Paws::CloudWatchEvents::CancelReplayResponse;
  use Moose;
  has ReplayArn => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has StateReason => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::CancelReplayResponse

=head1 ATTRIBUTES


=head2 ReplayArn => Str

The ARN of the replay to cancel.


=head2 State => Str

The current state of the replay.

Valid values are: C<"STARTING">, C<"RUNNING">, C<"CANCELLING">, C<"COMPLETED">, C<"CANCELLED">, C<"FAILED">
=head2 StateReason => Str

The reason that the replay is in the current state.


=head2 _request_id => Str


=cut

1;