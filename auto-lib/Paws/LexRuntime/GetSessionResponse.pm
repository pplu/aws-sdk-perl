
package Paws::LexRuntime::GetSessionResponse;
  use Moose;
  has ActiveContexts => (is => 'ro', isa => 'ArrayRef[Paws::LexRuntime::ActiveContext]', traits => ['NameInRequest'], request_name => 'activeContexts');
  has DialogAction => (is => 'ro', isa => 'Paws::LexRuntime::DialogAction', traits => ['NameInRequest'], request_name => 'dialogAction');
  has RecentIntentSummaryView => (is => 'ro', isa => 'ArrayRef[Paws::LexRuntime::IntentSummary]', traits => ['NameInRequest'], request_name => 'recentIntentSummaryView');
  has SessionAttributes => (is => 'ro', isa => 'Paws::LexRuntime::StringMap', traits => ['NameInRequest'], request_name => 'sessionAttributes');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime::GetSessionResponse

=head1 ATTRIBUTES


=head2 ActiveContexts => ArrayRef[L<Paws::LexRuntime::ActiveContext>]

A list of active contexts for the session. A context can be set when an
intent is fulfilled or by calling the C<PostContent>, C<PostText>, or
C<PutSession> operation.

You can use a context to control the intents that can follow up an
intent, or to modify the operation of your application.


=head2 DialogAction => L<Paws::LexRuntime::DialogAction>

Describes the current state of the bot.


=head2 RecentIntentSummaryView => ArrayRef[L<Paws::LexRuntime::IntentSummary>]

An array of information about the intents used in the session. The
array can contain a maximum of three summaries. If more than three
intents are used in the session, the C<recentIntentSummaryView>
operation contains information about the last three intents used.

If you set the C<checkpointLabelFilter> parameter in the request, the
array contains only the intents with the specified label.


=head2 SessionAttributes => L<Paws::LexRuntime::StringMap>

Map of key/value pairs representing the session-specific context
information. It contains application information passed between Amazon
Lex and a client application.


=head2 SessionId => Str

A unique identifier for the session.


=head2 _request_id => Str


=cut

