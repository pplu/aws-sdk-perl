package Paws::LexRuntimeV2;
  use Moose;
  sub service { 'runtime-v2-lex' }
  sub signing_name { 'lex' }
  sub version { '2020-08-07' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub DeleteSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexRuntimeV2::DeleteSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexRuntimeV2::GetSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSession {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexRuntimeV2::PutSession', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RecognizeText {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexRuntimeV2::RecognizeText', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RecognizeUtterance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexRuntimeV2::RecognizeUtterance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartConversation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexRuntimeV2::StartConversation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/DeleteSession GetSession PutSession RecognizeText RecognizeUtterance StartConversation / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntimeV2 - Perl Interface to AWS Amazon Lex Runtime V2

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('LexRuntimeV2');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION



For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/runtime-v2-lex-2020-08-07>


=head1 METHODS

=head2 DeleteSession

=over

=item BotAliasId => Str

=item BotId => Str

=item LocaleId => Str

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::LexRuntimeV2::DeleteSession>

Returns: a L<Paws::LexRuntimeV2::DeleteSessionResponse> instance

Removes session information for a specified bot, alias, and user ID.

You can use this operation to restart a conversation with a bot. When
you remove a session, the entire history of the session is removed so
that you can start again.

You don't need to delete a session. Sessions have a time limit and will
expire. Set the session time limit when you create the bot. The default
is 5 minutes, but you can specify anything between 1 minute and 24
hours.

If you specify a bot or alias ID that doesn't exist, you receive a
C<BadRequestException.>

If the locale doesn't exist in the bot, or if the locale hasn't been
enables for the alias, you receive a C<BadRequestException>.


=head2 GetSession

=over

=item BotAliasId => Str

=item BotId => Str

=item LocaleId => Str

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::LexRuntimeV2::GetSession>

Returns: a L<Paws::LexRuntimeV2::GetSessionResponse> instance

Returns session information for a specified bot, alias, and user.

For example, you can use this operation to retrieve session information
for a user that has left a long-running session in use.

If the bot, alias, or session identifier doesn't exist, Amazon Lex V2
returns a C<BadRequestException>. If the locale doesn't exist or is not
enabled for the alias, you receive a C<BadRequestException>.


=head2 PutSession

=over

=item BotAliasId => Str

=item BotId => Str

=item LocaleId => Str

=item SessionId => Str

=item SessionState => L<Paws::LexRuntimeV2::SessionState>

=item [Messages => ArrayRef[L<Paws::LexRuntimeV2::Message>]]

=item [RequestAttributes => L<Paws::LexRuntimeV2::StringMap>]

=item [ResponseContentType => Str]


=back

Each argument is described in detail in: L<Paws::LexRuntimeV2::PutSession>

Returns: a L<Paws::LexRuntimeV2::PutSessionResponse> instance

Creates a new session or modifies an existing session with an Amazon
Lex V2 bot. Use this operation to enable your application to set the
state of the bot.


=head2 RecognizeText

=over

=item BotAliasId => Str

=item BotId => Str

=item LocaleId => Str

=item SessionId => Str

=item Text => Str

=item [RequestAttributes => L<Paws::LexRuntimeV2::StringMap>]

=item [SessionState => L<Paws::LexRuntimeV2::SessionState>]


=back

Each argument is described in detail in: L<Paws::LexRuntimeV2::RecognizeText>

Returns: a L<Paws::LexRuntimeV2::RecognizeTextResponse> instance

Sends user input to Amazon Lex V2. Client applications use this API to
send requests to Amazon Lex V2 at runtime. Amazon Lex V2 then
interprets the user input using the machine learning model that it
build for the bot.

In response, Amazon Lex V2 returns the next message to convey to the
user and an optional response card to display.


=head2 RecognizeUtterance

=over

=item BotAliasId => Str

=item BotId => Str

=item LocaleId => Str

=item RequestContentType => Str

=item SessionId => Str

=item [InputStream => Str]

=item [RequestAttributes => Str]

=item [ResponseContentType => Str]

=item [SessionState => Str]


=back

Each argument is described in detail in: L<Paws::LexRuntimeV2::RecognizeUtterance>

Returns: a L<Paws::LexRuntimeV2::RecognizeUtteranceResponse> instance

Sends user input to Amazon Lex V2. You can send text or speech. Clients
use this API to send text and audio requests to Amazon Lex V2 at
runtime. Amazon Lex V2 interprets the user input using the machine
learning model built for the bot.

The following request fields must be compressed with gzip and then
base64 encoded before you send them to Amazon Lex V2.

=over

=item *

requestAttributes

=item *

sessionState

=back

The following response fields are compressed using gzip and then base64
encoded by Amazon Lex V2. Before you can use these fields, you must
decode and decompress them.

=over

=item *

inputTranscript

=item *

interpretations

=item *

messages

=item *

requestAttributes

=item *

sessionState

=back

The example contains a Java application that compresses and encodes a
Java object to send to Amazon Lex V2, and a second that decodes and
decompresses a response from Amazon Lex V2.


=head2 StartConversation

=over

=item BotAliasId => Str

=item BotId => Str

=item LocaleId => Str

=item RequestEventStream => L<Paws::LexRuntimeV2::StartConversationRequestEventStream>

=item SessionId => Str

=item [ConversationMode => Str]


=back

Each argument is described in detail in: L<Paws::LexRuntimeV2::StartConversation>

Returns: a L<Paws::LexRuntimeV2::StartConversationResponse> instance

Starts an HTTP/2 bidirectional event stream that enables you to send
audio, text, or DTMF input in real time. After your application starts
a conversation, users send input to Amazon Lex V2 as a stream of
events. Amazon Lex V2 processes the incoming events and responds with
streaming text or audio events.

Audio input must be in the following format: C<audio/lpcm
sample-rate=8000 sample-size-bits=16 channel-count=1;
is-big-endian=false>.

The C<StartConversation> operation is supported only in the following
SDKs:

=over

=item *

AWS SDK for C++
(https://docs.aws.amazon.com/goto/SdkForCpp/runtime.lex.v2-2020-08-07/StartConversation)

=item *

AWS SDK for Java V2
(https://docs.aws.amazon.com/goto/SdkForJavaV2/runtime.lex.v2-2020-08-07/StartConversation)

=item *

AWS SDK for Ruby V3
(https://docs.aws.amazon.com/goto/SdkForRubyV3/runtime.lex.v2-2020-08-07/StartConversation)

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

