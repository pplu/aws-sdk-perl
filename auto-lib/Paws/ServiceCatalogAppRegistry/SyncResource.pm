
package Paws::ServiceCatalogAppRegistry::SyncResource;
  use Moose;
  has Resource => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resource', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SyncResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sync/{resourceType}/{resource}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalogAppRegistry::SyncResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::SyncResource - Arguments for method SyncResource on L<Paws::ServiceCatalogAppRegistry>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SyncResource on the
L<AWS Service Catalog App Registry|Paws::ServiceCatalogAppRegistry> service. Use the attributes of this class
as arguments to method SyncResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SyncResource.

=head1 SYNOPSIS

    my $servicecatalog-appregistry = Paws->service('ServiceCatalogAppRegistry');
    my $SyncResourceResponse = $servicecatalog -appregistry->SyncResource(
      Resource     => 'MyResourceSpecifier',
      ResourceType => 'CFN_STACK',

    );

    # Results:
    my $ActionTaken    = $SyncResourceResponse->ActionTaken;
    my $ApplicationArn = $SyncResourceResponse->ApplicationArn;
    my $ResourceArn    = $SyncResourceResponse->ResourceArn;

    # Returns a L<Paws::ServiceCatalogAppRegistry::SyncResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-appregistry/SyncResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Resource => Str

An entity you can work with and specify with a name or ID. Examples
include an Amazon EC2 instance, an AWS CloudFormation stack, or an
Amazon S3 bucket.



=head2 B<REQUIRED> ResourceType => Str

The type of resource of which the application will be associated.

Valid values are: C<"CFN_STACK">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SyncResource in L<Paws::ServiceCatalogAppRegistry>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

