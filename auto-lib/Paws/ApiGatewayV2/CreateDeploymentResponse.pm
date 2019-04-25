
package Paws::ApiGatewayV2::CreateDeploymentResponse;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate');
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId');
  has DeploymentStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentStatus');
  has DeploymentStatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentStatusMessage');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateDeploymentResponse

=head1 ATTRIBUTES


=head2 CreatedDate => Str

The date and time when the Deployment resource was created.


=head2 DeploymentId => Str

The identifier for the deployment.


=head2 DeploymentStatus => Str

The status of the deployment: PENDING, FAILED, or SUCCEEDED.

Valid values are: C<"PENDING">, C<"FAILED">, C<"DEPLOYED">
=head2 DeploymentStatusMessage => Str

May contain additional feedback on the status of an API deployment.


=head2 Description => Str

The description for the deployment.


=head2 _request_id => Str


=cut

