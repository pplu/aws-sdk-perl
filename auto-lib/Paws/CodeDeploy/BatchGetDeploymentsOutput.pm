
package Paws::CodeDeploy::BatchGetDeploymentsOutput;
  use Moose;
  has DeploymentsInfo => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::DeploymentInfo]', traits => ['NameInRequest'], request_name => 'deploymentsInfo' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetDeploymentsOutput

=head1 ATTRIBUTES


=head2 DeploymentsInfo => ArrayRef[L<Paws::CodeDeploy::DeploymentInfo>]

Information about the deployments.


=head2 _request_id => Str


=cut

1;