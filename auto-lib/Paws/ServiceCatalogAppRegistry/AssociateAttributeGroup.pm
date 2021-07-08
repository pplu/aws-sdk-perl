
package Paws::ServiceCatalogAppRegistry::AssociateAttributeGroup;
  use Moose;
  has Application => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application', required => 1);
  has AttributeGroup => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'attributeGroup', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateAttributeGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{application}/attribute-groups/{attributeGroup}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalogAppRegistry::AssociateAttributeGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::AssociateAttributeGroup - Arguments for method AssociateAttributeGroup on L<Paws::ServiceCatalogAppRegistry>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateAttributeGroup on the
L<AWS Service Catalog App Registry|Paws::ServiceCatalogAppRegistry> service. Use the attributes of this class
as arguments to method AssociateAttributeGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateAttributeGroup.

=head1 SYNOPSIS

    my $servicecatalog-appregistry = Paws->service('ServiceCatalogAppRegistry');
    my $AssociateAttributeGroupResponse =
      $servicecatalog -appregistry->AssociateAttributeGroup(
      Application    => 'MyApplicationSpecifier',
      AttributeGroup => 'MyAttributeGroupSpecifier',

      );

    # Results:
    my $ApplicationArn    = $AssociateAttributeGroupResponse->ApplicationArn;
    my $AttributeGroupArn = $AssociateAttributeGroupResponse->AttributeGroupArn;

# Returns a L<Paws::ServiceCatalogAppRegistry::AssociateAttributeGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-appregistry/AssociateAttributeGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Application => Str

The name or ID of the application.



=head2 B<REQUIRED> AttributeGroup => Str

The name or ID of the attribute group that holds the attributes to
describe the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateAttributeGroup in L<Paws::ServiceCatalogAppRegistry>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

