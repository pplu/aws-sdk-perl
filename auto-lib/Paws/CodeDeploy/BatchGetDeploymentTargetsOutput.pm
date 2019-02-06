
package Paws::CodeDeploy::BatchGetDeploymentTargetsOutput;
  use Moose;
  has DeploymentTargets => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::DeploymentTarget]', traits => ['NameInRequest'], request_name => 'deploymentTargets' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetDeploymentTargetsOutput

=head1 ATTRIBUTES


=head2 DeploymentTargets => ArrayRef[L<Paws::CodeDeploy::DeploymentTarget>]

A list of target objects for a deployment. Each target object contains
details about the target, such as its status and lifecycle events. The
type of the target objects depends on the deployment' compute platform.

=over

=item *

B<EC2/On-premises>: Each target object is an EC2 or on-premises
instance.

=item *

B<AWS Lambda>: The target object is a specific version of an AWS Lambda
function.

=item *

B<Amazon ECS>: The target object is an Amazon ECS service.

=back



=head2 _request_id => Str


=cut

1;