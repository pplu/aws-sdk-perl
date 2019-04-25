
package Paws::Datasync::CreateTask;
  use Moose;
  has CloudWatchLogGroupArn => (is => 'ro', isa => 'Str');
  has DestinationLocationArn => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'Paws::Datasync::Options');
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
      Name                   => 'MyTagValue',       # OPTIONAL
      Options                => {
        Atime          => 'NONE',    # values: NONE, BEST_EFFORT; OPTIONAL
        BytesPerSecond => 1,         # min: -1; OPTIONAL
        Gid   => 'NONE',    # values: NONE, INT_VALUE, NAME, BOTH; OPTIONAL
        Mtime => 'NONE',    # values: NONE, PRESERVE; OPTIONAL
        PosixPermissions =>
          'NONE',           # values: NONE, BEST_EFFORT, PRESERVE; OPTIONAL
        PreserveDeletedFiles => 'PRESERVE', # values: PRESERVE, REMOVE; OPTIONAL
        PreserveDevices      => 'NONE',     # values: NONE, PRESERVE; OPTIONAL
        Uid => 'NONE',    # values: NONE, INT_VALUE, NAME, BOTH; OPTIONAL
        VerifyMode => 'POINT_IN_TIME_CONSISTENT'
        ,                 # values: POINT_IN_TIME_CONSISTENT, NONE; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256; OPTIONAL
          Value => 'MyTagValue',    # min: 1, max: 256
        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $TaskArn = $CreateTaskResponse->TaskArn;

    # Returns a L<Paws::Datasync::CreateTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/CreateTask>

=head1 ATTRIBUTES


=head2 CloudWatchLogGroupArn => Str

The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that
is used to monitor and log events in the task. For more information on
these groups, see Working with Log Groups and Log Streams
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html)
in the I<Amazon CloudWatch User Guide.>

For more information about how to useCloudWatchLogs with DataSync, see
Monitoring Your Task
(https://docs.aws.amazon.com/datasync/latest/userguide/monitor-datasync.html).



=head2 B<REQUIRED> DestinationLocationArn => Str

The Amazon Resource Name (ARN) of an AWS storage resource's location.



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
specifying the C<OverrideOptions> before starting a the task execution.
For more information, see the operation.



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

