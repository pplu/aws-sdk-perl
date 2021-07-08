
package Paws::ServiceCatalog::DescribeProductOutput;
  use Moose;
  has Budgets => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::BudgetDetail]');
  has LaunchPaths => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::LaunchPath]');
  has ProductViewSummary => (is => 'ro', isa => 'Paws::ServiceCatalog::ProductViewSummary');
  has ProvisioningArtifacts => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ProvisioningArtifact]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeProductOutput

=head1 ATTRIBUTES


=head2 Budgets => ArrayRef[L<Paws::ServiceCatalog::BudgetDetail>]

Information about the associated budgets.


=head2 LaunchPaths => ArrayRef[L<Paws::ServiceCatalog::LaunchPath>]

Information about the associated launch paths.


=head2 ProductViewSummary => L<Paws::ServiceCatalog::ProductViewSummary>

Summary information about the product view.


=head2 ProvisioningArtifacts => ArrayRef[L<Paws::ServiceCatalog::ProvisioningArtifact>]

Information about the provisioning artifacts for the specified product.


=head2 _request_id => Str


=cut

1;