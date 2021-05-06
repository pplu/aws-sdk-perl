
package Paws::Backup::DescribeRestoreJobOutput;
  use Moose;
  has BackupSizeInBytes => (is => 'ro', isa => 'Int');
  has CompletionDate => (is => 'ro', isa => 'Str');
  has CreatedResourceArn => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has ExpectedCompletionTimeMinutes => (is => 'ro', isa => 'Int');
  has IamRoleArn => (is => 'ro', isa => 'Str');
  has PercentDone => (is => 'ro', isa => 'Str');
  has RecoveryPointArn => (is => 'ro', isa => 'Str');
  has RestoreJobId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeRestoreJobOutput

=head1 ATTRIBUTES


=head2 BackupSizeInBytes => Int

The size, in bytes, of the restored resource.


=head2 CompletionDate => Str

The date and time that a job to restore a recovery point is completed,
in Unix format and Coordinated Universal Time (UTC). The value of
C<CompletionDate> is accurate to milliseconds. For example, the value
1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 CreatedResourceArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a resource whose
recovery point is being restored. The format of the ARN depends on the
resource type of the backed-up resource.


=head2 CreationDate => Str

The date and time that a restore job is created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 ExpectedCompletionTimeMinutes => Int

The amount of time in minutes that a job restoring a recovery point is
expected to take.


=head2 IamRoleArn => Str

Specifies the IAM role ARN used to create the target recovery point;
for example, C<arn:aws:iam::123456789012:role/S3Access>.


=head2 PercentDone => Str

Contains an estimated percentage that is complete of a job at the time
the job status was queried.


=head2 RecoveryPointArn => Str

An ARN that uniquely identifies a recovery point; for example,
C<arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45>.


=head2 RestoreJobId => Str

Uniquely identifies the job that restores a recovery point.


=head2 Status => Str

Status code specifying the state of the job that is initiated by AWS
Backup to restore a recovery point.

Valid values are: C<"PENDING">, C<"RUNNING">, C<"COMPLETED">, C<"ABORTED">, C<"FAILED">
=head2 StatusMessage => Str

A detailed message explaining the status of a job to restore a recovery
point.


=head2 _request_id => Str


=cut

