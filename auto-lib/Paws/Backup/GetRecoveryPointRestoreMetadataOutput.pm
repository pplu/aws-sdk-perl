
package Paws::Backup::GetRecoveryPointRestoreMetadataOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Backup::Types qw/Backup_Metadata/;
  has BackupVaultArn => (is => 'ro', isa => Str);
  has RecoveryPointArn => (is => 'ro', isa => Str);
  has RestoreMetadata => (is => 'ro', isa => Backup_Metadata);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RestoreMetadata' => {
                                      'class' => 'Paws::Backup::Metadata',
                                      'type' => 'Backup_Metadata'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RecoveryPointArn' => {
                                       'type' => 'Str'
                                     },
               'BackupVaultArn' => {
                                     'type' => 'Str'
                                   }
             }
}
;
    return $Params_map;
  }

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


=head2 RestoreMetadata => Backup_Metadata

A set of metadata key-value pairs that lists the metadata key-value
pairs that are required to restore the recovery point.


=head2 _request_id => Str


=cut

