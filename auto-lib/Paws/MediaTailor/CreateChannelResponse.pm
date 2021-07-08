
package Paws::MediaTailor::CreateChannelResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has ChannelName => (is => 'ro', isa => 'Str');
  has ChannelState => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::ResponseOutputItem]');
  has PlaybackMode => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::MediaTailor::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::CreateChannelResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the channel.


=head2 ChannelName => Str

The name of the channel.


=head2 ChannelState => Str

Indicates whether the channel is in a running state or not.

Valid values are: C<"RUNNING">, C<"STOPPED">
=head2 CreationTime => Str

The timestamp of when the channel was created.


=head2 LastModifiedTime => Str

The timestamp of when the channel was last modified.


=head2 Outputs => ArrayRef[L<Paws::MediaTailor::ResponseOutputItem>]

The channel's output properties.


=head2 PlaybackMode => Str

The type of playback for this channel. The only supported value is
LOOP.


=head2 Tags => L<Paws::MediaTailor::__mapOf__string>

The tags assigned to the channel.


=head2 _request_id => Str


=cut

