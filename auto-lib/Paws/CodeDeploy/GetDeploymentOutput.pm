
package Paws::CodeDeploy::GetDeploymentOutput;
  use Moose;
  has DeploymentInfo => (is => 'ro', isa => 'Paws::CodeDeploy::DeploymentInfo', traits => ['NameInRequest'], request_name => 'deploymentInfo' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetDeploymentOutput

=head1 ATTRIBUTES


=head2 DeploymentInfo => L<Paws::CodeDeploy::DeploymentInfo>

Information about the deployment.


=head2 _request_id => Str


=cut

1;