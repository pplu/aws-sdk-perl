
package Paws::CodeDeploy::BatchGetDeploymentInstancesOutput;
  use Moose;
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage' );
  has InstancesSummary => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::InstanceSummary]', traits => ['NameInRequest'], request_name => 'instancesSummary' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetDeploymentInstancesOutput

=head1 ATTRIBUTES


=head2 ErrorMessage => Str

Information about errors that may have occurred during the API call.



=head2 InstancesSummary => ArrayRef[L<Paws::CodeDeploy::InstanceSummary>]

Information about the instance.




=cut

1;