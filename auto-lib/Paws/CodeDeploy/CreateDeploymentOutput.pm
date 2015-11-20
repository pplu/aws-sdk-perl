
package Paws::CodeDeploy::CreateDeploymentOutput;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deploymentId' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeploymentOutput

=head1 ATTRIBUTES


=head2 DeploymentId => Str

  A unique deployment ID.


=cut

1;