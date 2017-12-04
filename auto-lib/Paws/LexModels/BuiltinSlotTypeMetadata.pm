package Paws::LexModels::BuiltinSlotTypeMetadata;
  use Moose;
  has Signature => (is => 'ro', isa => 'Str', request_name => 'signature', traits => ['NameInRequest']);
  has SupportedLocales => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'supportedLocales', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::BuiltinSlotTypeMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::BuiltinSlotTypeMetadata object:

  $service_obj->Method(Att1 => { Signature => $value, ..., SupportedLocales => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::BuiltinSlotTypeMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->Signature

=head1 DESCRIPTION

Provides information about a built in slot type.

=head1 ATTRIBUTES


=head2 Signature => Str

  A unique identifier for the built-in slot type. To find the signature
for a slot type, see Slot Type Reference
(https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference)
in the I<Alexa Skills Kit>.


=head2 SupportedLocales => ArrayRef[Str|Undef]

  A list of target locales for the slot.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

