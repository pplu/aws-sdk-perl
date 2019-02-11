
package Paws::Greengrass::GetBulkDeploymentStatusResponse;
  use Moose;
  has BulkDeploymentMetrics => (is => 'ro', isa => 'Paws::Greengrass::BulkDeploymentMetrics');
  has BulkDeploymentStatus => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has ErrorDetails => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::ErrorDetail]');
  has ErrorMessage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetBulkDeploymentStatusResponse

=head1 ATTRIBUTES


=head2 BulkDeploymentMetrics => L<Paws::Greengrass::BulkDeploymentMetrics>

Relevant metrics on input records processed during bulk deployment.


=head2 BulkDeploymentStatus => Str

The status of the bulk deployment.

Valid values are: C<"Initializing">, C<"Running">, C<"Completed">, C<"Stopping">, C<"Stopped">, C<"Failed">
=head2 CreatedAt => Str

The time, in ISO format, when the deployment was created.


=head2 ErrorDetails => ArrayRef[L<Paws::Greengrass::ErrorDetail>]

Error details


=head2 ErrorMessage => Str

Error message


=head2 _request_id => Str


=cut

