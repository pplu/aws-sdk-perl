
package Paws::LexModels::CreateSlotTypeVersion;
  use Moose;
  has Checksum => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'checksum');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSlotTypeVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/slottypes/{name}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::CreateSlotTypeVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::CreateSlotTypeVersion - Arguments for method CreateSlotTypeVersion on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSlotTypeVersion on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method CreateSlotTypeVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSlotTypeVersion.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $CreateSlotTypeVersionResponse = $models . lex->CreateSlotTypeVersion(
      Name     => 'MySlotTypeName',
      Checksum => 'MyString',         # OPTIONAL
    );

    # Results:
    my $Checksum          = $CreateSlotTypeVersionResponse->Checksum;
    my $CreatedDate       = $CreateSlotTypeVersionResponse->CreatedDate;
    my $Description       = $CreateSlotTypeVersionResponse->Description;
    my $EnumerationValues = $CreateSlotTypeVersionResponse->EnumerationValues;
    my $LastUpdatedDate   = $CreateSlotTypeVersionResponse->LastUpdatedDate;
    my $Name              = $CreateSlotTypeVersionResponse->Name;
    my $ValueSelectionStrategy =
      $CreateSlotTypeVersionResponse->ValueSelectionStrategy;
    my $Version = $CreateSlotTypeVersionResponse->Version;

    # Returns a L<Paws::LexModels::CreateSlotTypeVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/CreateSlotTypeVersion>

=head1 ATTRIBUTES


=head2 Checksum => Str

Checksum for the C<$LATEST> version of the slot type that you want to
publish. If you specify a checksum and the C<$LATEST> version of the
slot type has a different checksum, Amazon Lex returns a
C<PreconditionFailedException> exception and doesn't publish the new
version. If you don't specify a checksum, Amazon Lex publishes the
C<$LATEST> version.



=head2 B<REQUIRED> Name => Str

The name of the slot type that you want to create a new version for.
The name is case sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSlotTypeVersion in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

