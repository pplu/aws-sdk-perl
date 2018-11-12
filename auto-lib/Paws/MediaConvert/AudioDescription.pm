package Paws::MediaConvert::AudioDescription;
  use Moose;
  has AudioNormalizationSettings => (is => 'ro', isa => 'Paws::MediaConvert::AudioNormalizationSettings', request_name => 'audioNormalizationSettings', traits => ['NameInRequest']);
  has AudioSourceName => (is => 'ro', isa => 'Str', request_name => 'audioSourceName', traits => ['NameInRequest']);
  has AudioType => (is => 'ro', isa => 'Int', request_name => 'audioType', traits => ['NameInRequest']);
  has AudioTypeControl => (is => 'ro', isa => 'Str', request_name => 'audioTypeControl', traits => ['NameInRequest']);
  has CodecSettings => (is => 'ro', isa => 'Paws::MediaConvert::AudioCodecSettings', request_name => 'codecSettings', traits => ['NameInRequest']);
  has CustomLanguageCode => (is => 'ro', isa => 'Str', request_name => 'customLanguageCode', traits => ['NameInRequest']);
  has LanguageCode => (is => 'ro', isa => 'Str', request_name => 'languageCode', traits => ['NameInRequest']);
  has LanguageCodeControl => (is => 'ro', isa => 'Str', request_name => 'languageCodeControl', traits => ['NameInRequest']);
  has RemixSettings => (is => 'ro', isa => 'Paws::MediaConvert::RemixSettings', request_name => 'remixSettings', traits => ['NameInRequest']);
  has StreamName => (is => 'ro', isa => 'Str', request_name => 'streamName', traits => ['NameInRequest']);
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


=head2 AudioNormalizationSettings => L<Paws::MediaConvert::AudioNormalizationSettings>

  


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

  


=head2 CodecSettings => L<Paws::MediaConvert::AudioCodecSettings>

  


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

  


=head2 RemixSettings => L<Paws::MediaConvert::RemixSettings>

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

