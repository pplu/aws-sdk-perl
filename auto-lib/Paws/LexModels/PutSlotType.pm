
package Paws::LexModels::PutSlotType;
  use Moose;
  has Checksum => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EnumerationValues => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::EnumerationValue]');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutSlotType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/slottypes/{name}/versions/$LATEST');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::PutSlotTypeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::PutSlotType - Arguments for method PutSlotType on Paws::LexModels

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSlotType on the 
Amazon Lex Model Building Service service. Use the attributes of this class
as arguments to method PutSlotType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSlotType.

As an example:

  $service_obj->PutSlotType(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Checksum => Str

Identifies a specific revision of the C<$LATEST> version.

When you create a new slot type, leave the C<checksum> field blank. If
you specify a checksum you get a C<BadRequestException> exception.

When you want to update a slot type, set the C<checksum> field to the
checksum of the most recent revision of the C<$LATEST> version. If you
don't specify the C< checksum> field, or if the checksum does not match
the C<$LATEST> version, you get a C<PreconditionFailedException>
exception.



=head2 Description => Str

A description of the slot type.



=head2 EnumerationValues => ArrayRef[L<Paws::LexModels::EnumerationValue>]

A list of C<EnumerationValue> objects that defines the values that the
slot type can take.



=head2 B<REQUIRED> Name => Str

The name of the slot type. The name is I<not> case sensitive.

The name can't match a built-in slot type name, or a built-in slot type
name with "AMAZON." removed. For example, because there is a built-in
slot type called C<AMAZON.DATE>, you can't create a custom slot type
called C<DATE>.

For a list of built-in slot types, see Slot Type Reference in the
I<Alexa Skills Kit>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSlotType in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

