
package Paws::CodeDeploy::CreateDeploymentGroupOutput;
  use Moose;
  has DeploymentGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentGroupId' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeploymentGroupOutput

=head1 ATTRIBUTES


=head2 DeploymentGroupId => Str

A unique deployment group ID.




=cut

1;