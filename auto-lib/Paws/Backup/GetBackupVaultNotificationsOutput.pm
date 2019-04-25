
package Paws::Backup::GetBackupVaultNotificationsOutput;
  use Moose;
  has BackupVaultArn => (is => 'ro', isa => 'Str');
  has BackupVaultEvents => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has BackupVaultName => (is => 'ro', isa => 'Str');
  has SNSTopicArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetBackupVaultNotificationsOutput

=head1 ATTRIBUTES


=head2 BackupVaultArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a backup vault;
for example,
C<arn:aws:backup:us-east-1:123456789012:vault:aBackupVault>.


=head2 BackupVaultEvents => ArrayRef[Str|Undef]

An array of events that indicate the status of jobs to back up
resources to the backup vault.


=head2 BackupVaultName => Str

The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the Region where they are created. They consist of lowercase
letters, numbers, and hyphens.


=head2 SNSTopicArn => Str

An ARN that uniquely identifies an Amazon Simple Notification Service
(Amazon SNS) topic; for example,
C<arn:aws:sns:us-west-2:111122223333:MyTopic>.


=head2 _request_id => Str


=cut

