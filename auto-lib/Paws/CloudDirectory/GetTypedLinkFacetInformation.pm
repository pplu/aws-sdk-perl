
package Paws::CloudDirectory::GetTypedLinkFacetInformation;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SchemaArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTypedLinkFacetInformation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/typedlink/facet/get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::GetTypedLinkFacetInformationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::GetTypedLinkFacetInformation - Arguments for method GetTypedLinkFacetInformation on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTypedLinkFacetInformation on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method GetTypedLinkFacetInformation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTypedLinkFacetInformation.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $GetTypedLinkFacetInformationResponse =
      $clouddirectory->GetTypedLinkFacetInformation(
      Name      => 'MyTypedLinkName',
      SchemaArn => 'MyArn',

      );

    # Results:
    my $IdentityAttributeOrder =
      $GetTypedLinkFacetInformationResponse->IdentityAttributeOrder;

# Returns a L<Paws::CloudDirectory::GetTypedLinkFacetInformationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/GetTypedLinkFacetInformation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The unique name of the typed link facet.



=head2 B<REQUIRED> SchemaArn => Str

The Amazon Resource Name (ARN) that is associated with the schema. For
more information, see arns.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTypedLinkFacetInformation in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

