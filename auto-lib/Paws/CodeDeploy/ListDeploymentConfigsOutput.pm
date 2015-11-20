
package Paws::CodeDeploy::ListDeploymentConfigsOutput;
  use Moose;
  has DeploymentConfigsList => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'deploymentConfigsList' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListDeploymentConfigsOutput

=head1 ATTRIBUTES


=head2 DeploymentConfigsList => ArrayRef[Str]

  A list of deployment configurations, including the built-in
configurations such as CodeDeployDefault.OneAtATime.

=head2 NextToken => Str

  If the amount of information that is returned is significantly large,
an identifier will also be returned, which can be used in a subsequent
list deployment configurations call to return the next set of
deployment configurations in the list.


=cut

1;