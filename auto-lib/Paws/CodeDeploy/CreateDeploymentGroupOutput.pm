
package Paws::CodeDeploy::CreateDeploymentGroupOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has deploymentGroupId => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeploymentGroupOutput

=head1 ATTRIBUTES

=head2 deploymentGroupId => Str

  

A unique deployment group ID.











=cut

1;