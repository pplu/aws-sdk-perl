
package Paws::CodeDeploy::CreateDeploymentConfigOutput;
  use Moose;
  has DeploymentConfigId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentConfigId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeploymentConfigOutput

=head1 ATTRIBUTES


=head2 DeploymentConfigId => Str

A unique deployment configuration ID.


=head2 _request_id => Str


=cut

1;