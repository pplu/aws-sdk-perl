
package Paws::Backup::GetRecoveryPointRestoreMetadataOutput;
  use Moose;
  has BackupVaultArn => (is => 'ro', isa => 'Str');
  has RecoveryPointArn => (is => 'ro', isa => 'Str');
  has RestoreMetadata => (is => 'ro', isa => 'Paws::Backup::Metadata');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetRecoveryPointRestoreMetadataOutput

=head1 ATTRIBUTES


=head2 BackupVaultArn => Str

An ARN that uniquely identifies a backup vault; for example,
C<arn:aws:backup:us-east-1:123456789012:vault:aBackupVault>.


=head2 RecoveryPointArn => Str

An ARN that uniquely identifies a recovery point; for example,
C<arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45>.


=head2 RestoreMetadata => L<Paws::Backup::Metadata>

A set of metadata key-value pairs that lists the metadata key-value
pairs that are required to restore the recovery point.


=head2 _request_id => Str


=cut

