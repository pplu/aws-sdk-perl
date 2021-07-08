
package Paws::LexModels::GetBotResponse;
  use Moose;
  has AbortStatement => (is => 'ro', isa => 'Paws::LexModels::Statement', traits => ['NameInRequest'], request_name => 'abortStatement');
  has Checksum => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'checksum');
  has ChildDirected => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'childDirected');
  has ClarificationPrompt => (is => 'ro', isa => 'Paws::LexModels::Prompt', traits => ['NameInRequest'], request_name => 'clarificationPrompt');
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DetectSentiment => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'detectSentiment');
  has EnableModelImprovements => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableModelImprovements');
  has FailureReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureReason');
  has IdleSessionTTLInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'idleSessionTTLInSeconds');
  has Intents => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::Intent]', traits => ['NameInRequest'], request_name => 'intents');
  has LastUpdatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDate');
  has Locale => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'locale');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has NluIntentConfidenceThreshold => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'nluIntentConfidenceThreshold');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');
  has VoiceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'voiceId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBotResponse

=head1 ATTRIBUTES


=head2 AbortStatement => L<Paws::LexModels::Statement>

The message that Amazon Lex returns when the user elects to end the
conversation without completing it. For more information, see PutBot.


=head2 Checksum => Str

Checksum of the bot used to identify a specific revision of the bot's
C<$LATEST> version.


=head2 ChildDirected => Bool

For each Amazon Lex bot created with the Amazon Lex Model Building
Service, you must specify whether your use of Amazon Lex is related to
a website, program, or other application that is directed or targeted,
in whole or in part, to children under age 13 and subject to the
Children's Online Privacy Protection Act (COPPA) by specifying C<true>
or C<false> in the C<childDirected> field. By specifying C<true> in the
C<childDirected> field, you confirm that your use of Amazon Lex B<is>
related to a website, program, or other application that is directed or
targeted, in whole or in part, to children under age 13 and subject to
COPPA. By specifying C<false> in the C<childDirected> field, you
confirm that your use of Amazon Lex B<is not> related to a website,
program, or other application that is directed or targeted, in whole or
in part, to children under age 13 and subject to COPPA. You may not
specify a default value for the C<childDirected> field that does not
accurately reflect whether your use of Amazon Lex is related to a
website, program, or other application that is directed or targeted, in
whole or in part, to children under age 13 and subject to COPPA.

If your use of Amazon Lex relates to a website, program, or other
application that is directed in whole or in part, to children under age
13, you must obtain any required verifiable parental consent under
COPPA. For information regarding the use of Amazon Lex in connection
with websites, programs, or other applications that are directed or
targeted, in whole or in part, to children under age 13, see the Amazon
Lex FAQ. (https://aws.amazon.com/lex/faqs#data-security)


=head2 ClarificationPrompt => L<Paws::LexModels::Prompt>

The message Amazon Lex uses when it doesn't understand the user's
request. For more information, see PutBot.


=head2 CreatedDate => Str

The date that the bot was created.


=head2 Description => Str

A description of the bot.


=head2 DetectSentiment => Bool

Indicates whether user utterances should be sent to Amazon Comprehend
for sentiment analysis.


=head2 EnableModelImprovements => Bool

Indicates whether the bot uses accuracy improvements. C<true> indicates
that the bot is using the improvements, otherwise, C<false>.


=head2 FailureReason => Str

If C<status> is C<FAILED>, Amazon Lex explains why it failed to build
the bot.


=head2 IdleSessionTTLInSeconds => Int

The maximum time in seconds that Amazon Lex retains the data gathered
in a conversation. For more information, see PutBot.


=head2 Intents => ArrayRef[L<Paws::LexModels::Intent>]

An array of C<intent> objects. For more information, see PutBot.


=head2 LastUpdatedDate => Str

The date that the bot was updated. When you create a resource, the
creation date and last updated date are the same.


=head2 Locale => Str

The target locale for the bot.

Valid values are: C<"de-DE">, C<"en-AU">, C<"en-GB">, C<"en-US">, C<"es-419">, C<"es-ES">, C<"es-US">, C<"fr-FR">, C<"fr-CA">, C<"it-IT">, C<"ja-JP">
=head2 Name => Str

The name of the bot.


=head2 NluIntentConfidenceThreshold => Num

The score that determines where Amazon Lex inserts the
C<AMAZON.FallbackIntent>, C<AMAZON.KendraSearchIntent>, or both when
returning alternative intents in a PostContent
(https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html)
or PostText
(https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html)
response. C<AMAZON.FallbackIntent> is inserted if the confidence score
for all intents is below this value. C<AMAZON.KendraSearchIntent> is
only inserted if it is configured for the bot.


=head2 Status => Str

The status of the bot.

When the status is C<BUILDING> Amazon Lex is building the bot for
testing and use.

If the status of the bot is C<READY_BASIC_TESTING>, you can test the
bot using the exact utterances specified in the bot's intents. When the
bot is ready for full testing or to run, the status is C<READY>.

If there was a problem with building the bot, the status is C<FAILED>
and the C<failureReason> field explains why the bot did not build.

If the bot was saved but not built, the status is C<NOT_BUILT>.

Valid values are: C<"BUILDING">, C<"READY">, C<"READY_BASIC_TESTING">, C<"FAILED">, C<"NOT_BUILT">
=head2 Version => Str

The version of the bot. For a new bot, the version is always
C<$LATEST>.


=head2 VoiceId => Str

The Amazon Polly voice ID that Amazon Lex uses for voice interaction
with the user. For more information, see PutBot.


=head2 _request_id => Str


=cut

