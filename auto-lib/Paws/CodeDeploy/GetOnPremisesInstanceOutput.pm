
package Paws::CodeDeploy::GetOnPremisesInstanceOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has instanceInfo => (is => 'ro', isa => 'Paws::CodeDeploy::InstanceInfo');

}

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetOnPremisesInstanceOutput

=head1 ATTRIBUTES

=head2 instanceInfo => Paws::CodeDeploy::InstanceInfo

  

Information about the on-premises instance.











=cut

1;