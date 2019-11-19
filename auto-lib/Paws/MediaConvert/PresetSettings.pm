# Generated from default/object.tt
package Paws::MediaConvert::PresetSettings;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::MediaConvert::Types qw/MediaConvert_VideoDescription MediaConvert_AudioDescription MediaConvert_ContainerSettings MediaConvert_CaptionDescriptionPreset/;
  has AudioDescriptions => (is => 'ro', isa => ArrayRef[MediaConvert_AudioDescription]);
  has CaptionDescriptions => (is => 'ro', isa => ArrayRef[MediaConvert_CaptionDescriptionPreset]);
  has ContainerSettings => (is => 'ro', isa => MediaConvert_ContainerSettings);
  has VideoDescription => (is => 'ro', isa => MediaConvert_VideoDescription);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContainerSettings' => {
                                        'type' => 'MediaConvert_ContainerSettings',
                                        'class' => 'Paws::MediaConvert::ContainerSettings'
                                      },
               'AudioDescriptions' => {
                                        'class' => 'Paws::MediaConvert::AudioDescription',
                                        'type' => 'ArrayRef[MediaConvert_AudioDescription]'
                                      },
               'VideoDescription' => {
                                       'class' => 'Paws::MediaConvert::VideoDescription',
                                       'type' => 'MediaConvert_VideoDescription'
                                     },
               'CaptionDescriptions' => {
                                          'type' => 'ArrayRef[MediaConvert_CaptionDescriptionPreset]',
                                          'class' => 'Paws::MediaConvert::CaptionDescriptionPreset'
                                        }
             },
  'NameInRequest' => {
                       'ContainerSettings' => 'containerSettings',
                       'AudioDescriptions' => 'audioDescriptions',
                       'VideoDescription' => 'videoDescription',
                       'CaptionDescriptions' => 'captionDescriptions'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::PresetSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::PresetSettings object:

  $service_obj->Method(Att1 => { AudioDescriptions => $value, ..., VideoDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::PresetSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioDescriptions

=head1 DESCRIPTION

Settings for preset

=head1 ATTRIBUTES


=head2 AudioDescriptions => ArrayRef[MediaConvert_AudioDescription]

  (AudioDescriptions) contains groups of audio encoding settings
organized by audio codec. Include one instance of (AudioDescriptions)
per output. (AudioDescriptions) can contain multiple groups of encoding
settings.


=head2 CaptionDescriptions => ArrayRef[MediaConvert_CaptionDescriptionPreset]

  Caption settings for this preset. There can be multiple caption
settings in a single output.


=head2 ContainerSettings => MediaConvert_ContainerSettings

  Container specific settings.


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

