
package Paws::LexModels::PutIntentResponse;
  use Moose;
  has Checksum => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'checksum');
  has ConclusionStatement => (is => 'ro', isa => 'Paws::LexModels::Statement', traits => ['NameInRequest'], request_name => 'conclusionStatement');
  has ConfirmationPrompt => (is => 'ro', isa => 'Paws::LexModels::Prompt', traits => ['NameInRequest'], request_name => 'confirmationPrompt');
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate');
  has CreateVersion => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'createVersion');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DialogCodeHook => (is => 'ro', isa => 'Paws::LexModels::CodeHook', traits => ['NameInRequest'], request_name => 'dialogCodeHook');
  has FollowUpPrompt => (is => 'ro', isa => 'Paws::LexModels::FollowUpPrompt', traits => ['NameInRequest'], request_name => 'followUpPrompt');
  has FulfillmentActivity => (is => 'ro', isa => 'Paws::LexModels::FulfillmentActivity', traits => ['NameInRequest'], request_name => 'fulfillmentActivity');
  has LastUpdatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDate');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ParentIntentSignature => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentIntentSignature');
  has RejectionStatement => (is => 'ro', isa => 'Paws::LexModels::Statement', traits => ['NameInRequest'], request_name => 'rejectionStatement');
  has SampleUtterances => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'sampleUtterances');
  has Slots => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::Slot]', traits => ['NameInRequest'], request_name => 'slots');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::PutIntentResponse

=head1 ATTRIBUTES


=head2 Checksum => Str

Checksum of the C<$LATEST>version of the intent created or updated.


=head2 ConclusionStatement => L<Paws::LexModels::Statement>

After the Lambda function specified in theC<fulfillmentActivity>intent
fulfills the intent, Amazon Lex conveys this statement to the user.


=head2 ConfirmationPrompt => L<Paws::LexModels::Prompt>

If defined in the intent, Amazon Lex prompts the user to confirm the
intent before fulfilling it.


=head2 CreatedDate => Str

The date that the intent was created.


=head2 CreateVersion => Bool




=head2 Description => Str

A description of the intent.


=head2 DialogCodeHook => L<Paws::LexModels::CodeHook>

If defined in the intent, Amazon Lex invokes this Lambda function for
each user input.


=head2 FollowUpPrompt => L<Paws::LexModels::FollowUpPrompt>

If defined in the intent, Amazon Lex uses this prompt to solicit
additional user activity after the intent is fulfilled.


=head2 FulfillmentActivity => L<Paws::LexModels::FulfillmentActivity>

If defined in the intent, Amazon Lex invokes this Lambda function to
fulfill the intent after the user provides all of the information
required by the intent.


=head2 LastUpdatedDate => Str

The date that the intent was updated. When you create a resource, the
creation date and last update dates are the same.


=head2 Name => Str

The name of the intent.


=head2 ParentIntentSignature => Str

A unique identifier for the built-in intent that this intent is based
on.


=head2 RejectionStatement => L<Paws::LexModels::Statement>

If the user answers "no" to the question defined in
C<confirmationPrompt> Amazon Lex responds with this statement to
acknowledge that the intent was canceled.


=head2 SampleUtterances => ArrayRef[Str|Undef]

An array of sample utterances that are configured for the intent.


=head2 Slots => ArrayRef[L<Paws::LexModels::Slot>]

An array of intent slots that are configured for the intent.


=head2 Version => Str

The version of the intent. For a new intent, the version is always
C<$LATEST>.


=head2 _request_id => Str


=cut

