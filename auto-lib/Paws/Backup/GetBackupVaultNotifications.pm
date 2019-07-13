
package Paws::Backup::GetBackupVaultNotifications;
  use Moose;
  has BackupVaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backupVaultName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBackupVaultNotifications');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup-vaults/{backupVaultName}/notification-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::GetBackupVaultNotificationsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetBackupVaultNotifications - Arguments for method GetBackupVaultNotifications on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBackupVaultNotifications on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method GetBackupVaultNotifications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBackupVaultNotifications.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $GetBackupVaultNotificationsOutput =
      $backup->GetBackupVaultNotifications(
      BackupVaultName => 'MyBackupVaultName',

      );

    # Results:
    my $BackupVaultArn = $GetBackupVaultNotificationsOutput->BackupVaultArn;
    my $BackupVaultEvents =
      $GetBackupVaultNotificationsOutput->BackupVaultEvents;
    my $BackupVaultName = $GetBackupVaultNotificationsOutput->BackupVaultName;
    my $SNSTopicArn     = $GetBackupVaultNotificationsOutput->SNSTopicArn;

    # Returns a L<Paws::Backup::GetBackupVaultNotificationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/GetBackupVaultNotifications>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupVaultName => Str

The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the AWS Region where they are created. They consist of
lowercase letters, numbers, and hyphens.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBackupVaultNotifications in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

