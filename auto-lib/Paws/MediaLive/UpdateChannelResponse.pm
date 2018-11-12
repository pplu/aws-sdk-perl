
package Paws::MediaLive::UpdateChannelResponse;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::OutputDestination]', traits => ['NameInRequest'], request_name => 'destinations');
  has EncoderSettings => (is => 'ro', isa => 'Paws::MediaLive::EncoderSettings', traits => ['NameInRequest'], request_name => 'encoderSettings');
  has InputAttachments => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputAttachment]', traits => ['NameInRequest'], request_name => 'inputAttachments');
  has InputSpecification => (is => 'ro', isa => 'Paws::MediaLive::InputSpecification', traits => ['NameInRequest'], request_name => 'inputSpecification');
  has LogLevel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logLevel');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateChannelResponse

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[L<Paws::MediaLive::OutputDestination>]

A list of output destinations for this channel.


=head2 EncoderSettings => L<Paws::MediaLive::EncoderSettings>

The encoder settings for this channel.


=head2 InputAttachments => ArrayRef[L<Paws::MediaLive::InputAttachment>]




=head2 InputSpecification => L<Paws::MediaLive::InputSpecification>

Specification of input for this channel (max. bitrate, resolution,
codec, etc.)


=head2 LogLevel => Str

The log level to write to CloudWatch Logs.

Valid values are: C<"ERROR">, C<"WARNING">, C<"INFO">, C<"DEBUG">, C<"DISABLED">
=head2 Name => Str

The name of the channel.


=head2 RoleArn => Str

An optional Amazon Resource Name (ARN) of the role to assume when
running the Channel. If you do not specify this on an update call but
the role was previously set that role will be removed.


=head2 _request_id => Str


=cut

