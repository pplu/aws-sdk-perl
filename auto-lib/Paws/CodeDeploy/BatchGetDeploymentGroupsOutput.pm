
package Paws::CodeDeploy::BatchGetDeploymentGroupsOutput;
  use Moose;
  has DeploymentGroupsInfo => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::DeploymentGroupInfo]', traits => ['NameInRequest'], request_name => 'deploymentGroupsInfo' );
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetDeploymentGroupsOutput

=head1 ATTRIBUTES


=head2 DeploymentGroupsInfo => ArrayRef[L<Paws::CodeDeploy::DeploymentGroupInfo>]

Information about the deployment groups.


=head2 ErrorMessage => Str

Information about errors that might have occurred during the API call.


=head2 _request_id => Str


=cut

1;