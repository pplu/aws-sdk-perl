
package Paws::LexModels::PutBotResponse;
  use Moose;
  has AbortStatement => (is => 'ro', isa => 'Paws::LexModels::Statement', traits => ['NameInRequest'], request_name => 'abortStatement');
  has Checksum => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'checksum');
  has ChildDirected => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'childDirected');
  has ClarificationPrompt => (is => 'ro', isa => 'Paws::LexModels::Prompt', traits => ['NameInRequest'], request_name => 'clarificationPrompt');
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate');
  has CreateVersion => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'createVersion');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FailureReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureReason');
  has IdleSessionTTLInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'idleSessionTTLInSeconds');
  has Intents => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::Intent]', traits => ['NameInRequest'], request_name => 'intents');
  has LastUpdatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDate');
  has Locale => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'locale');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');
  has VoiceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'voiceId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::PutBotResponse

=head1 ATTRIBUTES


=head2 AbortStatement => L<Paws::LexModels::Statement>

The message that Amazon Lex uses to abort a conversation. For more
information, see PutBot.


=head2 Checksum => Str

Checksum of the bot that you created.


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

The prompts that Amazon Lex uses when it doesn't understand the user's
intent. For more information, see PutBot.


=head2 CreatedDate => Str

The date that the bot was created.


=head2 CreateVersion => Bool




=head2 Description => Str

A description of the bot.


=head2 FailureReason => Str

If C<status> is C<FAILED>, Amazon Lex provides the reason that it
failed to build the bot.


=head2 IdleSessionTTLInSeconds => Int

The maximum length of time that Amazon Lex retains the data gathered in
a conversation. For more information, see PutBot.


=head2 Intents => ArrayRef[L<Paws::LexModels::Intent>]

An array of C<Intent> objects. For more information, see PutBot.


=head2 LastUpdatedDate => Str

The date that the bot was updated. When you create a resource, the
creation date and last updated date are the same.


=head2 Locale => Str

The target locale for the bot.

Valid values are: C<"en-US">, C<"en-GB">, C<"de-DE">
=head2 Name => Str

The name of the bot.


=head2 Status => Str

When you send a request to create a bot with C<processBehavior> set to
C<BUILD>, Amazon Lex sets the C<status> response element to
C<BUILDING>. After Amazon Lex builds the bot, it sets C<status> to
C<READY>. If Amazon Lex can't build the bot, Amazon Lex sets C<status>
to C<FAILED>. Amazon Lex returns the reason for the failure in the
C<failureReason> response element.

When you set C<processBehavior>to C<SAVE>, Amazon Lex sets the status
code to C<NOT BUILT>.

Valid values are: C<"BUILDING">, C<"READY">, C<"READY_BASIC_TESTING">, C<"FAILED">, C<"NOT_BUILT">
=head2 Version => Str

The version of the bot. For a new bot, the version is always
C<$LATEST>.


=head2 VoiceId => Str

The Amazon Polly voice ID that Amazon Lex uses for voice interaction
with the user. For more information, see PutBot.


=head2 _request_id => Str


=cut

