
package Paws::LexRuntime::PostText;
  use Moose;
  has ActiveContexts => (is => 'ro', isa => 'ArrayRef[Paws::LexRuntime::ActiveContext]', traits => ['NameInRequest'], request_name => 'activeContexts');
  has BotAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botAlias', required => 1);
  has BotName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botName', required => 1);
  has InputText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inputText', required => 1);
  has RequestAttributes => (is => 'ro', isa => 'Paws::LexRuntime::StringMap', traits => ['NameInRequest'], request_name => 'requestAttributes');
  has SessionAttributes => (is => 'ro', isa => 'Paws::LexRuntime::StringMap', traits => ['NameInRequest'], request_name => 'sessionAttributes');
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PostText');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bot/{botName}/alias/{botAlias}/user/{userId}/text');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexRuntime::PostTextResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime::PostText - Arguments for method PostText on L<Paws::LexRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PostText on the
L<Amazon Lex Runtime Service|Paws::LexRuntime> service. Use the attributes of this class
as arguments to method PostText.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PostText.

=head1 SYNOPSIS

    my $runtime.lex = Paws->service('LexRuntime');
    my $PostTextResponse = $runtime . lex->PostText(
      BotAlias       => 'MyBotAlias',
      BotName        => 'MyBotName',
      InputText      => 'MyText',
      UserId         => 'MyUserId',
      ActiveContexts => [
        {
          Name       => 'MyActiveContextName',    # min: 1, max: 100
          Parameters => {
            'MyParameterName' =>
              'MyText',    # key: min: 1, max: 100, value: min: 1, max: 1024
          },    # max: 10
          TimeToLive => {
            TimeToLiveInSeconds => 1,    # min: 5, max: 86400; OPTIONAL
            TurnsToLive         => 1,    # min: 1, max: 20; OPTIONAL
          },

        },
        ...
      ],                                 # OPTIONAL
      RequestAttributes => { 'MyString' => 'MyString', },    # OPTIONAL
      SessionAttributes => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $ActiveContexts      = $PostTextResponse->ActiveContexts;
    my $AlternativeIntents  = $PostTextResponse->AlternativeIntents;
    my $BotVersion          = $PostTextResponse->BotVersion;
    my $DialogState         = $PostTextResponse->DialogState;
    my $IntentName          = $PostTextResponse->IntentName;
    my $Message             = $PostTextResponse->Message;
    my $MessageFormat       = $PostTextResponse->MessageFormat;
    my $NluIntentConfidence = $PostTextResponse->NluIntentConfidence;
    my $ResponseCard        = $PostTextResponse->ResponseCard;
    my $SentimentResponse   = $PostTextResponse->SentimentResponse;
    my $SessionAttributes   = $PostTextResponse->SessionAttributes;
    my $SessionId           = $PostTextResponse->SessionId;
    my $SlotToElicit        = $PostTextResponse->SlotToElicit;
    my $Slots               = $PostTextResponse->Slots;

    # Returns a L<Paws::LexRuntime::PostTextResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/runtime.lex/PostText>

=head1 ATTRIBUTES


=head2 ActiveContexts => ArrayRef[L<Paws::LexRuntime::ActiveContext>]

A list of contexts active for the request. A context can be activated
when a previous intent is fulfilled, or by including the context in the
request,

If you don't specify a list of contexts, Amazon Lex will use the
current list of contexts for the session. If you specify an empty list,
all contexts for the session are cleared.



=head2 B<REQUIRED> BotAlias => Str

The alias of the Amazon Lex bot.



=head2 B<REQUIRED> BotName => Str

The name of the Amazon Lex bot.



=head2 B<REQUIRED> InputText => Str

The text that the user entered (Amazon Lex interprets this text).



=head2 RequestAttributes => L<Paws::LexRuntime::StringMap>

Request-specific information passed between Amazon Lex and a client
application.

The namespace C<x-amz-lex:> is reserved for special attributes. Don't
create any request attributes with the prefix C<x-amz-lex:>.

For more information, see Setting Request Attributes
(https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-request-attribs).



=head2 SessionAttributes => L<Paws::LexRuntime::StringMap>

Application-specific information passed between Amazon Lex and a client
application.

For more information, see Setting Session Attributes
(https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-session-attribs).



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

This class forms part of L<Paws>, documenting arguments for method PostText in L<Paws::LexRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

