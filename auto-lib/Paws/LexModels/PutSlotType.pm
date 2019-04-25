
package Paws::LexModels::PutSlotType;
  use Moose;
  has Checksum => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'checksum');
  has CreateVersion => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'createVersion');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EnumerationValues => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::EnumerationValue]', traits => ['NameInRequest'], request_name => 'enumerationValues');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has ValueSelectionStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'valueSelectionStrategy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutSlotType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/slottypes/{name}/versions/$LATEST');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::PutSlotTypeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::PutSlotType - Arguments for method PutSlotType on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSlotType on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method PutSlotType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSlotType.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $PutSlotTypeResponse = $models . lex->PutSlotType(
      Name              => 'MySlotTypeName',
      Checksum          => 'MyString',         # OPTIONAL
      CreateVersion     => 1,                  # OPTIONAL
      Description       => 'MyDescription',    # OPTIONAL
      EnumerationValues => [
        {
          Value    => 'MyValue',               # min: 1, max: 140
          Synonyms => [
            'MyValue', ...                     # min: 1, max: 140
          ],                                   # OPTIONAL
        },
        ...
      ],                                       # OPTIONAL
      ValueSelectionStrategy => 'ORIGINAL_VALUE',    # OPTIONAL
    );

    # Results:
    my $Checksum               = $PutSlotTypeResponse->Checksum;
    my $CreateVersion          = $PutSlotTypeResponse->CreateVersion;
    my $CreatedDate            = $PutSlotTypeResponse->CreatedDate;
    my $Description            = $PutSlotTypeResponse->Description;
    my $EnumerationValues      = $PutSlotTypeResponse->EnumerationValues;
    my $LastUpdatedDate        = $PutSlotTypeResponse->LastUpdatedDate;
    my $Name                   = $PutSlotTypeResponse->Name;
    my $ValueSelectionStrategy = $PutSlotTypeResponse->ValueSelectionStrategy;
    my $Version                = $PutSlotTypeResponse->Version;

    # Returns a L<Paws::LexModels::PutSlotTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/PutSlotType>

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



=head2 CreateVersion => Bool





=head2 Description => Str

A description of the slot type.



=head2 EnumerationValues => ArrayRef[L<Paws::LexModels::EnumerationValue>]

A list of C<EnumerationValue> objects that defines the values that the
slot type can take. Each value can have a list of C<synonyms>, which
are additional values that help train the machine learning model about
the values that it resolves for a slot.

When Amazon Lex resolves a slot value, it generates a resolution list
that contains up to five possible values for the slot. If you are using
a Lambda function, this resolution list is passed to the function. If
you are not using a Lambda function you can choose to return the value
that the user entered or the first value in the resolution list as the
slot value. The C<valueSelectionStrategy> field indicates the option to
use.



=head2 B<REQUIRED> Name => Str

The name of the slot type. The name is I<not> case sensitive.

The name can't match a built-in slot type name, or a built-in slot type
name with "AMAZON." removed. For example, because there is a built-in
slot type called C<AMAZON.DATE>, you can't create a custom slot type
called C<DATE>.

For a list of built-in slot types, see Slot Type Reference
(https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference)
in the I<Alexa Skills Kit>.



=head2 ValueSelectionStrategy => Str

Determines the slot resolution strategy that Amazon Lex uses to return
slot type values. The field can be set to one of the following values:

=over

=item *

C<ORIGINAL_VALUE> - Returns the value entered by the user, if the user
value is similar to the slot value.

=item *

C<TOP_RESOLUTION> - If there is a resolution list for the slot, return
the first value in the resolution list as the slot type value. If there
is no resolution list, null is returned.

=back

If you don't specify the C<valueSelectionStrategy>, the default is
C<ORIGINAL_VALUE>.

Valid values are: C<"ORIGINAL_VALUE">, C<"TOP_RESOLUTION">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSlotType in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

