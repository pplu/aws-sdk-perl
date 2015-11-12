
package Paws::CodeDeploy::GetOnPremisesInstanceOutput;
  use Moose;
  has InstanceInfo => (is => 'ro', isa => 'Paws::CodeDeploy::InstanceInfo', traits => ['Unwrapped'], xmlname => 'instanceInfo' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetOnPremisesInstanceOutput

=head1 ATTRIBUTES


=head2 InstanceInfo => L<Paws::CodeDeploy::InstanceInfo>

  Information about the on-premises instance.


=cut

1;