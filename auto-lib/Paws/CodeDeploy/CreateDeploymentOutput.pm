
package Paws::CodeDeploy::CreateDeploymentOutput;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deploymentId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeploymentOutput

=head1 ATTRIBUTES


=head2 DeploymentId => Str

A unique deployment ID.


=head2 _request_id => Str


=cut

1;