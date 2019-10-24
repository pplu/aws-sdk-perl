# Generated from default/object.tt
package Paws::MediaLive::AudioDescription;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaLive::Types qw/MediaLive_AudioCodecSettings MediaLive_RemixSettings MediaLive_AudioNormalizationSettings/;
  has AudioNormalizationSettings => (is => 'ro', isa => MediaLive_AudioNormalizationSettings);
  has AudioSelectorName => (is => 'ro', isa => Str, required => 1);
  has AudioType => (is => 'ro', isa => Str);
  has AudioTypeControl => (is => 'ro', isa => Str);
  has CodecSettings => (is => 'ro', isa => MediaLive_AudioCodecSettings);
  has LanguageCode => (is => 'ro', isa => Str);
  has LanguageCodeControl => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str, required => 1);
  has RemixSettings => (is => 'ro', isa => MediaLive_RemixSettings);
  has StreamName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RemixSettings' => {
                                    'class' => 'Paws::MediaLive::RemixSettings',
                                    'type' => 'MediaLive_RemixSettings'
                                  },
               'AudioSelectorName' => {
                                        'type' => 'Str'
                                      },
               'AudioTypeControl' => {
                                       'type' => 'Str'
                                     },
               'AudioNormalizationSettings' => {
                                                 'class' => 'Paws::MediaLive::AudioNormalizationSettings',
                                                 'type' => 'MediaLive_AudioNormalizationSettings'
                                               },
               'LanguageCodeControl' => {
                                          'type' => 'Str'
                                        },
               'AudioType' => {
                                'type' => 'Str'
                              },
               'CodecSettings' => {
                                    'class' => 'Paws::MediaLive::AudioCodecSettings',
                                    'type' => 'MediaLive_AudioCodecSettings'
                                  },
               'LanguageCode' => {
                                   'type' => 'Str'
                                 },
               'StreamName' => {
                                 'type' => 'Str'
                               },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'RemixSettings' => 'remixSettings',
                       'AudioSelectorName' => 'audioSelectorName',
                       'AudioTypeControl' => 'audioTypeControl',
                       'AudioNormalizationSettings' => 'audioNormalizationSettings',
                       'LanguageCodeControl' => 'languageCodeControl',
                       'AudioType' => 'audioType',
                       'CodecSettings' => 'codecSettings',
                       'LanguageCode' => 'languageCode',
                       'StreamName' => 'streamName',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'AudioSelectorName' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::AudioDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::AudioDescription object:

  $service_obj->Method(Att1 => { AudioNormalizationSettings => $value, ..., StreamName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::AudioDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioNormalizationSettings

=head1 DESCRIPTION

Audio Description

=head1 ATTRIBUTES


=head2 AudioNormalizationSettings => MediaLive_AudioNormalizationSettings

  Advanced audio normalization settings.


=head2 B<REQUIRED> AudioSelectorName => Str

  The name of the AudioSelector used as the source for this
AudioDescription.


=head2 AudioType => Str

  Applies only if audioTypeControl is useConfigured. The values for
audioType are defined in ISO-IEC 13818-1.


=head2 AudioTypeControl => Str

  Determines how audio type is determined. followInput: If the input
contains an ISO 639 audioType, then that value is passed through to the
output. If the input contains no ISO 639 audioType, the value in Audio
Type is included in the output. useConfigured: The value in Audio Type
is included in the output. Note that this field and audioType are both
ignored if inputType is broadcasterMixedAd.


=head2 CodecSettings => MediaLive_AudioCodecSettings

  Audio codec settings.


=head2 LanguageCode => Str

  Indicates the language of the audio output track. Only used if
languageControlMode is useConfigured, or there is no ISO 639 language
code specified in the input.


=head2 LanguageCodeControl => Str

  Choosing followInput will cause the ISO 639 language code of the output
to follow the ISO 639 language code of the input. The languageCode will
be used when useConfigured is set, or when followInput is selected but
there is no ISO 639 language code specified by the input.


=head2 B<REQUIRED> Name => Str

  The name of this AudioDescription. Outputs will use this name to
uniquely identify this AudioDescription. Description names should be
unique within this Live Event.


=head2 RemixSettings => MediaLive_RemixSettings

  Settings that control how input audio channels are remixed into the
output audio channels.


=head2 StreamName => Str

  Used for MS Smooth and Apple HLS outputs. Indicates the name displayed
by the player (eg. English, or Director Commentary).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

