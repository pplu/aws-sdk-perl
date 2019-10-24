# Generated from json/callresult_class.tt

package Paws::Datasync::DescribeTaskResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Datasync::Types qw/Datasync_FilterRule Datasync_Options/;
  has CloudWatchLogGroupArn => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str);
  has CurrentTaskExecutionArn => (is => 'ro', isa => Str);
  has DestinationLocationArn => (is => 'ro', isa => Str);
  has ErrorCode => (is => 'ro', isa => Str);
  has ErrorDetail => (is => 'ro', isa => Str);
  has Excludes => (is => 'ro', isa => ArrayRef[Datasync_FilterRule]);
  has Name => (is => 'ro', isa => Str);
  has Options => (is => 'ro', isa => Datasync_Options);
  has SourceLocationArn => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has TaskArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Excludes' => {
                               'class' => 'Paws::Datasync::FilterRule',
                               'type' => 'ArrayRef[Datasync_FilterRule]'
                             },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'Options' => {
                              'class' => 'Paws::Datasync::Options',
                              'type' => 'Datasync_Options'
                            },
               'ErrorDetail' => {
                                  'type' => 'Str'
                                },
               'TaskArn' => {
                              'type' => 'Str'
                            },
               'DestinationLocationArn' => {
                                             'type' => 'Str'
                                           },
               'Status' => {
                             'type' => 'Str'
                           },
               'CurrentTaskExecutionArn' => {
                                              'type' => 'Str'
                                            },
               'ErrorCode' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SourceLocationArn' => {
                                        'type' => 'Str'
                                      },
               'CloudWatchLogGroupArn' => {
                                            'type' => 'Str'
                                          },
               'Name' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeTaskResponse

=head1 ATTRIBUTES


=head2 CloudWatchLogGroupArn => Str

The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that
was used to monitor and log events in the task.

For more information on these groups, see
"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html"
(Working with Log Groups and Log Streams) in the I<Amazon CloudWatch
UserGuide>.


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


=head2 Excludes => ArrayRef[Datasync_FilterRule]

Specifies that the task excludes files in the transfer based on the
specified pattern in the filter. Transfers all files in the
taskE<rsquo>s subdirectory, except files that match the filter that is
set.


=head2 Name => Str

The name of the task that was described.


=head2 Options => Datasync_Options

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

The status of the task that was described.

For detailed information about task execution statuses, see
"https://docs.aws.amazon.com/datasync/latest/userguide/working-with-tasks.html#understand-task-creation-statuses"
(Understanding Task Statuses).

Valid values are: C<"AVAILABLE">, C<"CREATING">, C<"RUNNING">, C<"UNAVAILABLE">
=head2 TaskArn => Str

The Amazon Resource Name (ARN) of the task that was described.


=head2 _request_id => Str


=cut

1;