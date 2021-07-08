
package Paws::ServiceCatalogAppRegistry::AssociateResource;
  use Moose;
  has Application => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application', required => 1);
  has Resource => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resource', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{application}/resources/{resourceType}/{resource}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalogAppRegistry::AssociateResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::AssociateResource - Arguments for method AssociateResource on L<Paws::ServiceCatalogAppRegistry>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateResource on the
L<AWS Service Catalog App Registry|Paws::ServiceCatalogAppRegistry> service. Use the attributes of this class
as arguments to method AssociateResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateResource.

=head1 SYNOPSIS

    my $servicecatalog-appregistry = Paws->service('ServiceCatalogAppRegistry');
    my $AssociateResourceResponse =
      $servicecatalog -appregistry->AssociateResource(
      Application  => 'MyApplicationSpecifier',
      Resource     => 'MyResourceSpecifier',
      ResourceType => 'CFN_STACK',

      );

    # Results:
    my $ApplicationArn = $AssociateResourceResponse->ApplicationArn;
    my $ResourceArn    = $AssociateResourceResponse->ResourceArn;

# Returns a L<Paws::ServiceCatalogAppRegistry::AssociateResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-appregistry/AssociateResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Application => Str

The name or ID of the application.



=head2 B<REQUIRED> Resource => Str

The name or ID of the resource of which the application will be
associated.



=head2 B<REQUIRED> ResourceType => Str

The type of resource of which the application will be associated.

Valid values are: C<"CFN_STACK">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateResource in L<Paws::ServiceCatalogAppRegistry>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

