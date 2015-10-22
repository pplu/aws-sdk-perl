
package Paws::CodeDeploy::ListDeploymentGroupsOutput;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'applicationName' );
  has DeploymentGroups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'deploymentGroups' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListDeploymentGroupsOutput

=head1 ATTRIBUTES

=head2 ApplicationName => Str

  The application name.
=head2 DeploymentGroups => ArrayRef[Str]

  A list of corresponding deployment group names.
=head2 NextToken => Str

  If the amount of information that is returned is significantly large,
an identifier will also be returned, which can be used in a subsequent
list deployment groups call to return the next set of deployment groups
in the list.


=cut

1;