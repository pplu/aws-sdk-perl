
package Paws::Backup::CreateBackupVault;
  use Moose;
  has BackupVaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backupVaultName', required => 1);
  has BackupVaultTags => (is => 'ro', isa => 'Paws::Backup::Tags');
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has EncryptionKeyArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBackupVault');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup-vaults/{backupVaultName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::CreateBackupVaultOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::CreateBackupVault - Arguments for method CreateBackupVault on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBackupVault on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method CreateBackupVault.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBackupVault.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $CreateBackupVaultOutput = $backup->CreateBackupVault(
      BackupVaultName  => 'MyBackupVaultName',
      BackupVaultTags  => { 'MyTagKey' => 'MyTagValue', },    # OPTIONAL
      CreatorRequestId => 'Mystring',                         # OPTIONAL
      EncryptionKeyArn => 'MyARN',                            # OPTIONAL
    );

    # Results:
    my $BackupVaultArn  = $CreateBackupVaultOutput->BackupVaultArn;
    my $BackupVaultName = $CreateBackupVaultOutput->BackupVaultName;
    my $CreationDate    = $CreateBackupVaultOutput->CreationDate;

    # Returns a L<Paws::Backup::CreateBackupVaultOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/CreateBackupVault>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupVaultName => Str

The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the AWS Region where they are created. They consist of
lowercase letters, numbers, and hyphens.



=head2 BackupVaultTags => L<Paws::Backup::Tags>

Metadata that you can assign to help organize the resources that you
create. Each tag is a key-value pair.



=head2 CreatorRequestId => Str

A unique string that identifies the request and allows failed requests
to be retried without the risk of executing the operation twice.



=head2 EncryptionKeyArn => Str

The server-side encryption key that is used to protect your backups;
for example,
C<arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBackupVault in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

