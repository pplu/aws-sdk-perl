package Paws::LexRuntime::DialogAction;
  use Moose;
  has FulfillmentState => (is => 'ro', isa => 'Str', request_name => 'fulfillmentState', traits => ['NameInRequest']);
  has IntentName => (is => 'ro', isa => 'Str', request_name => 'intentName', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
  has MessageFormat => (is => 'ro', isa => 'Str', request_name => 'messageFormat', traits => ['NameInRequest']);
  has Slots => (is => 'ro', isa => 'Paws::LexRuntime::StringMap', request_name => 'slots', traits => ['NameInRequest']);
  has SlotToElicit => (is => 'ro', isa => 'Str', request_name => 'slotToElicit', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime::DialogAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexRuntime::DialogAction object:

  $service_obj->Method(Att1 => { FulfillmentState => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexRuntime::DialogAction object:

  $result = $service_obj->Method(...);
  $result->Att1->FulfillmentState

=head1 DESCRIPTION

Describes the next action that the bot should take in its interaction
with the user and provides information about the context in which the
action takes place. Use the C<DialogAction> data type to set the
interaction to a specific state, or to return the interaction to a
previous state.

=head1 ATTRIBUTES


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


=head2 Message => Str

  The message that should be shown to the user. If you don't specify a
message, Amazon Lex will use the message configured for the intent.


=head2 MessageFormat => Str

  =over

=item *

C<PlainText> - The message contains plain UTF-8 text.

=item *

C<CustomPayload> - The message is a custom format for the client.

=item *

C<SSML> - The message contains text formatted for voice output.

=item *

C<Composite> - The message contains an escaped JSON object containing
one or more messages. For more information, see Message Groups
(https://docs.aws.amazon.com/lex/latest/dg/howitworks-manage-prompts.html).

=back



=head2 Slots => L<Paws::LexRuntime::StringMap>

  Map of the slots that have been gathered and their values.


=head2 SlotToElicit => Str

  The name of the slot that should be elicited from the user.


=head2 B<REQUIRED> Type => Str

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

C<Delegate> - The next action is determined by Amazon Lex.

=item *

C<ElicitIntent> - The next action is to determine the intent that the
user wants to fulfill.

=item *

C<ElicitSlot> - The next action is to elicit a slot value from the
user.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

