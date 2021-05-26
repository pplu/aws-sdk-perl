
package Paws::SageMaker::DescribeAppResponse;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str');
  has AppName => (is => 'ro', isa => 'Str');
  has AppType => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DomainId => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LastHealthCheckTimestamp => (is => 'ro', isa => 'Str');
  has LastUserActivityTimestamp => (is => 'ro', isa => 'Str');
  has ResourceSpec => (is => 'ro', isa => 'Paws::SageMaker::ResourceSpec');
  has Status => (is => 'ro', isa => 'Str');
  has UserProfileName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeAppResponse

=head1 ATTRIBUTES


=head2 AppArn => Str

The app's Amazon Resource Name (ARN).


=head2 AppName => Str

The name of the app.


=head2 AppType => Str

The type of app.

Valid values are: C<"JupyterServer">, C<"KernelGateway">, C<"TensorBoard">
=head2 CreationTime => Str

The creation time.


=head2 DomainId => Str

The domain ID.


=head2 FailureReason => Str

The failure reason.


=head2 LastHealthCheckTimestamp => Str

The timestamp of the last health check.


=head2 LastUserActivityTimestamp => Str

The timestamp of the last user's activity.


=head2 ResourceSpec => L<Paws::SageMaker::ResourceSpec>

The instance type and quantity.


=head2 Status => Str

The status.

Valid values are: C<"Deleted">, C<"Deleting">, C<"Failed">, C<"InService">, C<"Pending">
=head2 UserProfileName => Str

The user profile name.


=head2 _request_id => Str


=cut

1;