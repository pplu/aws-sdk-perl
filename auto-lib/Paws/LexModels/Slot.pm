package Paws::LexModels::Slot;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', request_name => 'description', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Priority => (is => 'ro', isa => 'Int', xmlname => 'priority', request_name => 'priority', traits => ['Unwrapped','NameInRequest']);
  has ResponseCard => (is => 'ro', isa => 'Str', xmlname => 'responseCard', request_name => 'responseCard', traits => ['Unwrapped','NameInRequest']);
  has SampleUtterances => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'sampleUtterances', request_name => 'sampleUtterances', traits => ['Unwrapped','NameInRequest']);
  has SlotConstraint => (is => 'ro', isa => 'Str', xmlname => 'slotConstraint', request_name => 'slotConstraint', traits => ['Unwrapped','NameInRequest'], required => 1);
  has SlotType => (is => 'ro', isa => 'Str', xmlname => 'slotType', request_name => 'slotType', traits => ['Unwrapped','NameInRequest']);
  has SlotTypeVersion => (is => 'ro', isa => 'Str', xmlname => 'slotTypeVersion', request_name => 'slotTypeVersion', traits => ['Unwrapped','NameInRequest']);
  has ValueElicitationPrompt => (is => 'ro', isa => 'Paws::LexModels::Prompt', xmlname => 'valueElicitationPrompt', request_name => 'valueElicitationPrompt', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::Slot

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::Slot object:

  $service_obj->Method(Att1 => { Description => $value, ..., ValueElicitationPrompt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::Slot object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Identifies the version of a specific slot.

=head1 ATTRIBUTES


=head2 Description => Str

  A description of the slot.


=head2 B<REQUIRED> Name => Str

  The name of the slot.


=head2 Priority => Int

  Specifies the order in which to elicit slot values from the user. For
example, if the intent has two slots with priorities 1 and 2, AWS
Amazon Lex first elicits a value for the slot with priority 1.

If multiple slots share the same priority, the order in which Amazon
Lex elicits values is arbitrary.


=head2 ResponseCard => Str

  A set of possible responses for the slot type used by text-based
clients. A user chooses an option from the response card, instead of
using text to reply.


=head2 SampleUtterances => ArrayRef[Str|Undef]

  If you know a specific pattern with which users might respond to an
Amazon Lex request for a slot value, you can provide those utterances
to improve accuracy. This is optional. In most cases, Amazon Lex is
capable of understanding user utterances.


=head2 B<REQUIRED> SlotConstraint => Str

  Specifies whether the slot is required or optional.


=head2 SlotType => Str

  The type of the slot, either a custom slot type that you defined or one
of the built-in slot types.


=head2 SlotTypeVersion => Str

  The version of the slot type.


=head2 ValueElicitationPrompt => L<Paws::LexModels::Prompt>

  The prompt that Amazon Lex uses to elicit the slot value from the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

