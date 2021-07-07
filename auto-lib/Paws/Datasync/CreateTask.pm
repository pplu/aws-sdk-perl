
package Paws::Datasync::CreateTask;
  use Moose;
  has CloudWatchLogGroupArn => (is => 'ro', isa => 'Str');
  has DestinationLocationArn => (is => 'ro', isa => 'Str', required => 1);
  has Excludes => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::FilterRule]');
  has Name => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'Paws::Datasync::Options');
  has Schedule => (is => 'ro', isa => 'Paws::Datasync::TaskSchedule');
  has SourceLocationArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::CreateTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateTask - Arguments for method CreateTask on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTask on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method CreateTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTask.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $CreateTaskResponse = $datasync->CreateTask(
      DestinationLocationArn => 'MyLocationArn',
      SourceLocationArn      => 'MyLocationArn',
      CloudWatchLogGroupArn  => 'MyLogGroupArn',    # OPTIONAL
      Excludes               => [
        {
          FilterType =>
            'SIMPLE_PATTERN',    # values: SIMPLE_PATTERNmax: 128; OPTIONAL
          Value => 'MyFilterValue',    # max: 409600; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Name    => 'MyTagValue',    # OPTIONAL
      Options => {
        Atime          => 'NONE',    # values: NONE, BEST_EFFORT; OPTIONAL
        BytesPerSecond => 1,         # min: -1; OPTIONAL
        Gid      => 'NONE',    # values: NONE, INT_VALUE, NAME, BOTH; OPTIONAL
        LogLevel => 'OFF',     # values: OFF, BASIC, TRANSFER; OPTIONAL
        Mtime    => 'NONE',    # values: NONE, PRESERVE; OPTIONAL
        OverwriteMode        => 'ALWAYS',   # values: ALWAYS, NEVER; OPTIONAL
        PosixPermissions     => 'NONE',     # values: NONE, PRESERVE; OPTIONAL
        PreserveDeletedFiles => 'PRESERVE', # values: PRESERVE, REMOVE; OPTIONAL
        PreserveDevices      => 'NONE',     # values: NONE, PRESERVE; OPTIONAL
        TaskQueueing         => 'ENABLED', # values: ENABLED, DISABLED; OPTIONAL
        TransferMode         => 'CHANGED', # values: CHANGED, ALL; OPTIONAL
        Uid        => 'NONE',    # values: NONE, INT_VALUE, NAME, BOTH; OPTIONAL
        VerifyMode => 'POINT_IN_TIME_CONSISTENT'
        , # values: POINT_IN_TIME_CONSISTENT, ONLY_FILES_TRANSFERRED, NONE; OPTIONAL
      },    # OPTIONAL
      Schedule => {
        ScheduleExpression => 'MyScheduleExpressionCron',    # max: 256

      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # min: 1, max: 256
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $TaskArn = $CreateTaskResponse->TaskArn;

    # Returns a L<Paws::Datasync::CreateTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/CreateTask>

=head1 ATTRIBUTES


=head2 CloudWatchLogGroupArn => Str

The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that
is used to monitor and log events in the task.



=head2 B<REQUIRED> DestinationLocationArn => Str

The Amazon Resource Name (ARN) of an AWS storage resource's location.



=head2 Excludes => ArrayRef[L<Paws::Datasync::FilterRule>]

A list of filter rules that determines which files to exclude from a
task. The list should contain a single filter string that consists of
the patterns to exclude. The patterns are delimited by "|" (that is, a
pipe), for example, C<"/folder1|/folder2">.



=head2 Name => Str

The name of a task. This value is a text reference that is used to
identify the task in the console.



=head2 Options => L<Paws::Datasync::Options>

The set of configuration options that control the behavior of a single
execution of the task that occurs when you call C<StartTaskExecution>.
You can configure these options to preserve metadata such as user ID
(UID) and group ID (GID), file permissions, data integrity
verification, and so on.

For each individual task execution, you can override these options by
specifying the C<OverrideOptions> before starting the task execution.
For more information, see the operation.



=head2 Schedule => L<Paws::Datasync::TaskSchedule>

Specifies a schedule used to periodically transfer files from a source
to a destination location. The schedule should be specified in UTC
time. For more information, see task-scheduling.



=head2 B<REQUIRED> SourceLocationArn => Str

The Amazon Resource Name (ARN) of the source location for the task.



=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

The key-value pair that represents the tag that you want to add to the
resource. The value can be an empty string.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTask in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

