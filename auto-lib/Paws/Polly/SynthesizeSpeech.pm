
package Paws::Polly::SynthesizeSpeech;
  use Moose;
  has Engine => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has LexiconNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OutputFormat => (is => 'ro', isa => 'Str', required => 1);
  has SampleRate => (is => 'ro', isa => 'Str');
  has SpeechMarkTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Text => (is => 'ro', isa => 'Str', required => 1);
  has TextType => (is => 'ro', isa => 'Str');
  has VoiceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SynthesizeSpeech');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/speech');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Polly::SynthesizeSpeechOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::SynthesizeSpeech - Arguments for method SynthesizeSpeech on L<Paws::Polly>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SynthesizeSpeech on the
L<Amazon Polly|Paws::Polly> service. Use the attributes of this class
as arguments to method SynthesizeSpeech.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SynthesizeSpeech.

=head1 SYNOPSIS

    my $polly = Paws->service('Polly');
    # To synthesize speech
    # Synthesizes plain text or SSML into a file of human-like speech.
    my $SynthesizeSpeechOutput = $polly->SynthesizeSpeech(
      'LexiconNames' => ['example'],
      'OutputFormat' => 'mp3',
      'SampleRate'   => 8000,
      'Text'         => 'All Gaul is divided into three parts',
      'TextType'     => 'text',
      'VoiceId'      => 'Joanna'
    );

    # Results:
    my $AudioStream       = $SynthesizeSpeechOutput->AudioStream;
    my $ContentType       = $SynthesizeSpeechOutput->ContentType;
    my $RequestCharacters = $SynthesizeSpeechOutput->RequestCharacters;

    # Returns a L<Paws::Polly::SynthesizeSpeechOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/polly/SynthesizeSpeech>

=head1 ATTRIBUTES


=head2 Engine => Str

Specifies the engine (C<standard> or C<neural>) for Amazon Polly to use
when processing input text for speech synthesis. For information on
Amazon Polly voices and which voices are available in standard-only,
NTTS-only, and both standard and NTTS formats, see Available Voices
(https://docs.aws.amazon.com/polly/latest/dg/voicelist.html).

B<NTTS-only voices>

When using NTTS-only voices such as Kevin (en-US), this parameter is
required and must be set to C<neural>. If the engine is not specified,
or is set to C<standard>, this will result in an error.

Type: String

Valid Values: C<standard> | C<neural>

Required: Yes

B<Standard voices>

For standard voices, this is not required; the engine parameter
defaults to C<standard>. If the engine is not specified, or is set to
C<standard> and an NTTS-only voice is selected, this will result in an
error.

Valid values are: C<"standard">, C<"neural">

=head2 LanguageCode => Str

Optional language code for the Synthesize Speech request. This is only
necessary if using a bilingual voice, such as Aditi, which can be used
for either Indian English (en-IN) or Hindi (hi-IN).

If a bilingual voice is used and no language code is specified, Amazon
Polly will use the default language of the bilingual voice. The default
language for any voice is the one returned by the DescribeVoices
(https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html)
operation for the C<LanguageCode> parameter. For example, if no
language code is specified, Aditi will use Indian English rather than
Hindi.

Valid values are: C<"arb">, C<"cmn-CN">, C<"cy-GB">, C<"da-DK">, C<"de-DE">, C<"en-AU">, C<"en-GB">, C<"en-GB-WLS">, C<"en-IN">, C<"en-US">, C<"es-ES">, C<"es-MX">, C<"es-US">, C<"fr-CA">, C<"fr-FR">, C<"is-IS">, C<"it-IT">, C<"ja-JP">, C<"hi-IN">, C<"ko-KR">, C<"nb-NO">, C<"nl-NL">, C<"pl-PL">, C<"pt-BR">, C<"pt-PT">, C<"ro-RO">, C<"ru-RU">, C<"sv-SE">, C<"tr-TR">

=head2 LexiconNames => ArrayRef[Str|Undef]

List of one or more pronunciation lexicon names you want the service to
apply during synthesis. Lexicons are applied only if the language of
the lexicon is the same as the language of the voice. For information
about storing lexicons, see PutLexicon
(https://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html).



=head2 B<REQUIRED> OutputFormat => Str

The format in which the returned output will be encoded. For audio
stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this
will be json.

When pcm is used, the content returned is audio/pcm in a signed 16-bit,
1 channel (mono), little-endian format.

Valid values are: C<"json">, C<"mp3">, C<"ogg_vorbis">, C<"pcm">

=head2 SampleRate => Str

The audio frequency specified in Hz.

The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050",
and "24000". The default value for standard voices is "22050". The
default value for neural voices is "24000".

Valid values for pcm are "8000" and "16000" The default value is
"16000".



=head2 SpeechMarkTypes => ArrayRef[Str|Undef]

The type of speech marks returned for the input text.



=head2 B<REQUIRED> Text => Str

Input text to synthesize. If you specify C<ssml> as the C<TextType>,
follow the SSML format for the input text.



=head2 TextType => Str

Specifies whether the input text is plain text or SSML. The default
value is plain text. For more information, see Using SSML
(https://docs.aws.amazon.com/polly/latest/dg/ssml.html).

Valid values are: C<"ssml">, C<"text">

=head2 B<REQUIRED> VoiceId => Str

Voice ID to use for the synthesis. You can get a list of available
voice IDs by calling the DescribeVoices
(https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html)
operation.

Valid values are: C<"Aditi">, C<"Amy">, C<"Astrid">, C<"Bianca">, C<"Brian">, C<"Camila">, C<"Carla">, C<"Carmen">, C<"Celine">, C<"Chantal">, C<"Conchita">, C<"Cristiano">, C<"Dora">, C<"Emma">, C<"Enrique">, C<"Ewa">, C<"Filiz">, C<"Geraint">, C<"Giorgio">, C<"Gwyneth">, C<"Hans">, C<"Ines">, C<"Ivy">, C<"Jacek">, C<"Jan">, C<"Joanna">, C<"Joey">, C<"Justin">, C<"Karl">, C<"Kendra">, C<"Kevin">, C<"Kimberly">, C<"Lea">, C<"Liv">, C<"Lotte">, C<"Lucia">, C<"Lupe">, C<"Mads">, C<"Maja">, C<"Marlene">, C<"Mathieu">, C<"Matthew">, C<"Maxim">, C<"Mia">, C<"Miguel">, C<"Mizuki">, C<"Naja">, C<"Nicole">, C<"Olivia">, C<"Penelope">, C<"Raveena">, C<"Ricardo">, C<"Ruben">, C<"Russell">, C<"Salli">, C<"Seoyeon">, C<"Takumi">, C<"Tatyana">, C<"Vicki">, C<"Vitoria">, C<"Zeina">, C<"Zhiyu">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SynthesizeSpeech in L<Paws::Polly>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

