
package Paws::Greengrass::ResetDeploymentsResponse;
  use Moose;
  has DeploymentArn => (is => 'ro', isa => 'Str');
  has DeploymentId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ResetDeploymentsResponse

=head1 ATTRIBUTES


=head2 DeploymentArn => Str

The arn of the reset deployment.


=head2 DeploymentId => Str

The id of the reset deployment.


=head2 _request_id => Str


=cut

