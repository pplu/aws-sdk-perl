
package Paws::CodeDeploy::GetDeploymentGroupOutput;
  use Moose;
  has DeploymentGroupInfo => (is => 'ro', isa => 'Paws::CodeDeploy::DeploymentGroupInfo', traits => ['Unwrapped'], xmlname => 'deploymentGroupInfo' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetDeploymentGroupOutput

=head1 ATTRIBUTES


=head2 DeploymentGroupInfo => L<Paws::CodeDeploy::DeploymentGroupInfo>

  Information about the deployment group.


=cut

1;