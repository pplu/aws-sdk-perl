
package Paws::Greengrass::GetDeploymentStatusResponse;
  use Moose;
  has DeploymentStatus => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetDeploymentStatusResponse

=head1 ATTRIBUTES


=head2 DeploymentStatus => Str

Status of the deployment.


=head2 ErrorMessage => Str

Error Message


=head2 UpdatedAt => Str

Last time the deployment status was updated.


=head2 _request_id => Str


=cut

