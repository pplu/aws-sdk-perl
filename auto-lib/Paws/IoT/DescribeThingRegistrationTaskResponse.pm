
package Paws::IoT::DescribeThingRegistrationTaskResponse;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate');
  has FailureCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'failureCount');
  has InputFileBucket => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inputFileBucket');
  has InputFileKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inputFileKey');
  has LastModifiedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedDate');
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message');
  has PercentageProgress => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'percentageProgress');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has SuccessCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'successCount');
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId');
  has TemplateBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateBody');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeThingRegistrationTaskResponse

=head1 ATTRIBUTES


=head2 CreationDate => Str

The task creation date.


=head2 FailureCount => Int

The number of things that failed to be provisioned.


=head2 InputFileBucket => Str

The S3 bucket that contains the input file.


=head2 InputFileKey => Str

The input file key.


=head2 LastModifiedDate => Str

The date when the task was last modified.


=head2 Message => Str

The message.


=head2 PercentageProgress => Int

The progress of the bulk provisioning task expressed as a percentage.


=head2 RoleArn => Str

The role ARN that grants access to the input file bucket.


=head2 Status => Str

The status of the bulk thing provisioning task.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Cancelled">, C<"Cancelling">
=head2 SuccessCount => Int

The number of things successfully provisioned.


=head2 TaskId => Str

The task ID.


=head2 TemplateBody => Str

The task's template.


=head2 _request_id => Str


=cut

