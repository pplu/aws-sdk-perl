
package Paws::ServiceCatalog::DescribeProductViewOutput;
  use Moose;
  has ProductViewSummary => (is => 'ro', isa => 'Paws::ServiceCatalog::ProductViewSummary');
  has ProvisioningArtifacts => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ProvisioningArtifact]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeProductViewOutput

=head1 ATTRIBUTES


=head2 ProductViewSummary => L<Paws::ServiceCatalog::ProductViewSummary>

Summary information about the product.


=head2 ProvisioningArtifacts => ArrayRef[L<Paws::ServiceCatalog::ProvisioningArtifact>]

Information about the provisioning artifacts for the product.


=head2 _request_id => Str


=cut

1;