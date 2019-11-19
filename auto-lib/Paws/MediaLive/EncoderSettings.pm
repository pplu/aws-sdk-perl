# Generated from default/object.tt
package Paws::MediaLive::EncoderSettings;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::MediaLive::Types qw/MediaLive_TimecodeConfig MediaLive_VideoDescription MediaLive_AvailConfiguration MediaLive_AudioDescription MediaLive_CaptionDescription MediaLive_OutputGroup MediaLive_AvailBlanking MediaLive_BlackoutSlate MediaLive_GlobalConfiguration/;
  has AudioDescriptions => (is => 'ro', isa => ArrayRef[MediaLive_AudioDescription], required => 1);
  has AvailBlanking => (is => 'ro', isa => MediaLive_AvailBlanking);
  has AvailConfiguration => (is => 'ro', isa => MediaLive_AvailConfiguration);
  has BlackoutSlate => (is => 'ro', isa => MediaLive_BlackoutSlate);
  has CaptionDescriptions => (is => 'ro', isa => ArrayRef[MediaLive_CaptionDescription]);
  has GlobalConfiguration => (is => 'ro', isa => MediaLive_GlobalConfiguration);
  has OutputGroups => (is => 'ro', isa => ArrayRef[MediaLive_OutputGroup], required => 1);
  has TimecodeConfig => (is => 'ro', isa => MediaLive_TimecodeConfig, required => 1);
  has VideoDescriptions => (is => 'ro', isa => ArrayRef[MediaLive_VideoDescription], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GlobalConfiguration' => {
                                          'type' => 'MediaLive_GlobalConfiguration',
                                          'class' => 'Paws::MediaLive::GlobalConfiguration'
                                        },
               'AudioDescriptions' => {
                                        'type' => 'ArrayRef[MediaLive_AudioDescription]',
                                        'class' => 'Paws::MediaLive::AudioDescription'
                                      },
               'TimecodeConfig' => {
                                     'class' => 'Paws::MediaLive::TimecodeConfig',
                                     'type' => 'MediaLive_TimecodeConfig'
                                   },
               'OutputGroups' => {
                                   'class' => 'Paws::MediaLive::OutputGroup',
                                   'type' => 'ArrayRef[MediaLive_OutputGroup]'
                                 },
               'CaptionDescriptions' => {
                                          'class' => 'Paws::MediaLive::CaptionDescription',
                                          'type' => 'ArrayRef[MediaLive_CaptionDescription]'
                                        },
               'VideoDescriptions' => {
                                        'type' => 'ArrayRef[MediaLive_VideoDescription]',
                                        'class' => 'Paws::MediaLive::VideoDescription'
                                      },
               'AvailBlanking' => {
                                    'class' => 'Paws::MediaLive::AvailBlanking',
                                    'type' => 'MediaLive_AvailBlanking'
                                  },
               'BlackoutSlate' => {
                                    'class' => 'Paws::MediaLive::BlackoutSlate',
                                    'type' => 'MediaLive_BlackoutSlate'
                                  },
               'AvailConfiguration' => {
                                         'type' => 'MediaLive_AvailConfiguration',
                                         'class' => 'Paws::MediaLive::AvailConfiguration'
                                       }
             },
  'IsRequired' => {
                    'OutputGroups' => 1,
                    'TimecodeConfig' => 1,
                    'AudioDescriptions' => 1,
                    'VideoDescriptions' => 1
                  },
  'NameInRequest' => {
                       'OutputGroups' => 'outputGroups',
                       'TimecodeConfig' => 'timecodeConfig',
                       'AudioDescriptions' => 'audioDescriptions',
                       'GlobalConfiguration' => 'globalConfiguration',
                       'AvailConfiguration' => 'availConfiguration',
                       'BlackoutSlate' => 'blackoutSlate',
                       'AvailBlanking' => 'availBlanking',
                       'VideoDescriptions' => 'videoDescriptions',
                       'CaptionDescriptions' => 'captionDescriptions'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::EncoderSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::EncoderSettings object:

  $service_obj->Method(Att1 => { AudioDescriptions => $value, ..., VideoDescriptions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::EncoderSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioDescriptions

=head1 DESCRIPTION

Encoder Settings

=head1 ATTRIBUTES


=head2 B<REQUIRED> AudioDescriptions => ArrayRef[MediaLive_AudioDescription]

  


=head2 AvailBlanking => MediaLive_AvailBlanking

  Settings for ad avail blanking.


=head2 AvailConfiguration => MediaLive_AvailConfiguration

  Event-wide configuration settings for ad avail insertion.


=head2 BlackoutSlate => MediaLive_BlackoutSlate

  Settings for blackout slate.


=head2 CaptionDescriptions => ArrayRef[MediaLive_CaptionDescription]

  Settings for caption decriptions


=head2 GlobalConfiguration => MediaLive_GlobalConfiguration

  Configuration settings that apply to the event as a whole.


=head2 B<REQUIRED> OutputGroups => ArrayRef[MediaLive_OutputGroup]

  


=head2 B<REQUIRED> TimecodeConfig => MediaLive_TimecodeConfig

  Contains settings used to acquire and adjust timecode information from
inputs.


=head2 B<REQUIRED> VideoDescriptions => ArrayRef[MediaLive_VideoDescription]

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

