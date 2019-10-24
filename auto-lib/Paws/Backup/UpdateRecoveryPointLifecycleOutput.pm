
package Paws::Backup::UpdateRecoveryPointLifecycleOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Backup::Types qw/Backup_CalculatedLifecycle Backup_Lifecycle/;
  has BackupVaultArn => (is => 'ro', isa => Str);
  has CalculatedLifecycle => (is => 'ro', isa => Backup_CalculatedLifecycle);
  has Lifecycle => (is => 'ro', isa => Backup_Lifecycle);
  has RecoveryPointArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CalculatedLifecycle' => {
                                          'class' => 'Paws::Backup::CalculatedLifecycle',
                                          'type' => 'Backup_CalculatedLifecycle'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RecoveryPointArn' => {
                                       'type' => 'Str'
                                     },
               'Lifecycle' => {
                                'class' => 'Paws::Backup::Lifecycle',
                                'type' => 'Backup_Lifecycle'
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

Paws::Backup::UpdateRecoveryPointLifecycleOutput

=head1 ATTRIBUTES


=head2 BackupVaultArn => Str

An ARN that uniquely identifies a backup vault; for example,
C<arn:aws:backup:us-east-1:123456789012:vault:aBackupVault>.


=head2 CalculatedLifecycle => Backup_CalculatedLifecycle

A C<CalculatedLifecycle> object containing C<DeleteAt> and
C<MoveToColdStorageAt> timestamps.


=head2 Lifecycle => Backup_Lifecycle

The lifecycle defines when a protected resource is transitioned to cold
storage and when it expires. AWS Backup transitions and expires backups
automatically according to the lifecycle that you define.

Backups transitioned to cold storage must be stored in cold storage for
a minimum of 90 days. Therefore, the E<ldquo>expire after daysE<rdquo>
setting must be 90 days greater than the E<ldquo>transition to cold
after daysE<rdquo> setting. The E<ldquo>transition to cold after
daysE<rdquo> setting cannot be changed after a backup has been
transitioned to cold.


=head2 RecoveryPointArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a recovery
point; for example,
C<arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45>.


=head2 _request_id => Str


=cut

