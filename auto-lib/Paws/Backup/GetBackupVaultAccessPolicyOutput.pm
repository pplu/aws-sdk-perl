
package Paws::Backup::GetBackupVaultAccessPolicyOutput;
  use Moose;
  has BackupVaultArn => (is => 'ro', isa => 'Str');
  has BackupVaultName => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetBackupVaultAccessPolicyOutput

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


=head2 Policy => Str

The backup vault access policy document in JSON format.


=head2 _request_id => Str


=cut

