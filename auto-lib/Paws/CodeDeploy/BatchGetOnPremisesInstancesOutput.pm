
package Paws::CodeDeploy::BatchGetOnPremisesInstancesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has instanceInfos => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::InstanceInfo]');

}

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetOnPremisesInstancesOutput

=head1 ATTRIBUTES

=head2 instanceInfos => ArrayRef[Paws::CodeDeploy::InstanceInfo]

  

Information about the on-premises instances.











=cut

1;