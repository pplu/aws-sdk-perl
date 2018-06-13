
package Paws::ServiceCatalog::TerminateProvisionedProduct;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has IgnoreErrors => (is => 'ro', isa => 'Bool');
  has ProvisionedProductId => (is => 'ro', isa => 'Str');
  has ProvisionedProductName => (is => 'ro', isa => 'Str');
  has TerminateToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateProvisionedProduct');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::TerminateProvisionedProductOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::TerminateProvisionedProduct - Arguments for method TerminateProvisionedProduct on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TerminateProvisionedProduct on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method TerminateProvisionedProduct.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TerminateProvisionedProduct.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $TerminateProvisionedProductOutput =
      $servicecatalog->TerminateProvisionedProduct(
      TerminateToken         => 'MyIdempotencyToken',
      AcceptLanguage         => 'MyAcceptLanguage',                 # OPTIONAL
      IgnoreErrors           => 1,                                  # OPTIONAL
      ProvisionedProductId   => 'MyId',                             # OPTIONAL
      ProvisionedProductName => 'MyProvisionedProductNameOrArn',    # OPTIONAL
      );

    # Results:
    my $RecordDetail = $TerminateProvisionedProductOutput->RecordDetail;

  # Returns a L<Paws::ServiceCatalog::TerminateProvisionedProductOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/TerminateProvisionedProduct>

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




=head2 IgnoreErrors => Bool

If set to true, AWS Service Catalog stops managing the specified
provisioned product even if it cannot delete the underlying resources.



=head2 ProvisionedProductId => Str

The identifier of the provisioned product. You cannot specify both
C<ProvisionedProductName> and C<ProvisionedProductId>.



=head2 ProvisionedProductName => Str

The name of the provisioned product. You cannot specify both
C<ProvisionedProductName> and C<ProvisionedProductId>.



=head2 B<REQUIRED> TerminateToken => Str

An idempotency token that uniquely identifies the termination request.
This token is only valid during the termination process. After the
provisioned product is terminated, subsequent requests to terminate the
same provisioned product always return B<ResourceNotFound>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TerminateProvisionedProduct in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

