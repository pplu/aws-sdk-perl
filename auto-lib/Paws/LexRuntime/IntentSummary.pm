# Generated from default/object.tt
package Paws::LexRuntime::IntentSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::LexRuntime::Types qw/LexRuntime_StringMap/;
  has CheckpointLabel => (is => 'ro', isa => Str);
  has ConfirmationStatus => (is => 'ro', isa => Str);
  has DialogActionType => (is => 'ro', isa => Str, required => 1);
  has FulfillmentState => (is => 'ro', isa => Str);
  has IntentName => (is => 'ro', isa => Str);
  has Slots => (is => 'ro', isa => LexRuntime_StringMap);
  has SlotToElicit => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DialogActionType' => 'dialogActionType',
                       'ConfirmationStatus' => 'confirmationStatus',
                       'CheckpointLabel' => 'checkpointLabel',
                       'FulfillmentState' => 'fulfillmentState',
                       'IntentName' => 'intentName',
                       'SlotToElicit' => 'slotToElicit',
                       'Slots' => 'slots'
                     },
  'IsRequired' => {
                    'DialogActionType' => 1
                  },
  'types' => {
               'DialogActionType' => {
                                       'type' => 'Str'
                                     },
               'CheckpointLabel' => {
                                      'type' => 'Str'
                                    },
               'ConfirmationStatus' => {
                                         'type' => 'Str'
                                       },
               'FulfillmentState' => {
                                       'type' => 'Str'
                                     },
               'SlotToElicit' => {
                                   'type' => 'Str'
                                 },
               'Slots' => {
                            'type' => 'LexRuntime_StringMap',
                            'class' => 'Paws::LexRuntime::StringMap'
                          },
               'IntentName' => {
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

Paws::LexRuntime::IntentSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexRuntime::IntentSummary object:

  $service_obj->Method(Att1 => { CheckpointLabel => $value, ..., SlotToElicit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexRuntime::IntentSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CheckpointLabel

=head1 DESCRIPTION

Provides information about the state of an intent. You can use this
information to get the current state of an intent so that you can
process the intent, or so that you can return the intent to its
previous state.

=head1 ATTRIBUTES


=head2 CheckpointLabel => Str

  A user-defined label that identifies a particular intent. You can use
this label to return to a previous intent.

Use the C<checkpointLabelFilter> parameter of the C<GetSessionRequest>
operation to filter the intents returned by the operation to those with
only the specified label.


=head2 ConfirmationStatus => Str

  The status of the intent after the user responds to the confirmation
prompt. If the user confirms the intent, Amazon Lex sets this field to
C<Confirmed>. If the user denies the intent, Amazon Lex sets this value
to C<Denied>. The possible values are:

=over

=item *

C<Confirmed> - The user has responded "Yes" to the confirmation prompt,
confirming that the intent is complete and that it is ready to be
fulfilled.

=item *

C<Denied> - The user has responded "No" to the confirmation prompt.

=item *

C<None> - The user has never been prompted for confirmation; or, the
user was prompted but did not confirm or deny the prompt.

=back



=head2 B<REQUIRED> DialogActionType => Str

  The next action that the bot should take in its interaction with the
user. The possible values are:

=over

=item *

C<ConfirmIntent> - The next action is asking the user if the intent is
complete and ready to be fulfilled. This is a yes/no question such as
"Place the order?"

=item *

C<Close> - Indicates that the there will not be a response from the
user. For example, the statement "Your order has been placed" does not
require a response.

=item *

C<ElicitIntent> - The next action is to determine the intent that the
user wants to fulfill.

=item *

C<ElicitSlot> - The next action is to elicit a slot value from the
user.

=back



=head2 FulfillmentState => Str

  The fulfillment state of the intent. The possible values are:

=over

=item *

C<Failed> - The Lambda function associated with the intent failed to
fulfill the intent.

=item *

C<Fulfilled> - The intent has fulfilled by the Lambda function
associated with the intent.

=item *

C<ReadyForFulfillment> - All of the information necessary for the
intent is present and the intent ready to be fulfilled by the client
application.

=back



=head2 IntentName => Str

  The name of the intent.


=head2 Slots => LexRuntime_StringMap

  Map of the slots that have been gathered and their values.


=head2 SlotToElicit => Str

  The next slot to elicit from the user. If there is not slot to elicit,
the field is blank.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

