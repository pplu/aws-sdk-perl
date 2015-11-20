
package Paws::CodeDeploy::ListOnPremisesInstancesOutput;
  use Moose;
  has InstanceNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'instanceNames' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListOnPremisesInstancesOutput

=head1 ATTRIBUTES


=head2 InstanceNames => ArrayRef[Str]

  The list of matching on-premises instance names.

=head2 NextToken => Str

  If the amount of information that is returned is significantly large,
an identifier will also be returned, which can be used in a subsequent
list on-premises instances call to return the next set of on-premises
instances in the list.


=cut

1;