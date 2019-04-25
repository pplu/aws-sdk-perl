
package Paws::ServiceCatalog::SearchProvisionedProductsOutput;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has ProvisionedProducts => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ProvisionedProductAttribute]');
  has TotalResultsCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::SearchProvisionedProductsOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 ProvisionedProducts => ArrayRef[L<Paws::ServiceCatalog::ProvisionedProductAttribute>]

Information about the provisioned products.


=head2 TotalResultsCount => Int

The number of provisioned products found.


=head2 _request_id => Str


=cut

1;