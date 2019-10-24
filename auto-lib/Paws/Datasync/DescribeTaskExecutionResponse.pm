# Generated from json/callresult_class.tt

package Paws::Datasync::DescribeTaskExecutionResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::Datasync::Types qw/Datasync_TaskExecutionResultDetail Datasync_FilterRule Datasync_Options/;
  has BytesTransferred => (is => 'ro', isa => Int);
  has BytesWritten => (is => 'ro', isa => Int);
  has EstimatedBytesToTransfer => (is => 'ro', isa => Int);
  has EstimatedFilesToTransfer => (is => 'ro', isa => Int);
  has Excludes => (is => 'ro', isa => ArrayRef[Datasync_FilterRule]);
  has FilesTransferred => (is => 'ro', isa => Int);
  has Includes => (is => 'ro', isa => ArrayRef[Datasync_FilterRule]);
  has Options => (is => 'ro', isa => Datasync_Options);
  has Result => (is => 'ro', isa => Datasync_TaskExecutionResultDetail);
  has StartTime => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has TaskExecutionArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Excludes' => {
                               'class' => 'Paws::Datasync::FilterRule',
                               'type' => 'ArrayRef[Datasync_FilterRule]'
                             },
               'TaskExecutionArn' => {
                                       'type' => 'Str'
                                     },
               'Options' => {
                              'class' => 'Paws::Datasync::Options',
                              'type' => 'Datasync_Options'
                            },
               'Status' => {
                             'type' => 'Str'
                           },
               'FilesTransferred' => {
                                       'type' => 'Int'
                                     },
               'EstimatedFilesToTransfer' => {
                                               'type' => 'Int'
                                             },
               'BytesTransferred' => {
                                       'type' => 'Int'
                                     },
               'Result' => {
                             'class' => 'Paws::Datasync::TaskExecutionResultDetail',
                             'type' => 'Datasync_TaskExecutionResultDetail'
                           },
               'BytesWritten' => {
                                   'type' => 'Int'
                                 },
               'EstimatedBytesToTransfer' => {
                                               'type' => 'Int'
                                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Includes' => {
                               'class' => 'Paws::Datasync::FilterRule',
                               'type' => 'ArrayRef[Datasync_FilterRule]'
                             },
               'StartTime' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeTaskExecutionResponse

=head1 ATTRIBUTES


=head2 BytesTransferred => Int

The physical number of bytes transferred over the network.


=head2 BytesWritten => Int

The number of logical bytes written to the destination AWS storage
resource.


=head2 EstimatedBytesToTransfer => Int

The estimated physical number of bytes that is to be transferred over
the network.


=head2 EstimatedFilesToTransfer => Int

The expected number of files that is to be transferred over the
network. This value is calculated during the PREPARING phase, before
the TRANSFERRING phase. This value is the expected number of files to
be transferred. It's calculated based on comparing the content of the
source and destination locations and finding the delta that needs to be
transferred.


=head2 Excludes => ArrayRef[Datasync_FilterRule]

Specifies that the task execution excludes files from the transfer
based on the specified pattern in the filter. Transfers all files in
the taskE<rsquo>s subdirectory, except files that match the filter that
is set.


=head2 FilesTransferred => Int

The actual number of files that was transferred over the network. This
value is calculated and updated on an ongoing basis during the
TRANSFERRING phase. It's updated periodically when each file is read
from the source and sent over the network.

If failures occur during a transfer, this value can be less than
C<EstimatedFilesToTransfer>. This value can also be greater than
C<EstimatedFilesTransferred> in some cases. This element is
implementation-specific for some location types, so don't use it as an
indicator for a correct file number or to monitor your task execution.


=head2 Includes => ArrayRef[Datasync_FilterRule]

Specifies that the task execution excludes files in the transfer based
on the specified pattern in the filter. When multiple include filters
are set, they are interpreted as an OR.


=head2 Options => Datasync_Options




=head2 Result => Datasync_TaskExecutionResultDetail

The result of the task execution.


=head2 StartTime => Str

The time that the task execution was started.


=head2 Status => Str

The status of the task execution.

For detailed information about task execution statuses, see
"https://docs.aws.amazon.com/datasync/latest/userguide/working-with-tasks.html#understand-task-creation-statuses"
(Understanding Task Statuses).

Valid values are: C<"LAUNCHING">, C<"PREPARING">, C<"TRANSFERRING">, C<"VERIFYING">, C<"SUCCESS">, C<"ERROR">
=head2 TaskExecutionArn => Str

The Amazon Resource Name (ARN) of the task execution that was
described. C<TaskExecutionArn> is hierarchical and includes C<TaskArn>
for the task that was executed.

For example, a C<TaskExecution> value with the ARN
C<arn:aws:datasync:us-east-1:111222333444:task/task-0208075f79cedf4a2/execution/exec-08ef1e88ec491019b>
executed the task with the ARN
C<arn:aws:datasync:us-east-1:111222333444:task/task-0208075f79cedf4a2>.


=head2 _request_id => Str


=cut

1;