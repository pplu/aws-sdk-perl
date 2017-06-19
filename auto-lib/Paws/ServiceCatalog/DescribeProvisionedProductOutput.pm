
package Paws::ServiceCatalog::DescribeProvisionedProductOutput;
  use Moose;
  has ProvisionedProductDetail => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisionedProductDetail');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeProvisionedProductOutput

=head1 ATTRIBUTES


=head2 ProvisionedProductDetail => L<Paws::ServiceCatalog::ProvisionedProductDetail>

Detailed provisioned product information.


=head2 _request_id => Str


=cut

1;