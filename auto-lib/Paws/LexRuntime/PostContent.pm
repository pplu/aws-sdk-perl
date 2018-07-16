
package Paws::LexRuntime::PostContent;
  use Moose;
  has Accept => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Accept');
  has BotAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botAlias', required => 1);
  has BotName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botName', required => 1);
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type', required => 1);
  has InputStream => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inputStream', required => 1);
  has RequestAttributes => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-lex-request-attributes');
  has SessionAttributes => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-lex-session-attributes');
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userId', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'InputStream');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PostContent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bot/{botName}/alias/{botAlias}/user/{userId}/content');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexRuntime::PostContentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime::PostContent - Arguments for method PostContent on L<Paws::LexRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PostContent on the
L<Amazon Lex Runtime Service|Paws::LexRuntime> service. Use the attributes of this class
as arguments to method PostContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PostContent.

=head1 SYNOPSIS

    my $runtime.lex = Paws->service('LexRuntime');
    my $PostContentResponse = $runtime . lex->PostContent(
      BotAlias          => 'MyBotAlias',
      BotName           => 'MyBotName',
      ContentType       => 'MyHttpContentType',
      InputStream       => 'BlobBlobStream',
      UserId            => 'MyUserId',
      Accept            => 'MyAccept',              # OPTIONAL
      RequestAttributes => 'MyAttributesString',    # OPTIONAL
      SessionAttributes => 'MyAttributesString',    # OPTIONAL
    );

    # Results:
    my $AudioStream       = $PostContentResponse->AudioStream;
    my $ContentType       = $PostContentResponse->ContentType;
    my $DialogState       = $PostContentResponse->DialogState;
    my $InputTranscript   = $PostContentResponse->InputTranscript;
    my $IntentName        = $PostContentResponse->IntentName;
    my $Message           = $PostContentResponse->Message;
    my $MessageFormat     = $PostContentResponse->MessageFormat;
    my $SessionAttributes = $PostContentResponse->SessionAttributes;
    my $SlotToElicit      = $PostContentResponse->SlotToElicit;
    my $Slots             = $PostContentResponse->Slots;

    # Returns a L<Paws::LexRuntime::PostContentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/runtime.lex/PostContent>

=head1 ATTRIBUTES


=head2 Accept => Str

You pass this value as the C<Accept> HTTP header.

The message Amazon Lex returns in the response can be either text or
speech based on the C<Accept> HTTP header value in the request.

=over

=item *

If the value is C<text/plain; charset=utf-8>, Amazon Lex returns text
in the response.

=item *

If the value begins with C<audio/>, Amazon Lex returns speech in the
response. Amazon Lex uses Amazon Polly to generate the speech (using
the configuration you specified in the C<Accept> header). For example,
if you specify C<audio/mpeg> as the value, Amazon Lex returns speech in
the MPEG format.

The following are the accepted values:

=over

=item *

audio/mpeg

=item *

audio/ogg

=item *

audio/pcm

=item *

text/plain; charset=utf-8

=item *

audio/* (defaults to mpeg)

=back

=back




=head2 B<REQUIRED> BotAlias => Str

Alias of the Amazon Lex bot.



=head2 B<REQUIRED> BotName => Str

Name of the Amazon Lex bot.



=head2 B<REQUIRED> ContentType => Str

You pass this value as the C<Content-Type> HTTP header.

Indicates the audio format or text. The header value must start with
one of the following prefixes:

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

audio/x-cbr-opus-with-preamble; preamble-size=0; bit-rate=256000;
frame-size-milliseconds=4

=back

=item *

Text format

=over

=item *

text/plain; charset=utf-8

=back

=back




=head2 B<REQUIRED> InputStream => Str

User input in PCM or Opus audio format or text format as described in
the C<Content-Type> HTTP header.

You can stream audio data to Amazon Lex or you can create a local
buffer that captures all of the audio data before sending. In general,
you get better performance if you stream audio data rather than
buffering the data locally.



=head2 RequestAttributes => Str

You pass this value as the C<x-amz-lex-request-attributes> HTTP header.

Request-specific information passed between Amazon Lex and a client
application. The value must be a JSON serialized and base64 encoded map
with string keys and values. The total size of the C<requestAttributes>
and C<sessionAttributes> headers is limited to 12 KB.

The namespace C<x-amz-lex:> is reserved for special attributes. Don't
create any request attributes with the prefix C<x-amz-lex:>.

For more information, see Setting Request Attributes
(http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-request-attribs).



=head2 SessionAttributes => Str

You pass this value as the C<x-amz-lex-session-attributes> HTTP header.

Application-specific information passed between Amazon Lex and a client
application. The value must be a JSON serialized and base64 encoded map
with string keys and values. The total size of the C<sessionAttributes>
and C<requestAttributes> headers is limited to 12 KB.

For more information, see Setting Session Attributes
(http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-session-attribs).



=head2 B<REQUIRED> UserId => Str

The ID of the client application user. Amazon Lex uses this to identify
a user's conversation with your bot. At runtime, each request must
contain the C<userID> field.

To decide the user ID to use for your application, consider the
following factors.

=over

=item *

The C<userID> field must not contain any personally identifiable
information of the user, for example, name, personal identification
numbers, or other end user personal information.

=item *

If you want a user to start a conversation on one device and continue
on another device, use a user-specific identifier.

=item *

If you want the same user to be able to have two independent
conversations on two different devices, choose a device-specific
identifier.

=item *

A user can't have two independent conversations with two different
versions of the same bot. For example, a user can't have a conversation
with the PROD and BETA versions of the same bot. If you anticipate that
a user will need to have conversation with two different versions, for
example, while testing, include the bot alias in the user ID to
separate the two conversations.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PostContent in L<Paws::LexRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

