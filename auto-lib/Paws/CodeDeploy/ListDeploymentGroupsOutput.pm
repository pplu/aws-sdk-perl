
package Paws::CodeDeploy::ListDeploymentGroupsOutput;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'applicationName' );
  has DeploymentGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['Unwrapped'], xmlname => 'deploymentGroups' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListDeploymentGroupsOutput

=head1 ATTRIBUTES


=head2 ApplicationName => Str

The application name.


=head2 DeploymentGroups => ArrayRef[Str|Undef]

A list of corresponding deployment group names.


=head2 NextToken => Str

If a large amount of information is returned, an identifier is also
returned. It can be used in a subsequent list deployment groups call to
return the next set of deployment groups in the list.


=head2 _request_id => Str


=cut

1;