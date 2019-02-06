
package Paws::Backup::UpdateRecoveryPointLifecycleOutput;
  use Moose;
  has BackupVaultArn => (is => 'ro', isa => 'Str');
  has CalculatedLifecycle => (is => 'ro', isa => 'Paws::Backup::CalculatedLifecycle');
  has Lifecycle => (is => 'ro', isa => 'Paws::Backup::Lifecycle');
  has RecoveryPointArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::UpdateRecoveryPointLifecycleOutput

=head1 ATTRIBUTES


=head2 BackupVaultArn => Str

An ARN that uniquely identifies a backup vault; for example,
C<arn:aws:backup:us-east-1:123456789012:vault:aBackupVault>.


=head2 CalculatedLifecycle => L<Paws::Backup::CalculatedLifecycle>

A C<CalculatedLifecycle> object containing C<DeleteAt> and
C<MoveToColdStorageAt> timestamps.


=head2 Lifecycle => L<Paws::Backup::Lifecycle>

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

