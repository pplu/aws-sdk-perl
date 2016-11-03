
package Paws::CodeDeploy::GetDeploymentInstanceOutput;
  use Moose;
  has InstanceSummary => (is => 'ro', isa => 'Paws::CodeDeploy::InstanceSummary', traits => ['NameInRequest'], request_name => 'instanceSummary' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetDeploymentInstanceOutput

=head1 ATTRIBUTES


=head2 InstanceSummary => L<Paws::CodeDeploy::InstanceSummary>

Information about the instance.




=cut

1;