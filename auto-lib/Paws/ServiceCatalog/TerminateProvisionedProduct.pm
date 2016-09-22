
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

Paws::ServiceCatalog::TerminateProvisionedProduct - Arguments for method TerminateProvisionedProduct on Paws::ServiceCatalog

=head1 DESCRIPTION

This class represents the parameters used for calling the method TerminateProvisionedProduct on the 
AWS Service Catalog service. Use the attributes of this class
as arguments to method TerminateProvisionedProduct.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TerminateProvisionedProduct.

As an example:

  $service_obj->TerminateProvisionedProduct(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code to use for this operation. Supported language codes
are as follows:

"en" (English)

"jp" (Japanese)

"zh" (Chinese)

If no code is specified, "en" is used as the default.



=head2 IgnoreErrors => Bool

If set to true, AWS Service Catalog stops managing the specified
ProvisionedProduct object even if it cannot delete the underlying
resources.



=head2 ProvisionedProductId => Str

The identifier of the ProvisionedProduct object to terminate. You must
specify either C<ProvisionedProductName> or C<ProvisionedProductId>,
but not both.



=head2 ProvisionedProductName => Str

The name of the ProvisionedProduct object to terminate. You must
specify either C<ProvisionedProductName> or C<ProvisionedProductId>,
but not both.



=head2 B<REQUIRED> TerminateToken => Str

An idempotency token that uniquely identifies the termination request.
This token is only valid during the termination process. After the
ProvisionedProduct object is terminated, further requests to terminate
the same ProvisionedProduct object always return B<ResourceNotFound>
regardless of the value of C<TerminateToken>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TerminateProvisionedProduct in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

