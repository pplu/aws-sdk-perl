
package Paws::CodeDeploy::GetDeploymentOutput;
  use Moose;
  has DeploymentInfo => (is => 'ro', isa => 'Paws::CodeDeploy::DeploymentInfo', traits => ['Unwrapped'], xmlname => 'deploymentInfo' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetDeploymentOutput

=head1 ATTRIBUTES


=head2 DeploymentInfo => L<Paws::CodeDeploy::DeploymentInfo>

  Information about the deployment.


=cut

1;