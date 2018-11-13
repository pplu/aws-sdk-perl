
package Paws::Polly::SynthesizeSpeech;
  use Moose;
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
      {
        'LexiconNames' => ['example'],
        'OutputFormat' => 'mp3',
        'SampleRate'   => 8000,
        'Text'         => 'All Gaul is divided into three parts',
        'TextType'     => 'text',
        'VoiceId'      => 'Joanna'
      }
    );

    # Results:
    my $AudioStream       = $SynthesizeSpeechOutput->AudioStream;
    my $ContentType       = $SynthesizeSpeechOutput->ContentType;
    my $RequestCharacters = $SynthesizeSpeechOutput->RequestCharacters;

    # Returns a L<Paws::Polly::SynthesizeSpeechOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/polly/SynthesizeSpeech>

=head1 ATTRIBUTES


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

Valid values are: C<"cmn-CN">, C<"cy-GB">, C<"da-DK">, C<"de-DE">, C<"en-AU">, C<"en-GB">, C<"en-GB-WLS">, C<"en-IN">, C<"en-US">, C<"es-ES">, C<"es-MX">, C<"es-US">, C<"fr-CA">, C<"fr-FR">, C<"is-IS">, C<"it-IT">, C<"ja-JP">, C<"hi-IN">, C<"ko-KR">, C<"nb-NO">, C<"nl-NL">, C<"pl-PL">, C<"pt-BR">, C<"pt-PT">, C<"ro-RO">, C<"ru-RU">, C<"sv-SE">, C<"tr-TR">

=head2 LexiconNames => ArrayRef[Str|Undef]

List of one or more pronunciation lexicon names you want the service to
apply during synthesis. Lexicons are applied only if the language of
the lexicon is the same as the language of the voice. For information
about storing lexicons, see PutLexicon
(http://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html).



=head2 B<REQUIRED> OutputFormat => Str

The format in which the returned output will be encoded. For audio
stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this
will be json.

When pcm is used, the content returned is audio/pcm in a signed 16-bit,
1 channel (mono), little-endian format.

Valid values are: C<"json">, C<"mp3">, C<"ogg_vorbis">, C<"pcm">

=head2 SampleRate => Str

The audio frequency specified in Hz.

The valid values for C<mp3> and C<ogg_vorbis> are "8000", "16000", and
"22050". The default value is "22050".

Valid values for C<pcm> are "8000" and "16000" The default value is
"16000".



=head2 SpeechMarkTypes => ArrayRef[Str|Undef]

The type of speech marks returned for the input text.



=head2 B<REQUIRED> Text => Str

Input text to synthesize. If you specify C<ssml> as the C<TextType>,
follow the SSML format for the input text.



=head2 TextType => Str

Specifies whether the input text is plain text or SSML. The default
value is plain text. For more information, see Using SSML
(http://docs.aws.amazon.com/polly/latest/dg/ssml.html).

Valid values are: C<"ssml">, C<"text">

=head2 B<REQUIRED> VoiceId => Str

Voice ID to use for the synthesis. You can get a list of available
voice IDs by calling the DescribeVoices
(http://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html)
operation.

Valid values are: C<"Geraint">, C<"Gwyneth">, C<"Mads">, C<"Naja">, C<"Hans">, C<"Marlene">, C<"Nicole">, C<"Russell">, C<"Amy">, C<"Brian">, C<"Emma">, C<"Raveena">, C<"Ivy">, C<"Joanna">, C<"Joey">, C<"Justin">, C<"Kendra">, C<"Kimberly">, C<"Matthew">, C<"Salli">, C<"Conchita">, C<"Enrique">, C<"Miguel">, C<"Penelope">, C<"Chantal">, C<"Celine">, C<"Lea">, C<"Mathieu">, C<"Dora">, C<"Karl">, C<"Carla">, C<"Giorgio">, C<"Mizuki">, C<"Liv">, C<"Lotte">, C<"Ruben">, C<"Ewa">, C<"Jacek">, C<"Jan">, C<"Maja">, C<"Ricardo">, C<"Vitoria">, C<"Cristiano">, C<"Ines">, C<"Carmen">, C<"Maxim">, C<"Tatyana">, C<"Astrid">, C<"Filiz">, C<"Vicki">, C<"Takumi">, C<"Seoyeon">, C<"Aditi">, C<"Zhiyu">, C<"Bianca">, C<"Lucia">, C<"Mia">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SynthesizeSpeech in L<Paws::Polly>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

