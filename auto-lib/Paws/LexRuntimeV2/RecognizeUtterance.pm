
package Paws::LexRuntimeV2::RecognizeUtterance;
  use Moose;
  has BotAliasId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botAliasId', required => 1);
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has InputStream => (is => 'ro', isa => 'Str', traits => ['ParamInBody']);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has RequestAttributes => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-lex-request-attributes');
  has RequestContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type', required => 1);
  has ResponseContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Response-Content-Type');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionId', required => 1);
  has SessionState => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-lex-session-state');

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'InputStream');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RecognizeUtterance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/utterance');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexRuntimeV2::RecognizeUtteranceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntimeV2::RecognizeUtterance - Arguments for method RecognizeUtterance on L<Paws::LexRuntimeV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RecognizeUtterance on the
L<Amazon Lex Runtime V2|Paws::LexRuntimeV2> service. Use the attributes of this class
as arguments to method RecognizeUtterance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RecognizeUtterance.

=head1 SYNOPSIS

    my $runtime-v2-lex = Paws->service('LexRuntimeV2');
    my $RecognizeUtteranceResponse = $runtime - v2 -lex->RecognizeUtterance(
      BotAliasId          => 'MyBotAliasIdentifier',
      BotId               => 'MyBotIdentifier',
      LocaleId            => 'MyLocaleId',
      RequestContentType  => 'MyNonEmptyString',
      SessionId           => 'MySessionId',
      InputStream         => 'BlobBlobStream',               # OPTIONAL
      RequestAttributes   => 'MySensitiveNonEmptyString',    # OPTIONAL
      ResponseContentType => 'MyNonEmptyString',             # OPTIONAL
      SessionState        => 'MySensitiveNonEmptyString',    # OPTIONAL
    );

    # Results:
    my $AudioStream       = $RecognizeUtteranceResponse->AudioStream;
    my $ContentType       = $RecognizeUtteranceResponse->ContentType;
    my $InputMode         = $RecognizeUtteranceResponse->InputMode;
    my $InputTranscript   = $RecognizeUtteranceResponse->InputTranscript;
    my $Interpretations   = $RecognizeUtteranceResponse->Interpretations;
    my $Messages          = $RecognizeUtteranceResponse->Messages;
    my $RequestAttributes = $RecognizeUtteranceResponse->RequestAttributes;
    my $SessionId         = $RecognizeUtteranceResponse->SessionId;
    my $SessionState      = $RecognizeUtteranceResponse->SessionState;

    # Returns a L<Paws::LexRuntimeV2::RecognizeUtteranceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/runtime-v2-lex/RecognizeUtterance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotAliasId => Str

The alias identifier in use for the bot that should receive the
request.



=head2 B<REQUIRED> BotId => Str

The identifier of the bot that should receive the request.



=head2 InputStream => Str

User input in PCM or Opus audio format or text format as described in
the C<requestContentType> parameter.



=head2 B<REQUIRED> LocaleId => Str

The locale where the session is in use.



=head2 RequestAttributes => Str

Request-specific information passed between the client application and
Amazon Lex

The namespace C<x-amz-lex:> is reserved for special attributes. Don't
create any request attributes for prefix C<x-amz-lex:>.



=head2 B<REQUIRED> RequestContentType => Str

Indicates the format for audio input or that the content is text. The
header must start with one of the following prefixes:

=over

=item *

PCM format, audio data must be in little-endian byte order.

=over

=item *

audio/l16; rate=16000; channels=1

=item *

audio/x-l16; sample-rate=16000; channel-count=1

=item *

audio/lpcm; sample-rate=8000; sample-size-bits=16; channel-count=1;
is-big-endian=false

=back

=item *

Opus format

=over

=item *

audio/x-cbr-opus-with-preamble;preamble-size=0;bit-rate=256000;frame-size-milliseconds=4

=back

=item *

Text format

=over

=item *

text/plain; charset=utf-8

=back

=back




=head2 ResponseContentType => Str

The message that Amazon Lex returns in the response can be either text
or speech based on the C<responseContentType> value.

=over

=item *

If the value is C<text/plain;charset=utf-8>, Amazon Lex returns text in
the response.

=item *

If the value begins with C<audio/>, Amazon Lex returns speech in the
response. Amazon Lex uses Amazon Polly to generate the speech using the
configuration that you specified in the C<requestContentType>
parameter. For example, if you specify C<audio/mpeg> as the value,
Amazon Lex returns speech in the MPEG format.

=item *

If the value is C<audio/pcm>, the speech returned is C<audio/pcm> at 16
KHz in 16-bit, little-endian format.

=item *

The following are the accepted values:

=over

=item *

audio/mpeg

=item *

audio/ogg

=item *

audio/pcm (16 KHz)

=item *

audio/* (defaults to mpeg)

=item *

text/plain; charset=utf-8

=back

=back




=head2 B<REQUIRED> SessionId => Str

The identifier of the session in use.



=head2 SessionState => Str

Sets the state of the session with the user. You can use this to set
the current intent, attributes, context, and dialog action. Use the
dialog action to determine the next step that Amazon Lex should use in
the conversation with the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RecognizeUtterance in L<Paws::LexRuntimeV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

