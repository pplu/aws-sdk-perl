
package Paws::KinesisVideo::ListStreamsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StreamInfoList => (is => 'ro', isa => 'ArrayRef[Paws::KinesisVideo::StreamInfo]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::ListStreamsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, the call returns this element with a
token. To get the next batch of streams, use this token in your next
request.


=head2 StreamInfoList => ArrayRef[L<Paws::KinesisVideo::StreamInfo>]

An array of C<StreamInfo> objects.


=head2 _request_id => Str


=cut

