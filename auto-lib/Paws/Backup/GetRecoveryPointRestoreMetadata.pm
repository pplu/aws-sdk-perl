
package Paws::Backup::GetRecoveryPointRestoreMetadata;
  use Moose;
  has BackupVaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backupVaultName', required => 1);
  has RecoveryPointArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'recoveryPointArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRecoveryPointRestoreMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}/restore-metadata');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::GetRecoveryPointRestoreMetadataOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetRecoveryPointRestoreMetadata - Arguments for method GetRecoveryPointRestoreMetadata on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRecoveryPointRestoreMetadata on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method GetRecoveryPointRestoreMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRecoveryPointRestoreMetadata.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $GetRecoveryPointRestoreMetadataOutput =
      $backup->GetRecoveryPointRestoreMetadata(
      BackupVaultName  => 'MyBackupVaultName',
      RecoveryPointArn => 'MyARN',

      );

    # Results:
    my $BackupVaultArn = $GetRecoveryPointRestoreMetadataOutput->BackupVaultArn;
    my $RecoveryPointArn =
      $GetRecoveryPointRestoreMetadataOutput->RecoveryPointArn;
    my $RestoreMetadata =
      $GetRecoveryPointRestoreMetadataOutput->RestoreMetadata;

    # Returns a L<Paws::Backup::GetRecoveryPointRestoreMetadataOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/GetRecoveryPointRestoreMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupVaultName => Str

The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the AWS Region where they are created. They consist of
lowercase letters, numbers, and hyphens.



=head2 B<REQUIRED> RecoveryPointArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a recovery
point; for example,
C<arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRecoveryPointRestoreMetadata in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

