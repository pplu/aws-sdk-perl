
package Paws::LexRuntime::GetSession;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::LexRuntime::Types qw//;
  has BotAlias => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BotName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has CheckpointLabelFilter => (is => 'ro', isa => Str, predicate => 1);
  has UserId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetSession');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/bot/{botName}/alias/{botAlias}/user/{userId}/session/');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::LexRuntime::GetSessionResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'UserId' => 'userId',
                    'BotAlias' => 'botAlias',
                    'BotName' => 'botName'
                  },
  'IsRequired' => {
                    'BotName' => 1,
                    'BotAlias' => 1,
                    'UserId' => 1
                  },
  'ParamInQuery' => {
                      'CheckpointLabelFilter' => 'checkpointLabelFilter'
                    },
  'types' => {
               'BotName' => {
                              'type' => 'Str'
                            },
               'CheckpointLabelFilter' => {
                                            'type' => 'Str'
                                          },
               'UserId' => {
                             'type' => 'Str'
                           },
               'BotAlias' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime::GetSession - Arguments for method GetSession on L<Paws::LexRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSession on the
L<Amazon Lex Runtime Service|Paws::LexRuntime> service. Use the attributes of this class
as arguments to method GetSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSession.

=head1 SYNOPSIS

    my $runtime.lex = Paws->service('LexRuntime');
    my $GetSessionResponse = $runtime . lex->GetSession(
      BotAlias              => 'MyBotAlias',
      BotName               => 'MyBotName',
      UserId                => 'MyUserId',
      CheckpointLabelFilter => 'MyIntentSummaryCheckpointLabel',    # OPTIONAL
    );

    # Results:
    my $DialogAction            = $GetSessionResponse->DialogAction;
    my $RecentIntentSummaryView = $GetSessionResponse->RecentIntentSummaryView;
    my $SessionAttributes       = $GetSessionResponse->SessionAttributes;
    my $SessionId               = $GetSessionResponse->SessionId;

    # Returns a L<Paws::LexRuntime::GetSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/runtime.lex/GetSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotAlias => Str

The alias in use for the bot that contains the session data.



=head2 B<REQUIRED> BotName => Str

The name of the bot that contains the session data.



=head2 CheckpointLabelFilter => Str

A string used to filter the intents returned in the
C<recentIntentSummaryView> structure.

When you specify a filter, only intents with their C<checkpointLabel>
field set to that string are returned.



=head2 B<REQUIRED> UserId => Str

The ID of the client application user. Amazon Lex uses this to identify
a user's conversation with your bot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSession in L<Paws::LexRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

