
package Paws::Backup::DescribeBackupJobOutput;
  use Moose;
  has BackupJobId => (is => 'ro', isa => 'Str');
  has BackupSizeInBytes => (is => 'ro', isa => 'Int');
  has BackupVaultArn => (is => 'ro', isa => 'Str');
  has BackupVaultName => (is => 'ro', isa => 'Str');
  has BytesTransferred => (is => 'ro', isa => 'Int');
  has CompletionDate => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Paws::Backup::RecoveryPointCreator');
  has CreationDate => (is => 'ro', isa => 'Str');
  has ExpectedCompletionDate => (is => 'ro', isa => 'Str');
  has IamRoleArn => (is => 'ro', isa => 'Str');
  has PercentDone => (is => 'ro', isa => 'Str');
  has RecoveryPointArn => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has StartBy => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeBackupJobOutput

=head1 ATTRIBUTES


=head2 BackupJobId => Str

Uniquely identifies a request to AWS Backup to back up a resource.


=head2 BackupSizeInBytes => Int

The size, in bytes, of a backup.


=head2 BackupVaultArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a backup vault;
for example,
C<arn:aws:backup:us-east-1:123456789012:vault:aBackupVault>.


=head2 BackupVaultName => Str

The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the AWS Region where they are created. They consist of
lowercase letters, numbers, and hyphens.


=head2 BytesTransferred => Int

The size in bytes transferred to a backup vault at the time that the
job status was queried.


=head2 CompletionDate => Str

The date and time that a job to create a backup job is completed, in
Unix format and Coordinated Universal Time (UTC). The value of
C<CreationDate> is accurate to milliseconds. For example, the value
1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 CreatedBy => L<Paws::Backup::RecoveryPointCreator>

Contains identifying information about the creation of a backup job,
including the C<BackupPlanArn>, C<BackupPlanId>, C<BackupPlanVersion>,
and C<BackupRuleId> of the backup plan that is used to create it.


=head2 CreationDate => Str

The date and time that a backup job is created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 ExpectedCompletionDate => Str

The date and time that a job to back up resources is expected to be
completed, in Unix format and Coordinated Universal Time (UTC). The
value of C<ExpectedCompletionDate> is accurate to milliseconds. For
example, the value 1516925490.087 represents Friday, January 26, 2018
12:11:30.087 AM.


=head2 IamRoleArn => Str

Specifies the IAM role ARN used to create the target recovery point;
for example, C<arn:aws:iam::123456789012:role/S3Access>.


=head2 PercentDone => Str

Contains an estimated percentage that is complete of a job at the time
the job status was queried.


=head2 RecoveryPointArn => Str

An ARN that uniquely identifies a recovery point; for example,
C<arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45>.


=head2 ResourceArn => Str

An ARN that uniquely identifies a saved resource. The format of the ARN
depends on the resource type.


=head2 ResourceType => Str

The type of AWS resource to be backed-up; for example, an Amazon
Elastic Block Store (Amazon EBS) volume or an Amazon Relational
Database Service (Amazon RDS) database.


=head2 StartBy => Str

Specifies the time in Unix format and Coordinated Universal Time (UTC)
when a backup job must be started before it is canceled. The value is
calculated by adding the start window to the scheduled time. So if the
scheduled time were 6:00 PM and the start window is 2 hours, the
C<StartBy> time would be 8:00 PM on the date specified. The value of
C<StartBy> is accurate to milliseconds. For example, the value
1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 State => Str

The current state of a resource recovery point.

Valid values are: C<"CREATED">, C<"PENDING">, C<"RUNNING">, C<"ABORTING">, C<"ABORTED">, C<"COMPLETED">, C<"FAILED">, C<"EXPIRED">
=head2 StatusMessage => Str

A detailed message explaining the status of the job to back up a
resource.


=head2 _request_id => Str


=cut

