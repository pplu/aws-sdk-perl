
package Paws::CodeDeploy::GetDeploymentConfigOutput;
  use Moose;
  has DeploymentConfigInfo => (is => 'ro', isa => 'Paws::CodeDeploy::DeploymentConfigInfo', traits => ['NameInRequest'], request_name => 'deploymentConfigInfo' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetDeploymentConfigOutput

=head1 ATTRIBUTES


=head2 DeploymentConfigInfo => L<Paws::CodeDeploy::DeploymentConfigInfo>

Information about the deployment configuration.


=head2 _request_id => Str


=cut

1;