
package Paws::CodeDeploy::CreateDeploymentOutput;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeploymentOutput

=head1 ATTRIBUTES


=head2 DeploymentId => Str

The unique ID of a deployment.


=head2 _request_id => Str


=cut

1;