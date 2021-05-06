
package Paws::CodeDeploy::GetDeploymentGroupOutput;
  use Moose;
  has DeploymentGroupInfo => (is => 'ro', isa => 'Paws::CodeDeploy::DeploymentGroupInfo', traits => ['NameInRequest'], request_name => 'deploymentGroupInfo' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetDeploymentGroupOutput

=head1 ATTRIBUTES


=head2 DeploymentGroupInfo => L<Paws::CodeDeploy::DeploymentGroupInfo>

Information about the deployment group.


=head2 _request_id => Str


=cut

1;