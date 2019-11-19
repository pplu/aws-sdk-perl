
package Paws::LexRuntime::GetSessionResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LexRuntime::Types qw/LexRuntime_IntentSummary LexRuntime_DialogAction LexRuntime_StringMap/;
  has DialogAction => (is => 'ro', isa => LexRuntime_DialogAction);
  has RecentIntentSummaryView => (is => 'ro', isa => ArrayRef[LexRuntime_IntentSummary]);
  has SessionAttributes => (is => 'ro', isa => LexRuntime_StringMap);
  has SessionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DialogAction' => {
                                   'type' => 'LexRuntime_DialogAction',
                                   'class' => 'Paws::LexRuntime::DialogAction'
                                 },
               'SessionAttributes' => {
                                        'type' => 'LexRuntime_StringMap',
                                        'class' => 'Paws::LexRuntime::StringMap'
                                      },
               'RecentIntentSummaryView' => {
                                              'class' => 'Paws::LexRuntime::IntentSummary',
                                              'type' => 'ArrayRef[LexRuntime_IntentSummary]'
                                            },
               'SessionId' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'SessionId' => 'sessionId',
                       'RecentIntentSummaryView' => 'recentIntentSummaryView',
                       'SessionAttributes' => 'sessionAttributes',
                       'DialogAction' => 'dialogAction'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime::GetSessionResponse

=head1 ATTRIBUTES


=head2 DialogAction => LexRuntime_DialogAction

Describes the current state of the bot.


=head2 RecentIntentSummaryView => ArrayRef[LexRuntime_IntentSummary]

An array of information about the intents used in the session. The
array can contain a maximum of three summaries. If more than three
intents are used in the session, the C<recentIntentSummaryView>
operation contains information about the last three intents used.

If you set the C<checkpointLabelFilter> parameter in the request, the
array contains only the intents with the specified label.


=head2 SessionAttributes => LexRuntime_StringMap

Map of key/value pairs representing the session-specific context
information. It contains application information passed between Amazon
Lex and a client application.


=head2 SessionId => Str

A unique identifier for the session.


=head2 _request_id => Str


=cut

