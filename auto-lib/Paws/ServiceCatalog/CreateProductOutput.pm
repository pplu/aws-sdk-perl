
package Paws::ServiceCatalog::CreateProductOutput;
  use Moose;
  has ProductViewDetail => (is => 'ro', isa => 'Paws::ServiceCatalog::ProductViewDetail');
  has ProvisioningArtifactDetail => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisioningArtifactDetail');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CreateProductOutput

=head1 ATTRIBUTES


=head2 ProductViewDetail => L<Paws::ServiceCatalog::ProductViewDetail>

Information about the product view.


=head2 ProvisioningArtifactDetail => L<Paws::ServiceCatalog::ProvisioningArtifactDetail>

Information about the provisioning artifact.


=head2 Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]

Information about the tags associated with the product.


=head2 _request_id => Str


=cut

1;