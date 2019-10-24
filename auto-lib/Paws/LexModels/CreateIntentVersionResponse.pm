
package Paws::LexModels::CreateIntentVersionResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::LexModels::Types qw/LexModels_FollowUpPrompt LexModels_Slot LexModels_Prompt LexModels_Statement LexModels_FulfillmentActivity LexModels_CodeHook/;
  has Checksum => (is => 'ro', isa => Str);
  has ConclusionStatement => (is => 'ro', isa => LexModels_Statement);
  has ConfirmationPrompt => (is => 'ro', isa => LexModels_Prompt);
  has CreatedDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has DialogCodeHook => (is => 'ro', isa => LexModels_CodeHook);
  has FollowUpPrompt => (is => 'ro', isa => LexModels_FollowUpPrompt);
  has FulfillmentActivity => (is => 'ro', isa => LexModels_FulfillmentActivity);
  has LastUpdatedDate => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has ParentIntentSignature => (is => 'ro', isa => Str);
  has RejectionStatement => (is => 'ro', isa => LexModels_Statement);
  has SampleUtterances => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Slots => (is => 'ro', isa => ArrayRef[LexModels_Slot]);
  has Version => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RejectionStatement' => {
                                         'class' => 'Paws::LexModels::Statement',
                                         'type' => 'LexModels_Statement'
                                       },
               'ParentIntentSignature' => {
                                            'type' => 'Str'
                                          },
               'DialogCodeHook' => {
                                     'class' => 'Paws::LexModels::CodeHook',
                                     'type' => 'LexModels_CodeHook'
                                   },
               'ConclusionStatement' => {
                                          'class' => 'Paws::LexModels::Statement',
                                          'type' => 'LexModels_Statement'
                                        },
               'Checksum' => {
                               'type' => 'Str'
                             },
               'SampleUtterances' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'FulfillmentActivity' => {
                                          'class' => 'Paws::LexModels::FulfillmentActivity',
                                          'type' => 'LexModels_FulfillmentActivity'
                                        },
               'LastUpdatedDate' => {
                                      'type' => 'Str'
                                    },
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'Slots' => {
                            'class' => 'Paws::LexModels::Slot',
                            'type' => 'ArrayRef[LexModels_Slot]'
                          },
               'Version' => {
                              'type' => 'Str'
                            },
               'FollowUpPrompt' => {
                                     'class' => 'Paws::LexModels::FollowUpPrompt',
                                     'type' => 'LexModels_FollowUpPrompt'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ConfirmationPrompt' => {
                                         'class' => 'Paws::LexModels::Prompt',
                                         'type' => 'LexModels_Prompt'
                                       },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'SampleUtterances' => 'sampleUtterances',
                       'RejectionStatement' => 'rejectionStatement',
                       'ParentIntentSignature' => 'parentIntentSignature',
                       'LastUpdatedDate' => 'lastUpdatedDate',
                       'FulfillmentActivity' => 'fulfillmentActivity',
                       'DialogCodeHook' => 'dialogCodeHook',
                       'ConclusionStatement' => 'conclusionStatement',
                       'Version' => 'version',
                       'Slots' => 'slots',
                       'CreatedDate' => 'createdDate',
                       'FollowUpPrompt' => 'followUpPrompt',
                       'ConfirmationPrompt' => 'confirmationPrompt',
                       'Name' => 'name',
                       'Description' => 'description',
                       'Checksum' => 'checksum'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::CreateIntentVersionResponse

=head1 ATTRIBUTES


=head2 Checksum => Str

Checksum of the intent version created.


=head2 ConclusionStatement => LexModels_Statement

After the Lambda function specified in the C<fulfillmentActivity> field
fulfills the intent, Amazon Lex conveys this statement to the user.


=head2 ConfirmationPrompt => LexModels_Prompt

If defined, the prompt that Amazon Lex uses to confirm the user's
intent before fulfilling it.


=head2 CreatedDate => Str

The date that the intent was created.


=head2 Description => Str

A description of the intent.


=head2 DialogCodeHook => LexModels_CodeHook

If defined, Amazon Lex invokes this Lambda function for each user
input.


=head2 FollowUpPrompt => LexModels_FollowUpPrompt

If defined, Amazon Lex uses this prompt to solicit additional user
activity after the intent is fulfilled.


=head2 FulfillmentActivity => LexModels_FulfillmentActivity

Describes how the intent is fulfilled.


=head2 LastUpdatedDate => Str

The date that the intent was updated.


=head2 Name => Str

The name of the intent.


=head2 ParentIntentSignature => Str

A unique identifier for a built-in intent.


=head2 RejectionStatement => LexModels_Statement

If the user answers "no" to the question defined in
C<confirmationPrompt>, Amazon Lex responds with this statement to
acknowledge that the intent was canceled.


=head2 SampleUtterances => ArrayRef[Str|Undef]

An array of sample utterances configured for the intent.


=head2 Slots => ArrayRef[LexModels_Slot]

An array of slot types that defines the information required to fulfill
the intent.


=head2 Version => Str

The version number assigned to the new version of the intent.


=head2 _request_id => Str


=cut

