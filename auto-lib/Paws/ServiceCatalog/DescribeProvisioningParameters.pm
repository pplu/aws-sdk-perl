
package Paws::ServiceCatalog::DescribeProvisioningParameters;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has PathId => (is => 'ro', isa => 'Str');
  has ProductId => (is => 'ro', isa => 'Str', required => 1);
  has ProvisioningArtifactId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProvisioningParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::DescribeProvisioningParametersOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeProvisioningParameters - Arguments for method DescribeProvisioningParameters on Paws::ServiceCatalog

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProvisioningParameters on the 
AWS Service Catalog service. Use the attributes of this class
as arguments to method DescribeProvisioningParameters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProvisioningParameters.

As an example:

  $service_obj->DescribeProvisioningParameters(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

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




=head2 PathId => Str

The identifier of the path for this product's provisioning. This value
is optional if the product has a default path, and is required if there
is more than one path for the specified product.



=head2 B<REQUIRED> ProductId => Str

The product identifier.



=head2 B<REQUIRED> ProvisioningArtifactId => Str

The provisioning artifact identifier for this product. This is
sometimes referred to as the product version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProvisioningParameters in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

