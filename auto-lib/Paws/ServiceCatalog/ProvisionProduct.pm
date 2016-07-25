
package Paws::ServiceCatalog::ProvisionProduct;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has NotificationArns => (is => 'ro', isa => 'ArrayRef[Str]');
  has PathId => (is => 'ro', isa => 'Str');
  has ProductId => (is => 'ro', isa => 'Str', required => 1);
  has ProvisionedProductName => (is => 'ro', isa => 'Str', required => 1);
  has ProvisioningArtifactId => (is => 'ro', isa => 'Str', required => 1);
  has ProvisioningParameters => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ProvisioningParameter]');
  has ProvisionToken => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ProvisionProduct');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::ProvisionProductOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ProvisionProduct - Arguments for method ProvisionProduct on Paws::ServiceCatalog

=head1 DESCRIPTION

This class represents the parameters used for calling the method ProvisionProduct on the 
AWS Service Catalog service. Use the attributes of this class
as arguments to method ProvisionProduct.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ProvisionProduct.

As an example:

  $service_obj->ProvisionProduct(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

Optional language code. Supported language codes are as follows:

"en" (English)

"jp" (Japanese)

"zh" (Chinese)

If no code is specified, "en" is used as the default.



=head2 NotificationArns => ArrayRef[Str]

Passed to CloudFormation. The SNS topic ARNs to which to publish
stack-related events.



=head2 PathId => Str

The identifier of the path for this product's provisioning. This value
is optional if the product has a default path, and is required if there
is more than one path for the specified product.



=head2 B<REQUIRED> ProductId => Str

The identifier of the product.



=head2 B<REQUIRED> ProvisionedProductName => Str

A user-friendly name to identify the ProvisionedProduct object. This
value must be unique for the AWS account and cannot be updated after
the product is provisioned.



=head2 B<REQUIRED> ProvisioningArtifactId => Str

The provisioning artifact identifier for this product.



=head2 ProvisioningParameters => ArrayRef[L<Paws::ServiceCatalog::ProvisioningParameter>]

Parameters specified by the administrator that are required for
provisioning the product.



=head2 B<REQUIRED> ProvisionToken => Str

An idempotency token that uniquely identifies the provisioning request.



=head2 Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]

(Optional) A list of tags to use as provisioning options.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ProvisionProduct in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

