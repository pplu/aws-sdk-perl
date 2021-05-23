
package Paws::ServiceCatalogAppRegistry::UpdateAttributeGroup;
  use Moose;
  has AttributeGroup => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'attributeGroup', required => 1);
  has Attributes => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attributes');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAttributeGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/attribute-groups/{attributeGroup}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalogAppRegistry::UpdateAttributeGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::UpdateAttributeGroup - Arguments for method UpdateAttributeGroup on L<Paws::ServiceCatalogAppRegistry>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAttributeGroup on the
L<AWS Service Catalog App Registry|Paws::ServiceCatalogAppRegistry> service. Use the attributes of this class
as arguments to method UpdateAttributeGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAttributeGroup.

=head1 SYNOPSIS

    my $servicecatalog-appregistry = Paws->service('ServiceCatalogAppRegistry');
    my $UpdateAttributeGroupResponse =
      $servicecatalog -appregistry->UpdateAttributeGroup(
      AttributeGroup => 'MyAttributeGroupSpecifier',
      Attributes     => 'MyAttributes',                # OPTIONAL
      Description    => 'MyDescription',               # OPTIONAL
      Name           => 'MyName',                      # OPTIONAL
      );

    # Results:
    my $AttributeGroup = $UpdateAttributeGroupResponse->AttributeGroup;

# Returns a L<Paws::ServiceCatalogAppRegistry::UpdateAttributeGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-appregistry/UpdateAttributeGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeGroup => Str

The name or ID of the attribute group that holds the attributes to
describe the application.



=head2 Attributes => Str

A JSON string in the form of nested key-value pairs that represent the
attributes in the group and describes an application and its
components.



=head2 Description => Str

The description of the attribute group that the user provides.



=head2 Name => Str

The new name of the attribute group. The name must be unique in the
region in which you are updating the attribute group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAttributeGroup in L<Paws::ServiceCatalogAppRegistry>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

