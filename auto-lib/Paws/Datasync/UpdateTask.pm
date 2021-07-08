
package Paws::Datasync::UpdateTask;
  use Moose;
  has CloudWatchLogGroupArn => (is => 'ro', isa => 'Str');
  has Excludes => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::FilterRule]');
  has Name => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'Paws::Datasync::Options');
  has Schedule => (is => 'ro', isa => 'Paws::Datasync::TaskSchedule');
  has TaskArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::UpdateTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::UpdateTask - Arguments for method UpdateTask on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTask on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method UpdateTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTask.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $UpdateTaskResponse = $datasync->UpdateTask(
      TaskArn               => 'MyTaskArn',
      CloudWatchLogGroupArn => 'MyLogGroupArn',    # OPTIONAL
      Excludes              => [
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
        SecurityDescriptorCopyFlags =>
          'NONE',    # values: NONE, OWNER_DACL, OWNER_DACL_SACL; OPTIONAL
        TaskQueueing => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        TransferMode => 'CHANGED',    # values: CHANGED, ALL; OPTIONAL
        Uid          => 'NONE',  # values: NONE, INT_VALUE, NAME, BOTH; OPTIONAL
        VerifyMode   => 'POINT_IN_TIME_CONSISTENT'
        , # values: POINT_IN_TIME_CONSISTENT, ONLY_FILES_TRANSFERRED, NONE; OPTIONAL
      },    # OPTIONAL
      Schedule => {
        ScheduleExpression => 'MyScheduleExpressionCron',    # max: 256

      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/UpdateTask>

=head1 ATTRIBUTES


=head2 CloudWatchLogGroupArn => Str

The Amazon Resource Name (ARN) of the resource name of the CloudWatch
LogGroup.



=head2 Excludes => ArrayRef[L<Paws::Datasync::FilterRule>]

A list of filter rules that determines which files to exclude from a
task. The list should contain a single filter string that consists of
the patterns to exclude. The patterns are delimited by "|" (that is, a
pipe), for example: C<"/folder1|/folder2">



=head2 Name => Str

The name of the task to update.



=head2 Options => L<Paws::Datasync::Options>





=head2 Schedule => L<Paws::Datasync::TaskSchedule>

Specifies a schedule used to periodically transfer files from a source
to a destination location. You can configure your task to execute
hourly, daily, weekly or on specific days of the week. You control when
in the day or hour you want the task to execute. The time you specify
is UTC time. For more information, see Scheduling your task
(https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html).



=head2 B<REQUIRED> TaskArn => Str

The Amazon Resource Name (ARN) of the resource name of the task to
update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTask in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

