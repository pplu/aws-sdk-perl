
package Paws::SageMaker::DescribeMonitoringScheduleResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has EndpointName => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has LastMonitoringExecutionSummary => (is => 'ro', isa => 'Paws::SageMaker::MonitoringExecutionSummary');
  has MonitoringScheduleArn => (is => 'ro', isa => 'Str', required => 1);
  has MonitoringScheduleConfig => (is => 'ro', isa => 'Paws::SageMaker::MonitoringScheduleConfig', required => 1);
  has MonitoringScheduleName => (is => 'ro', isa => 'Str', required => 1);
  has MonitoringScheduleStatus => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeMonitoringScheduleResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The time at which the monitoring job was created.


=head2 EndpointName => Str

The name of the endpoint for the monitoring job.


=head2 FailureReason => Str

A string, up to one KB in size, that contains the reason a monitoring
job failed, if it failed.


=head2 B<REQUIRED> LastModifiedTime => Str

The time at which the monitoring job was last modified.


=head2 LastMonitoringExecutionSummary => L<Paws::SageMaker::MonitoringExecutionSummary>

Describes metadata on the last execution to run, if there was one.


=head2 B<REQUIRED> MonitoringScheduleArn => Str

The Amazon Resource Name (ARN) of the monitoring schedule.


=head2 B<REQUIRED> MonitoringScheduleConfig => L<Paws::SageMaker::MonitoringScheduleConfig>

The configuration object that specifies the monitoring schedule and
defines the monitoring job.


=head2 B<REQUIRED> MonitoringScheduleName => Str

Name of the monitoring schedule.


=head2 B<REQUIRED> MonitoringScheduleStatus => Str

The status of an monitoring job.

Valid values are: C<"Pending">, C<"Failed">, C<"Scheduled">, C<"Stopped">
=head2 _request_id => Str


=cut

1;