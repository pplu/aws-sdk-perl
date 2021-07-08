
package Paws::ServiceCatalog::ImportAsProvisionedProduct;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has IdempotencyToken => (is => 'ro', isa => 'Str', required => 1);
  has PhysicalId => (is => 'ro', isa => 'Str', required => 1);
  has ProductId => (is => 'ro', isa => 'Str', required => 1);
  has ProvisionedProductName => (is => 'ro', isa => 'Str', required => 1);
  has ProvisioningArtifactId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportAsProvisionedProduct');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::ImportAsProvisionedProductOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ImportAsProvisionedProduct - Arguments for method ImportAsProvisionedProduct on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportAsProvisionedProduct on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method ImportAsProvisionedProduct.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportAsProvisionedProduct.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $ImportAsProvisionedProductOutput =
      $servicecatalog->ImportAsProvisionedProduct(
      IdempotencyToken       => 'MyIdempotencyToken',
      PhysicalId             => 'MyPhysicalId',
      ProductId              => 'MyId',
      ProvisionedProductName => 'MyProvisionedProductName',
      ProvisioningArtifactId => 'MyId',
      AcceptLanguage         => 'MyAcceptLanguage',           # OPTIONAL
      );

    # Results:
    my $RecordDetail = $ImportAsProvisionedProductOutput->RecordDetail;

   # Returns a L<Paws::ServiceCatalog::ImportAsProvisionedProductOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/ImportAsProvisionedProduct>

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code.

=over

=item *

C<en> - English (default)

=item *

C<jp> - Japanese

=item *

C<zh> - Chinese

=back




=head2 B<REQUIRED> IdempotencyToken => Str

A unique identifier that you provide to ensure idempotency. If multiple
requests differ only by the idempotency token, the same response is
returned for each repeated request.



=head2 B<REQUIRED> PhysicalId => Str

The unique identifier of the resource to be imported. It only currently
supports CloudFormation stack IDs.



=head2 B<REQUIRED> ProductId => Str

The product identifier.



=head2 B<REQUIRED> ProvisionedProductName => Str

The user-friendly name of the provisioned product. The value must be
unique for the AWS account. The name cannot be updated after the
product is provisioned.



=head2 B<REQUIRED> ProvisioningArtifactId => Str

The identifier of the provisioning artifact.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportAsProvisionedProduct in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

