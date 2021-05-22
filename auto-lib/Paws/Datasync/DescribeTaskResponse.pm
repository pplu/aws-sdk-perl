
package Paws::Datasync::DescribeTaskResponse;
  use Moose;
  has CloudWatchLogGroupArn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has CurrentTaskExecutionArn => (is => 'ro', isa => 'Str');
  has DestinationLocationArn => (is => 'ro', isa => 'Str');
  has DestinationNetworkInterfaceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorDetail => (is => 'ro', isa => 'Str');
  has Excludes => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::FilterRule]');
  has Name => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'Paws::Datasync::Options');
  has Schedule => (is => 'ro', isa => 'Paws::Datasync::TaskSchedule');
  has SourceLocationArn => (is => 'ro', isa => 'Str');
  has SourceNetworkInterfaceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Status => (is => 'ro', isa => 'Str');
  has TaskArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeTaskResponse

=head1 ATTRIBUTES


=head2 CloudWatchLogGroupArn => Str

The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that
was used to monitor and log events in the task.

For more information on these groups, see Working with Log Groups and
Log Streams in the I<Amazon CloudWatch User Guide>.


=head2 CreationTime => Str

The time that the task was created.


=head2 CurrentTaskExecutionArn => Str

The Amazon Resource Name (ARN) of the task execution that is syncing
files.


=head2 DestinationLocationArn => Str

The Amazon Resource Name (ARN) of the AWS storage resource's location.


=head2 DestinationNetworkInterfaceArns => ArrayRef[Str|Undef]

The Amazon Resource Name (ARN) of the destination ENIs (Elastic Network
Interface) that was created for your subnet.


=head2 ErrorCode => Str

Errors that AWS DataSync encountered during execution of the task. You
can use this error code to help troubleshoot issues.


=head2 ErrorDetail => Str

Detailed description of an error that was encountered during the task
execution. You can use this information to help troubleshoot issues.


=head2 Excludes => ArrayRef[L<Paws::Datasync::FilterRule>]

A list of filter rules that determines which files to exclude from a
task. The list should contain a single filter string that consists of
the patterns to exclude. The patterns are delimited by "|" (that is, a
pipe), for example: C<"/folder1|/folder2">


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


=head2 Schedule => L<Paws::Datasync::TaskSchedule>

The schedule used to periodically transfer files from a source to a
destination location.


=head2 SourceLocationArn => Str

The Amazon Resource Name (ARN) of the source file system's location.


=head2 SourceNetworkInterfaceArns => ArrayRef[Str|Undef]

The Amazon Resource Name (ARN) of the source ENIs (Elastic Network
Interface) that was created for your subnet.


=head2 Status => Str

The status of the task that was described.

For detailed information about task execution statuses, see
Understanding Task Statuses in the I<AWS DataSync User Guide>.

Valid values are: C<"AVAILABLE">, C<"CREATING">, C<"QUEUED">, C<"RUNNING">, C<"UNAVAILABLE">
=head2 TaskArn => Str

The Amazon Resource Name (ARN) of the task that was described.


=head2 _request_id => Str


=cut

1;