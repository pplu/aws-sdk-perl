
package Paws::Backup::DescribeBackupVaultOutput;
  use Moose;
  has BackupVaultArn => (is => 'ro', isa => 'Str');
  has BackupVaultName => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has EncryptionKeyArn => (is => 'ro', isa => 'Str');
  has NumberOfRecoveryPoints => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeBackupVaultOutput

=head1 ATTRIBUTES


=head2 BackupVaultArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a backup vault;
for example,
C<arn:aws:backup:us-east-1:123456789012:vault:aBackupVault>.


=head2 BackupVaultName => Str

The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the Region where they are created. They consist of lowercase
letters, numbers, and hyphens.


=head2 CreationDate => Str

The date and time that a backup vault is created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 CreatorRequestId => Str

A unique string that identifies the request and allows failed requests
to be retried without the risk of executing the operation twice.


=head2 EncryptionKeyArn => Str

The server-side encryption key that is used to protect your backups;
for example,
C<arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>.


=head2 NumberOfRecoveryPoints => Int

The number of recovery points that are stored in a backup vault.


=head2 _request_id => Str


=cut

