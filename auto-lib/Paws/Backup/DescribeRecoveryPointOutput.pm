
package Paws::Backup::DescribeRecoveryPointOutput;
  use Moose;
  has BackupSizeInBytes => (is => 'ro', isa => 'Int');
  has BackupVaultArn => (is => 'ro', isa => 'Str');
  has BackupVaultName => (is => 'ro', isa => 'Str');
  has CalculatedLifecycle => (is => 'ro', isa => 'Paws::Backup::CalculatedLifecycle');
  has CompletionDate => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Paws::Backup::RecoveryPointCreator');
  has CreationDate => (is => 'ro', isa => 'Str');
  has EncryptionKeyArn => (is => 'ro', isa => 'Str');
  has IamRoleArn => (is => 'ro', isa => 'Str');
  has IsEncrypted => (is => 'ro', isa => 'Bool');
  has LastRestoreTime => (is => 'ro', isa => 'Str');
  has Lifecycle => (is => 'ro', isa => 'Paws::Backup::Lifecycle');
  has RecoveryPointArn => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StorageClass => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeRecoveryPointOutput

=head1 ATTRIBUTES


=head2 BackupSizeInBytes => Int

The size, in bytes, of a backup.


=head2 BackupVaultArn => Str

An ARN that uniquely identifies a backup vault; for example,
C<arn:aws:backup:us-east-1:123456789012:vault:aBackupVault>.


=head2 BackupVaultName => Str

The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the Region where they are created. They consist of lowercase
letters, numbers, and hyphens.


=head2 CalculatedLifecycle => L<Paws::Backup::CalculatedLifecycle>

A C<CalculatedLifecycle> object containing C<DeleteAt> and
C<MoveToColdStorageAt> timestamps.


=head2 CompletionDate => Str

The date and time that a job to create a recovery point is completed,
in Unix format and Coordinated Universal Time (UTC). The value of
C<CompletionDate> is accurate to milliseconds. For example, the value
1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 CreatedBy => L<Paws::Backup::RecoveryPointCreator>

Contains identifying information about the creation of a recovery
point, including the C<BackupPlanArn>, C<BackupPlanId>,
C<BackupPlanVersion>, and C<BackupRuleId> of the backup plan used to
create it.


=head2 CreationDate => Str

The date and time that a recovery point is created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 EncryptionKeyArn => Str

The server-side encryption key used to protect your backups; for
example,
C<arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>.


=head2 IamRoleArn => Str

Specifies the IAM role ARN used to create the target recovery point;
for example, C<arn:aws:iam::123456789012:role/S3Access>.


=head2 IsEncrypted => Bool

A Boolean value that is returned as C<TRUE> if the specified recovery
point is encrypted, or C<FALSE> if the recovery point is not encrypted.


=head2 LastRestoreTime => Str

The date and time that a recovery point was last restored, in Unix
format and Coordinated Universal Time (UTC). The value of
C<LastRestoreTime> is accurate to milliseconds. For example, the value
1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 Lifecycle => L<Paws::Backup::Lifecycle>

The lifecycle defines when a protected resource is transitioned to cold
storage and when it expires. AWS Backup transitions and expires backups
automatically according to the lifecycle that you define.

Backups that are transitioned to cold storage must be stored in cold
storage for a minimum of 90 days. Therefore, the E<ldquo>expire after
daysE<rdquo> setting must be 90 days greater than the
E<ldquo>transition to cold after daysE<rdquo> setting. The
E<ldquo>transition to cold after daysE<rdquo> setting cannot be changed
after a backup has been transitioned to cold.


=head2 RecoveryPointArn => Str

An ARN that uniquely identifies a recovery point; for example,
C<arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45>.


=head2 ResourceArn => Str

An ARN that uniquely identifies a saved resource. The format of the ARN
depends on the resource type.


=head2 ResourceType => Str

The type of AWS resource to save as a recovery point; for example, an
Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational
Database Service (Amazon RDS) database.


=head2 Status => Str

A status code specifying the state of the recovery point.

A partial status indicates that the recovery point was not successfully
re-created and must be retried.

Valid values are: C<"COMPLETED">, C<"PARTIAL">, C<"DELETING">, C<"EXPIRED">
=head2 StorageClass => Str

Specifies the storage class of the recovery point. Valid values are
C<WARM> or C<COLD>.

Valid values are: C<"WARM">, C<"COLD">, C<"DELETED">
=head2 _request_id => Str


=cut

