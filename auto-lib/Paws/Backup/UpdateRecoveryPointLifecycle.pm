
package Paws::Backup::UpdateRecoveryPointLifecycle;
  use Moose;
  has BackupVaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backupVaultName', required => 1);
  has Lifecycle => (is => 'ro', isa => 'Paws::Backup::Lifecycle');
  has RecoveryPointArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'recoveryPointArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRecoveryPointLifecycle');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::UpdateRecoveryPointLifecycleOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::UpdateRecoveryPointLifecycle - Arguments for method UpdateRecoveryPointLifecycle on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRecoveryPointLifecycle on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method UpdateRecoveryPointLifecycle.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRecoveryPointLifecycle.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $UpdateRecoveryPointLifecycleOutput =
      $backup->UpdateRecoveryPointLifecycle(
      BackupVaultName  => 'MyBackupVaultName',
      RecoveryPointArn => 'MyARN',
      Lifecycle        => {
        DeleteAfterDays            => 1,    # OPTIONAL
        MoveToColdStorageAfterDays => 1,    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $BackupVaultArn = $UpdateRecoveryPointLifecycleOutput->BackupVaultArn;
    my $CalculatedLifecycle =
      $UpdateRecoveryPointLifecycleOutput->CalculatedLifecycle;
    my $Lifecycle = $UpdateRecoveryPointLifecycleOutput->Lifecycle;
    my $RecoveryPointArn =
      $UpdateRecoveryPointLifecycleOutput->RecoveryPointArn;

    # Returns a L<Paws::Backup::UpdateRecoveryPointLifecycleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/UpdateRecoveryPointLifecycle>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupVaultName => Str

The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the AWS Region where they are created. They consist of
lowercase letters, numbers, and hyphens.



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



=head2 B<REQUIRED> RecoveryPointArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a recovery
point; for example,
C<arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRecoveryPointLifecycle in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

