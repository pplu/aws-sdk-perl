
package Paws::CodeDeploy::BatchGetOnPremisesInstancesOutput;
  use Moose;
  has InstanceInfos => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::InstanceInfo]', traits => ['Unwrapped'], xmlname => 'instanceInfos' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetOnPremisesInstancesOutput

=head1 ATTRIBUTES

=head2 InstanceInfos => ArrayRef[L<Paws::CodeDeploy::InstanceInfo>]

  Information about the on-premises instances.


=cut

1;