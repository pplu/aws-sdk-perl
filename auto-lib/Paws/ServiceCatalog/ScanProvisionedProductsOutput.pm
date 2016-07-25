
package Paws::ServiceCatalog::ScanProvisionedProductsOutput;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has ProvisionedProducts => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ProvisionedProductDetail]');


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ScanProvisionedProductsOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next page of results for this
operation. If there are no more pages, this value is null.



=head2 ProvisionedProducts => ArrayRef[L<Paws::ServiceCatalog::ProvisionedProductDetail>]

A list of ProvisionedProduct detail objects.




=cut

1;