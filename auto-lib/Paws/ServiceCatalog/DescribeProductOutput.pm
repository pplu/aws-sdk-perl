
package Paws::ServiceCatalog::DescribeProductOutput;
  use Moose;
  has ProductViewSummary => (is => 'ro', isa => 'Paws::ServiceCatalog::ProductViewSummary');
  has ProvisioningArtifacts => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ProvisioningArtifact]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeProductOutput

=head1 ATTRIBUTES


=head2 ProductViewSummary => L<Paws::ServiceCatalog::ProductViewSummary>

The summary metadata about the specified product.


=head2 ProvisioningArtifacts => ArrayRef[L<Paws::ServiceCatalog::ProvisioningArtifact>]

A list of provisioning artifact objects for the specified product. The
C<ProvisioningArtifacts> parameter represent the ways the specified
product can be provisioned.


=head2 _request_id => Str


=cut

1;