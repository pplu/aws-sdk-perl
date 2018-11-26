
package Paws::Datasync::DescribeTaskResponse;
  use Moose;
  has CloudWatchLogGroupArn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has CurrentTaskExecutionArn => (is => 'ro', isa => 'Str');
  has DestinationLocationArn => (is => 'ro', isa => 'Str');
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorDetail => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'Paws::Datasync::Options');
  has SourceLocationArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TaskArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeTaskResponse

=head1 ATTRIBUTES


=head2 CloudWatchLogGroupArn => Str

The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that
was used to monitor and log events in the task. For more information on
these groups, see Working with Log Groups and Log Streams
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html)
in the I<Amazon CloudWatch User Guide.>


=head2 CreationTime => Str

The time that the task was created.


=head2 CurrentTaskExecutionArn => Str

The Amazon Resource Name (ARN) of the task execution that is syncing
files.


=head2 DestinationLocationArn => Str

The Amazon Resource Name (ARN) of the AWS storage resource's location.


=head2 ErrorCode => Str

Errors that AWS DataSync encountered during execution of the task. You
can use this error code to help troubleshoot issues.


=head2 ErrorDetail => Str

Detailed description of an error that was encountered during the task
execution. You can use this information to help troubleshoot issues.


=head2 Name => Str

The name of the task that was described.


=head2 Options => L<Paws::Datasync::Options>

The set of configuration options that control the behavior of a single
execution of the task that occurs when you call C<StartTaskExecution>.
You can configure these options to preserve metadata such as user ID
(UID) and group (GID), file permissions, data integrity verification,
and so on.

For each individual task execution, you can override these options by
specifying the overriding C<OverrideOptions> value to operation.


=head2 SourceLocationArn => Str

The Amazon Resource Name (ARN) of the source file system's location.


=head2 Status => Str

The status of the task that was described. For detailed information
about sync statuses, see Understanding Sync Task Statuses
(https://docs.aws.amazon.com/sync-service/latest/userguide/understand-sync-task-statuses.html).

Valid values are: C<"AVAILABLE">, C<"CREATING">, C<"RUNNING">, C<"UNAVAILABLE">
=head2 TaskArn => Str

The Amazon Resource Name (ARN) of the task that was described.


=head2 _request_id => Str


=cut

1;