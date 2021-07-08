
package Paws::WorkMail::DescribeMailboxExportJobResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has EntityId => (is => 'ro', isa => 'Str');
  has ErrorInfo => (is => 'ro', isa => 'Str');
  has EstimatedProgress => (is => 'ro', isa => 'Int');
  has KmsKeyArn => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3Path => (is => 'ro', isa => 'Str');
  has S3Prefix => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DescribeMailboxExportJobResponse

=head1 ATTRIBUTES


=head2 Description => Str

The mailbox export job description.


=head2 EndTime => Str

The mailbox export job end timestamp.


=head2 EntityId => Str

The identifier of the user or resource associated with the mailbox.


=head2 ErrorInfo => Str

Error information for failed mailbox export jobs.


=head2 EstimatedProgress => Int

The estimated progress of the mailbox export job, in percentage points.


=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of the symmetric AWS Key Management
Service (AWS KMS) key that encrypts the exported mailbox content.


=head2 RoleArn => Str

The ARN of the AWS Identity and Access Management (IAM) role that
grants write permission to the Amazon Simple Storage Service (Amazon
S3) bucket.


=head2 S3BucketName => Str

The name of the S3 bucket.


=head2 S3Path => Str

The path to the S3 bucket and file that the mailbox export job is
exporting to.


=head2 S3Prefix => Str

The S3 bucket prefix.


=head2 StartTime => Str

The mailbox export job start timestamp.


=head2 State => Str

The state of the mailbox export job.

Valid values are: C<"RUNNING">, C<"COMPLETED">, C<"FAILED">, C<"CANCELLED">
=head2 _request_id => Str


=cut

1;