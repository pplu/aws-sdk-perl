
package Paws::MediaLive::CreateChannelResponse;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::OutputDestination]', traits => ['NameInRequest'], request_name => 'destinations');
  has EncoderSettings => (is => 'ro', isa => 'Paws::MediaLive::EncoderSettings', traits => ['NameInRequest'], request_name => 'encoderSettings');
  has InputAttachments => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputAttachment]', traits => ['NameInRequest'], request_name => 'inputAttachments');
  has InputSpecification => (is => 'ro', isa => 'Paws::MediaLive::InputSpecification', traits => ['NameInRequest'], request_name => 'inputSpecification');
  has LogLevel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logLevel');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');
  has Reserved => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reserved');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Tags => (is => 'ro', isa => 'Paws::MediaLive::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CreateChannelResponse

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[L<Paws::MediaLive::OutputDestination>]




=head2 EncoderSettings => L<Paws::MediaLive::EncoderSettings>




=head2 InputAttachments => ArrayRef[L<Paws::MediaLive::InputAttachment>]

List of input attachments for channel.


=head2 InputSpecification => L<Paws::MediaLive::InputSpecification>

Specification of input for this channel (max. bitrate, resolution,
codec, etc.)


=head2 LogLevel => Str

The log level to write to CloudWatch Logs.

Valid values are: C<"ERROR">, C<"WARNING">, C<"INFO">, C<"DEBUG">, C<"DISABLED">
=head2 Name => Str

Name of channel.


=head2 RequestId => Str

Unique request ID to be specified. This is needed to prevent retries
from creating multiple resources.


=head2 Reserved => Str

Deprecated field that's only usable by whitelisted customers.


=head2 RoleArn => Str

An optional Amazon Resource Name (ARN) of the role to assume when
running the Channel.


=head2 Tags => L<Paws::MediaLive::Tags>

A collection of key-value pairs.


=head2 _request_id => Str


=cut

