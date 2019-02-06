
package Paws::Backup::PutBackupVaultNotifications;
  use Moose;
  has BackupVaultEvents => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has BackupVaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backupVaultName', required => 1);
  has SNSTopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBackupVaultNotifications');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup-vaults/{backupVaultName}/notification-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::PutBackupVaultNotifications - Arguments for method PutBackupVaultNotifications on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBackupVaultNotifications on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method PutBackupVaultNotifications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBackupVaultNotifications.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    $backup->PutBackupVaultNotifications(
      BackupVaultEvents => [
        'BACKUP_JOB_STARTED',
        ... # values: BACKUP_JOB_STARTED, BACKUP_JOB_COMPLETED, RESTORE_JOB_STARTED, RESTORE_JOB_COMPLETED, RECOVERY_POINT_MODIFIED, BACKUP_PLAN_CREATED, BACKUP_PLAN_MODIFIED
      ],
      BackupVaultName => 'MyBackupVaultName',
      SNSTopicArn     => 'MyARN',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/PutBackupVaultNotifications>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupVaultEvents => ArrayRef[Str|Undef]

An array of events that indicate the status of jobs to back up
resources to the backup vault.



=head2 B<REQUIRED> BackupVaultName => Str

The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the AWS Region where they are created. They consist of
lowercase letters, numbers, and hyphens.



=head2 B<REQUIRED> SNSTopicArn => Str

The Amazon Resource Name (ARN) that specifies the topic for a backup
vaultE<rsquo>s events; for example,
C<arn:aws:sns:us-west-2:111122223333:MyVaultTopic>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBackupVaultNotifications in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

