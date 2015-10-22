
package Paws::CodeDeploy::ListDeploymentInstancesOutput;
  use Moose;
  has InstancesList => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'instancesList' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListDeploymentInstancesOutput

=head1 ATTRIBUTES

=head2 InstancesList => ArrayRef[Str]

  A list of instances IDs.
=head2 NextToken => Str

  If the amount of information that is returned is significantly large,
an identifier will also be returned, which can be used in a subsequent
list deployment instances call to return the next set of deployment
instances in the list.


=cut

1;