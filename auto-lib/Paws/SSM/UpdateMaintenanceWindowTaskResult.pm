
package Paws::SSM::UpdateMaintenanceWindowTaskResult;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has LoggingInfo => (is => 'ro', isa => 'Paws::SSM::LoggingInfo');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');
  has ServiceRoleArn => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');
  has TaskArn => (is => 'ro', isa => 'Str');
  has TaskInvocationParameters => (is => 'ro', isa => 'Paws::SSM::MaintenanceWindowTaskInvocationParameters');
  has TaskParameters => (is => 'ro', isa => 'Paws::SSM::MaintenanceWindowTaskParameters');
  has WindowId => (is => 'ro', isa => 'Str');
  has WindowTaskId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateMaintenanceWindowTaskResult

=head1 ATTRIBUTES


=head2 Description => Str

The updated task description.


=head2 LoggingInfo => L<Paws::SSM::LoggingInfo>

The updated logging information in Amazon S3.

C<LoggingInfo> has been deprecated. To specify an S3 bucket to contain
logs, instead use the C<OutputS3BucketName> and C<OutputS3KeyPrefix>
options in the C<TaskInvocationParameters> structure. For information
about how Systems Manager handles these options for the supported
Maintenance Window task types, see
MaintenanceWindowTaskInvocationParameters.


=head2 MaxConcurrency => Str

The updated MaxConcurrency value.


=head2 MaxErrors => Str

The updated MaxErrors value.


=head2 Name => Str

The updated task name.


=head2 Priority => Int

The updated priority value.


=head2 ServiceRoleArn => Str

The updated service role ARN value.


=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

The updated target values.


=head2 TaskArn => Str

The updated task ARN value.


=head2 TaskInvocationParameters => L<Paws::SSM::MaintenanceWindowTaskInvocationParameters>

The updated parameter values.


=head2 TaskParameters => L<Paws::SSM::MaintenanceWindowTaskParameters>

The updated parameter values.

C<TaskParameters> has been deprecated. To specify parameters to pass to
a task when it runs, instead use the C<Parameters> option in the
C<TaskInvocationParameters> structure. For information about how
Systems Manager handles these options for the supported Maintenance
Window task types, see MaintenanceWindowTaskInvocationParameters.


=head2 WindowId => Str

The ID of the Maintenance Window that was updated.


=head2 WindowTaskId => Str

The task ID of the Maintenance Window that was updated.


=head2 _request_id => Str


=cut

1;