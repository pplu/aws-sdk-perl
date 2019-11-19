
package Paws::MediaLive::UpdateChannelResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaLive::Types qw/MediaLive_InputAttachment MediaLive_InputSpecification MediaLive_EncoderSettings MediaLive_OutputDestination/;
  has Destinations => (is => 'ro', isa => ArrayRef[MediaLive_OutputDestination]);
  has EncoderSettings => (is => 'ro', isa => MediaLive_EncoderSettings);
  has InputAttachments => (is => 'ro', isa => ArrayRef[MediaLive_InputAttachment]);
  has InputSpecification => (is => 'ro', isa => MediaLive_InputSpecification);
  has LogLevel => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InputSpecification' => {
                                         'class' => 'Paws::MediaLive::InputSpecification',
                                         'type' => 'MediaLive_InputSpecification'
                                       },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'InputAttachments' => {
                                       'class' => 'Paws::MediaLive::InputAttachment',
                                       'type' => 'ArrayRef[MediaLive_InputAttachment]'
                                     },
               'Name' => {
                           'type' => 'Str'
                         },
               'EncoderSettings' => {
                                      'type' => 'MediaLive_EncoderSettings',
                                      'class' => 'Paws::MediaLive::EncoderSettings'
                                    },
               'Destinations' => {
                                   'type' => 'ArrayRef[MediaLive_OutputDestination]',
                                   'class' => 'Paws::MediaLive::OutputDestination'
                                 },
               'LogLevel' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'InputAttachments' => 'inputAttachments',
                       'RoleArn' => 'roleArn',
                       'InputSpecification' => 'inputSpecification',
                       'LogLevel' => 'logLevel',
                       'EncoderSettings' => 'encoderSettings',
                       'Destinations' => 'destinations',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateChannelResponse

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[MediaLive_OutputDestination]

A list of output destinations for this channel.


=head2 EncoderSettings => MediaLive_EncoderSettings

The encoder settings for this channel.


=head2 InputAttachments => ArrayRef[MediaLive_InputAttachment]




=head2 InputSpecification => MediaLive_InputSpecification

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

