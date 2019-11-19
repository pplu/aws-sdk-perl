
package Paws::MediaLive::CreateChannelResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaLive::Types qw/MediaLive_InputSpecification MediaLive_InputAttachment MediaLive_Tags MediaLive_EncoderSettings MediaLive_OutputDestination/;
  has ChannelClass => (is => 'ro', isa => Str);
  has Destinations => (is => 'ro', isa => ArrayRef[MediaLive_OutputDestination]);
  has EncoderSettings => (is => 'ro', isa => MediaLive_EncoderSettings);
  has InputAttachments => (is => 'ro', isa => ArrayRef[MediaLive_InputAttachment]);
  has InputSpecification => (is => 'ro', isa => MediaLive_InputSpecification);
  has LogLevel => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has RequestId => (is => 'ro', isa => Str);
  has Reserved => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => MediaLive_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InputAttachments' => {
                                       'class' => 'Paws::MediaLive::InputAttachment',
                                       'type' => 'ArrayRef[MediaLive_InputAttachment]'
                                     },
               'RequestId' => {
                                'type' => 'Str'
                              },
               'Reserved' => {
                               'type' => 'Str'
                             },
               'Name' => {
                           'type' => 'Str'
                         },
               'LogLevel' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InputSpecification' => {
                                         'type' => 'MediaLive_InputSpecification',
                                         'class' => 'Paws::MediaLive::InputSpecification'
                                       },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'ChannelClass' => {
                                   'type' => 'Str'
                                 },
               'Tags' => {
                           'type' => 'MediaLive_Tags',
                           'class' => 'Paws::MediaLive::Tags'
                         },
               'Destinations' => {
                                   'type' => 'ArrayRef[MediaLive_OutputDestination]',
                                   'class' => 'Paws::MediaLive::OutputDestination'
                                 },
               'EncoderSettings' => {
                                      'type' => 'MediaLive_EncoderSettings',
                                      'class' => 'Paws::MediaLive::EncoderSettings'
                                    }
             },
  'NameInRequest' => {
                       'InputSpecification' => 'inputSpecification',
                       'RoleArn' => 'roleArn',
                       'ChannelClass' => 'channelClass',
                       'Tags' => 'tags',
                       'Destinations' => 'destinations',
                       'EncoderSettings' => 'encoderSettings',
                       'InputAttachments' => 'inputAttachments',
                       'RequestId' => 'requestId',
                       'Reserved' => 'reserved',
                       'Name' => 'name',
                       'LogLevel' => 'logLevel'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CreateChannelResponse

=head1 ATTRIBUTES


=head2 ChannelClass => Str

The class for this channel. STANDARD for a channel with two pipelines
or SINGLE_PIPELINE for a channel with one pipeline.

Valid values are: C<"STANDARD">, C<"SINGLE_PIPELINE">
=head2 Destinations => ArrayRef[MediaLive_OutputDestination]




=head2 EncoderSettings => MediaLive_EncoderSettings




=head2 InputAttachments => ArrayRef[MediaLive_InputAttachment]

List of input attachments for channel.


=head2 InputSpecification => MediaLive_InputSpecification

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


=head2 Tags => MediaLive_Tags

A collection of key-value pairs.


=head2 _request_id => Str


=cut

