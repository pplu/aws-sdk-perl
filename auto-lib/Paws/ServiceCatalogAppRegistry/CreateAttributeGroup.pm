
package Paws::ServiceCatalogAppRegistry::CreateAttributeGroup;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attributes', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ServiceCatalogAppRegistry::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAttributeGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/attribute-groups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalogAppRegistry::CreateAttributeGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::CreateAttributeGroup - Arguments for method CreateAttributeGroup on L<Paws::ServiceCatalogAppRegistry>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAttributeGroup on the
L<AWS Service Catalog App Registry|Paws::ServiceCatalogAppRegistry> service. Use the attributes of this class
as arguments to method CreateAttributeGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAttributeGroup.

=head1 SYNOPSIS

    my $servicecatalog-appregistry = Paws->service('ServiceCatalogAppRegistry');
    my $CreateAttributeGroupResponse =
      $servicecatalog -appregistry->CreateAttributeGroup(
      Attributes  => 'MyAttributes',
      ClientToken => 'MyClientToken',
      Name        => 'MyName',
      Description => 'MyDescription',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $AttributeGroup = $CreateAttributeGroupResponse->AttributeGroup;

# Returns a L<Paws::ServiceCatalogAppRegistry::CreateAttributeGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-appregistry/CreateAttributeGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => Str

A JSON string in the form of nested key-value pairs that represent the
attributes in the group and describes an application and its
components.



=head2 B<REQUIRED> ClientToken => Str

A unique identifier that you provide to ensure idempotency. If you
retry a request that completed successfully using the same client token
and the same parameters, the retry succeeds without performing any
further actions. If you retry a successful request using the same
client token, but one or more of the parameters are different, the
retry fails.



=head2 Description => Str

The description of the attribute group that the user provides.



=head2 B<REQUIRED> Name => Str

The name of the attribute group.



=head2 Tags => L<Paws::ServiceCatalogAppRegistry::Tags>

Key-value pairs you can use to associate with the attribute group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAttributeGroup in L<Paws::ServiceCatalogAppRegistry>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

