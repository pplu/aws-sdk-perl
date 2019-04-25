
package Paws::Greengrass::GetDeploymentStatusResponse;
  use Moose;
  has DeploymentStatus => (is => 'ro', isa => 'Str');
  has DeploymentType => (is => 'ro', isa => 'Str');
  has ErrorDetails => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::ErrorDetail]');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetDeploymentStatusResponse

=head1 ATTRIBUTES


=head2 DeploymentStatus => Str

The status of the deployment: ''Pending'', ''InProgress'', ''Success'',
or ''Failure''.


=head2 DeploymentType => Str

The type of the deployment.

Valid values are: C<"NewDeployment">, C<"Redeployment">, C<"ResetDeployment">, C<"ForceResetDeployment">
=head2 ErrorDetails => ArrayRef[L<Paws::Greengrass::ErrorDetail>]

Error details


=head2 ErrorMessage => Str

Error message


=head2 UpdatedAt => Str

The time, in milliseconds since the epoch, when the deployment status
was updated.


=head2 _request_id => Str


=cut

