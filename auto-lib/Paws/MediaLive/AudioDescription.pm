package Paws::MediaLive::AudioDescription;
  use Moose;
  has AudioNormalizationSettings => (is => 'ro', isa => 'Paws::MediaLive::AudioNormalizationSettings', request_name => 'audioNormalizationSettings', traits => ['NameInRequest']);
  has AudioSelectorName => (is => 'ro', isa => 'Str', request_name => 'audioSelectorName', traits => ['NameInRequest'], required => 1);
  has AudioType => (is => 'ro', isa => 'Str', request_name => 'audioType', traits => ['NameInRequest']);
  has AudioTypeControl => (is => 'ro', isa => 'Str', request_name => 'audioTypeControl', traits => ['NameInRequest']);
  has CodecSettings => (is => 'ro', isa => 'Paws::MediaLive::AudioCodecSettings', request_name => 'codecSettings', traits => ['NameInRequest']);
  has LanguageCode => (is => 'ro', isa => 'Str', request_name => 'languageCode', traits => ['NameInRequest']);
  has LanguageCodeControl => (is => 'ro', isa => 'Str', request_name => 'languageCodeControl', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has RemixSettings => (is => 'ro', isa => 'Paws::MediaLive::RemixSettings', request_name => 'remixSettings', traits => ['NameInRequest']);
  has StreamName => (is => 'ro', isa => 'Str', request_name => 'streamName', traits => ['NameInRequest']);
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

Placeholder documentation for AudioDescription

=head1 ATTRIBUTES


=head2 AudioNormalizationSettings => L<Paws::MediaLive::AudioNormalizationSettings>

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


=head2 CodecSettings => L<Paws::MediaLive::AudioCodecSettings>

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


=head2 RemixSettings => L<Paws::MediaLive::RemixSettings>

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

