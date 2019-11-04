# Generated from default/object.tt
package Paws::MediaConvert::AudioDescription;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::MediaConvert::Types qw/MediaConvert_AudioCodecSettings MediaConvert_AudioNormalizationSettings MediaConvert_RemixSettings/;
  has AudioNormalizationSettings => (is => 'ro', isa => MediaConvert_AudioNormalizationSettings);
  has AudioSourceName => (is => 'ro', isa => Str);
  has AudioType => (is => 'ro', isa => Int);
  has AudioTypeControl => (is => 'ro', isa => Str);
  has CodecSettings => (is => 'ro', isa => MediaConvert_AudioCodecSettings);
  has CustomLanguageCode => (is => 'ro', isa => Str);
  has LanguageCode => (is => 'ro', isa => Str);
  has LanguageCodeControl => (is => 'ro', isa => Str);
  has RemixSettings => (is => 'ro', isa => MediaConvert_RemixSettings);
  has StreamName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RemixSettings' => {
                                    'class' => 'Paws::MediaConvert::RemixSettings',
                                    'type' => 'MediaConvert_RemixSettings'
                                  },
               'AudioTypeControl' => {
                                       'type' => 'Str'
                                     },
               'AudioNormalizationSettings' => {
                                                 'class' => 'Paws::MediaConvert::AudioNormalizationSettings',
                                                 'type' => 'MediaConvert_AudioNormalizationSettings'
                                               },
               'LanguageCodeControl' => {
                                          'type' => 'Str'
                                        },
               'AudioSourceName' => {
                                      'type' => 'Str'
                                    },
               'CustomLanguageCode' => {
                                         'type' => 'Str'
                                       },
               'AudioType' => {
                                'type' => 'Int'
                              },
               'CodecSettings' => {
                                    'class' => 'Paws::MediaConvert::AudioCodecSettings',
                                    'type' => 'MediaConvert_AudioCodecSettings'
                                  },
               'LanguageCode' => {
                                   'type' => 'Str'
                                 },
               'StreamName' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'RemixSettings' => 'remixSettings',
                       'AudioTypeControl' => 'audioTypeControl',
                       'AudioNormalizationSettings' => 'audioNormalizationSettings',
                       'LanguageCodeControl' => 'languageCodeControl',
                       'AudioSourceName' => 'audioSourceName',
                       'CustomLanguageCode' => 'customLanguageCode',
                       'AudioType' => 'audioType',
                       'CodecSettings' => 'codecSettings',
                       'LanguageCode' => 'languageCode',
                       'StreamName' => 'streamName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::AudioDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::AudioDescription object:

  $service_obj->Method(Att1 => { AudioNormalizationSettings => $value, ..., StreamName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::AudioDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioNormalizationSettings

=head1 DESCRIPTION

Description of audio output

=head1 ATTRIBUTES


=head2 AudioNormalizationSettings => MediaConvert_AudioNormalizationSettings

  Advanced audio normalization settings. Ignore these settings unless you
need to comply with a loudness standard.


=head2 AudioSourceName => Str

  Specifies which audio data to use from each input. In the simplest
case, specify an "Audio Selector":#inputs-audio_selector by name based
on its order within each input. For example if you specify "Audio
Selector 3", then the third audio selector will be used from each
input. If an input does not have an "Audio Selector 3", then the audio
selector marked as "default" in that input will be used. If there is no
audio selector marked as "default", silence will be inserted for the
duration of that input. Alternatively, an "Audio Selector
Group":#inputs-audio_selector_group name may be specified, with similar
default/silence behavior. If no audio_source_name is specified, then
"Audio Selector 1" will be chosen automatically.


=head2 AudioType => Int

  Applies only if Follow Input Audio Type is unchecked (false). A number
between 0 and 255. The following are defined in ISO-IEC 13818-1: 0 =
Undefined, 1 = Clean Effects, 2 = Hearing Impaired, 3 = Visually
Impaired Commentary, 4-255 = Reserved.


=head2 AudioTypeControl => Str

  When set to FOLLOW_INPUT, if the input contains an ISO 639 audio_type,
then that value is passed through to the output. If the input contains
no ISO 639 audio_type, the value in Audio Type is included in the
output. Otherwise the value in Audio Type is included in the output.
Note that this field and audioType are both ignored if
audioDescriptionBroadcasterMix is set to BROADCASTER_MIXED_AD.


=head2 CodecSettings => MediaConvert_AudioCodecSettings

  Audio codec settings (CodecSettings) under (AudioDescriptions) contains
the group of settings related to audio encoding. The settings in this
group vary depending on the value that you choose for Audio codec
(Codec). For each codec enum that you choose, define the corresponding
settings object. The following lists the codec enum, settings object
pairs. * AAC, AacSettings * MP2, Mp2Settings * WAV, WavSettings * AIFF,
AiffSettings * AC3, Ac3Settings * EAC3, Eac3Settings * EAC3_ATMOS,
Eac3AtmosSettings


=head2 CustomLanguageCode => Str

  Specify the language for this audio output track, using the ISO 639-2
or ISO 639-3 three-letter language code. The language specified will be
used when 'Follow Input Language Code' is not selected or when 'Follow
Input Language Code' is selected but there is no ISO 639 language code
specified by the input.


=head2 LanguageCode => Str

  Indicates the language of the audio output track. The ISO 639 language
specified in the 'Language Code' drop down will be used when 'Follow
Input Language Code' is not selected or when 'Follow Input Language
Code' is selected but there is no ISO 639 language code specified by
the input.


=head2 LanguageCodeControl => Str

  Choosing FOLLOW_INPUT will cause the ISO 639 language code of the
output to follow the ISO 639 language code of the input. The language
specified for languageCode' will be used when USE_CONFIGURED is
selected or when FOLLOW_INPUT is selected but there is no ISO 639
language code specified by the input.


=head2 RemixSettings => MediaConvert_RemixSettings

  Advanced audio remixing settings.


=head2 StreamName => Str

  Used for MS Smooth and Apple HLS outputs. Indicates the name displayed
by the player (eg. English, or Director Commentary). Alphanumeric
characters, spaces, and underscore are legal.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

