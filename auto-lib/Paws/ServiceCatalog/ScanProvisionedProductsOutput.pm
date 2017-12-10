
package Paws::ServiceCatalog::ScanProvisionedProductsOutput;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has ProvisionedProducts => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ProvisionedProductDetail]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ScanProvisionedProductsOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 ProvisionedProducts => ArrayRef[L<Paws::ServiceCatalog::ProvisionedProductDetail>]

Information about the provisioned products.


=head2 _request_id => Str


=cut

1;