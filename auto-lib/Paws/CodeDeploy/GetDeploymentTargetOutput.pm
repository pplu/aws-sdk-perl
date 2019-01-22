
package Paws::CodeDeploy::GetDeploymentTargetOutput;
  use Moose;
  has DeploymentTarget => (is => 'ro', isa => 'Paws::CodeDeploy::DeploymentTarget', traits => ['NameInRequest'], request_name => 'deploymentTarget' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetDeploymentTargetOutput

=head1 ATTRIBUTES


=head2 DeploymentTarget => L<Paws::CodeDeploy::DeploymentTarget>

A deployment target that contains information about a deployment such
as its status, lifecyle events, and when it was last updated. It also
contains metadata about the deployment target. The deployment target
metadata depends on the deployment target's type (C<instanceTarget>,
C<lambdaTarget>, or C<ecsTarget>).


=head2 _request_id => Str


=cut

1;