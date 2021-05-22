
package Paws::CloudWatchEvents::ListReplaysResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Replays => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::Replay]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListReplaysResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token returned by a previous call to retrieve the next set of
results.


=head2 Replays => ArrayRef[L<Paws::CloudWatchEvents::Replay>]

An array of C<Replay> objects that contain information about the
replay.


=head2 _request_id => Str


=cut

1;