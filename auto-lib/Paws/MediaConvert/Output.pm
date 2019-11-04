# Generated from default/object.tt
package Paws::MediaConvert::Output;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::MediaConvert::Types qw/MediaConvert_ContainerSettings MediaConvert_AudioDescription MediaConvert_VideoDescription MediaConvert_CaptionDescription MediaConvert_OutputSettings/;
  has AudioDescriptions => (is => 'ro', isa => ArrayRef[MediaConvert_AudioDescription]);
  has CaptionDescriptions => (is => 'ro', isa => ArrayRef[MediaConvert_CaptionDescription]);
  has ContainerSettings => (is => 'ro', isa => MediaConvert_ContainerSettings);
  has Extension => (is => 'ro', isa => Str);
  has NameModifier => (is => 'ro', isa => Str);
  has OutputSettings => (is => 'ro', isa => MediaConvert_OutputSettings);
  has Preset => (is => 'ro', isa => Str);
  has VideoDescription => (is => 'ro', isa => MediaConvert_VideoDescription);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CaptionDescriptions' => {
                                          'class' => 'Paws::MediaConvert::CaptionDescription',
                                          'type' => 'ArrayRef[MediaConvert_CaptionDescription]'
                                        },
               'AudioDescriptions' => {
                                        'class' => 'Paws::MediaConvert::AudioDescription',
                                        'type' => 'ArrayRef[MediaConvert_AudioDescription]'
                                      },
               'NameModifier' => {
                                   'type' => 'Str'
                                 },
               'OutputSettings' => {
                                     'class' => 'Paws::MediaConvert::OutputSettings',
                                     'type' => 'MediaConvert_OutputSettings'
                                   },
               'Extension' => {
                                'type' => 'Str'
                              },
               'Preset' => {
                             'type' => 'Str'
                           },
               'VideoDescription' => {
                                       'class' => 'Paws::MediaConvert::VideoDescription',
                                       'type' => 'MediaConvert_VideoDescription'
                                     },
               'ContainerSettings' => {
                                        'class' => 'Paws::MediaConvert::ContainerSettings',
                                        'type' => 'MediaConvert_ContainerSettings'
                                      }
             },
  'NameInRequest' => {
                       'CaptionDescriptions' => 'captionDescriptions',
                       'AudioDescriptions' => 'audioDescriptions',
                       'NameModifier' => 'nameModifier',
                       'OutputSettings' => 'outputSettings',
                       'Extension' => 'extension',
                       'Preset' => 'preset',
                       'VideoDescription' => 'videoDescription',
                       'ContainerSettings' => 'containerSettings'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Output

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Output object:

  $service_obj->Method(Att1 => { AudioDescriptions => $value, ..., VideoDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Output object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioDescriptions

=head1 DESCRIPTION

An output object describes the settings for a single output file or
stream in an output group.

=head1 ATTRIBUTES


=head2 AudioDescriptions => ArrayRef[MediaConvert_AudioDescription]

  (AudioDescriptions) contains groups of audio encoding settings
organized by audio codec. Include one instance of (AudioDescriptions)
per output. (AudioDescriptions) can contain multiple groups of encoding
settings.


=head2 CaptionDescriptions => ArrayRef[MediaConvert_CaptionDescription]

  (CaptionDescriptions) contains groups of captions settings. For each
output that has captions, include one instance of
(CaptionDescriptions). (CaptionDescriptions) can contain multiple
groups of captions settings.


=head2 ContainerSettings => MediaConvert_ContainerSettings

  Container specific settings.


=head2 Extension => Str

  Use Extension (Extension) to specify the file extension for outputs in
File output groups. If you do not specify a value, the service will use
default extensions by container type as follows * MPEG-2 transport
stream, m2ts * Quicktime, mov * MXF container, mxf * MPEG-4 container,
mp4 * No Container, the service will use codec extensions (e.g. AAC,
H265, H265, AC3)


=head2 NameModifier => Str

  Use Name modifier (NameModifier) to have the service add a string to
the end of each output filename. You specify the base filename as part
of your destination URI. When you create multiple outputs in the same
output group, Name modifier (NameModifier) is required. Name modifier
also accepts format identifiers. For DASH ISO outputs, if you use the
format identifiers $Number$ or $Time$ in one output, you must use them
in the same way in all outputs of the output group.


=head2 OutputSettings => MediaConvert_OutputSettings

  Specific settings for this type of output.


=head2 Preset => Str

  Use Preset (Preset) to specifiy a preset for your transcoding settings.
Provide the system or custom preset name. You can specify either Preset
(Preset) or Container settings (ContainerSettings), but not both.


=head2 VideoDescription => MediaConvert_VideoDescription

  (VideoDescription) contains a group of video encoding settings. The
specific video settings depend on the video codec that you choose when
you specify a value for Video codec (codec). Include one instance of
(VideoDescription) per output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

