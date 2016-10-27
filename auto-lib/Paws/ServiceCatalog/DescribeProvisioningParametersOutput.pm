
package Paws::ServiceCatalog::DescribeProvisioningParametersOutput;
  use Moose;
  has ConstraintSummaries => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ConstraintSummary]');
  has ProvisioningArtifactParameters => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ProvisioningArtifactParameter]');
  has UsageInstructions => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::UsageInstruction]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeProvisioningParametersOutput

=head1 ATTRIBUTES


=head2 ConstraintSummaries => ArrayRef[L<Paws::ServiceCatalog::ConstraintSummary>]

The list of constraint summaries that apply to provisioning this
product.



=head2 ProvisioningArtifactParameters => ArrayRef[L<Paws::ServiceCatalog::ProvisioningArtifactParameter>]

The list of parameters used to successfully provision the product. Each
parameter includes a list of allowable values and additional metadata
about each parameter.



=head2 UsageInstructions => ArrayRef[L<Paws::ServiceCatalog::UsageInstruction>]

Any additional metadata specifically related to the provisioning of the
product. For example, see the C<Version> field of the CloudFormation
template.




=cut

1;