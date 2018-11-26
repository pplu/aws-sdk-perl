
package Paws::Datasync::DescribeTaskExecutionResponse;
  use Moose;
  has BytesTransferred => (is => 'ro', isa => 'Int');
  has BytesWritten => (is => 'ro', isa => 'Int');
  has EstimatedBytesToTransfer => (is => 'ro', isa => 'Int');
  has EstimatedFilesToTransfer => (is => 'ro', isa => 'Int');
  has FilesTransferred => (is => 'ro', isa => 'Int');
  has Options => (is => 'ro', isa => 'Paws::Datasync::Options');
  has Result => (is => 'ro', isa => 'Paws::Datasync::TaskExecutionResultDetail');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TaskExecutionArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

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


=head2 Options => L<Paws::Datasync::Options>




=head2 Result => L<Paws::Datasync::TaskExecutionResultDetail>

The result of the task execution.


=head2 StartTime => Str

The time that the task execution was started.


=head2 Status => Str

The status of the task. For detailed information about sync statuses,
see Understanding Sync Task Statuses
(https://docs.aws.amazon.com/sync-service/latest/userguide/understand-sync-task-statuses.html).

Valid values are: C<"LAUNCHING">, C<"PREPARING">, C<"TRANSFERRING">, C<"VERIFYING">, C<"SUCCESS">, C<"ERROR">
=head2 TaskExecutionArn => Str

The Amazon Resource Name (ARN) of the task execution that was
described. C<TaskExecutionArn> is hierarchical and includes C<TaskArn>
for the task that was executed.

For example, a C<TaskExecution> value with the ARN
C<arn:aws:sync:us-east-1:209870788375:task/task-0208075f79cedf4a2/execution/exec-08ef1e88ec491019b>
executed the task with the ARN
C<arn:aws:sync:us-east-1:209870788375:task/task-0208075f79cedf4a2>.


=head2 _request_id => Str


=cut

1;