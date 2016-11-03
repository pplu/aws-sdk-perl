
package Paws::CodeDeploy::CreateDeploymentConfigOutput;
  use Moose;
  has DeploymentConfigId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentConfigId' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeploymentConfigOutput

=head1 ATTRIBUTES


=head2 DeploymentConfigId => Str

A unique deployment configuration ID.




=cut

1;