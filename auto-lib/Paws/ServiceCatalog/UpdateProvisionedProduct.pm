
package Paws::ServiceCatalog::UpdateProvisionedProduct;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has PathId => (is => 'ro', isa => 'Str');
  has ProductId => (is => 'ro', isa => 'Str');
  has ProvisionedProductId => (is => 'ro', isa => 'Str');
  has ProvisionedProductName => (is => 'ro', isa => 'Str');
  has ProvisioningArtifactId => (is => 'ro', isa => 'Str');
  has ProvisioningParameters => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::UpdateProvisioningParameter]');
  has UpdateToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProvisionedProduct');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::UpdateProvisionedProductOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateProvisionedProduct - Arguments for method UpdateProvisionedProduct on Paws::ServiceCatalog

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProvisionedProduct on the 
AWS Service Catalog service. Use the attributes of this class
as arguments to method UpdateProvisionedProduct.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProvisionedProduct.

As an example:

  $service_obj->UpdateProvisionedProduct(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

Optional language code. Supported language codes are as follows:

"en" (English)

"jp" (Japanese)

"zh" (Chinese)

If no code is specified, "en" is used as the default.



=head2 PathId => Str

The identifier of the path to use in the updated ProvisionedProduct
object. This value is optional if the product has a default path, and
is required if there is more than one path for the specified product.



=head2 ProductId => Str

The identifier of the ProvisionedProduct object.



=head2 ProvisionedProductId => Str

The identifier of the ProvisionedProduct object to update. You must
specify either C<ProvisionedProductName> or C<ProvisionedProductId>,
but not both.



=head2 ProvisionedProductName => Str

The updated name of the ProvisionedProduct object . You must specify
either C<ProvisionedProductName> or C<ProvisionedProductId>, but not
both.



=head2 ProvisioningArtifactId => Str

The provisioning artifact identifier for this product.



=head2 ProvisioningParameters => ArrayRef[L<Paws::ServiceCatalog::UpdateProvisioningParameter>]

A list of C<ProvisioningParameter> objects used to update the
ProvisionedProduct object.



=head2 B<REQUIRED> UpdateToken => Str

The idempotency token that uniquely identifies the provisioning update
request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProvisionedProduct in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

