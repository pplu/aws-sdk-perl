
package Paws::CodeDeploy::CreateDeploymentGroupOutput;
  use Moose;
  has DeploymentGroupId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'deploymentGroupId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeploymentGroupOutput

=head1 ATTRIBUTES


=head2 DeploymentGroupId => Str

A unique deployment group ID.


=head2 _request_id => Str


=cut

1;