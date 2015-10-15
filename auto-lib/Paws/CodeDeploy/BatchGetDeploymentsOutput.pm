
package Paws::CodeDeploy::BatchGetDeploymentsOutput;
  use Moose;
  has DeploymentsInfo => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::DeploymentInfo]', traits => ['Unwrapped'], xmlname => 'deploymentsInfo' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetDeploymentsOutput

=head1 ATTRIBUTES

=head2 DeploymentsInfo => ArrayRef[L<Paws::CodeDeploy::DeploymentInfo>]

  Information about the deployments.


=cut

1;