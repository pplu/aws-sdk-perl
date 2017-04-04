
package Paws::CodeDeploy::ListDeploymentConfigsOutput;
  use Moose;
  has DeploymentConfigsList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'deploymentConfigsList' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListDeploymentConfigsOutput

=head1 ATTRIBUTES


=head2 DeploymentConfigsList => ArrayRef[Str|Undef]

A list of deployment configurations, including built-in configurations
such as CodeDeployDefault.OneAtATime.


=head2 NextToken => Str

If a large amount of information is returned, an identifier is also
returned. It can be used in a subsequent list deployment configurations
call to return the next set of deployment configurations in the list.


=head2 _request_id => Str


=cut

1;