
package Paws::Backup::StartCopyJob;
  use Moose;
  has DestinationBackupVaultArn => (is => 'ro', isa => 'Str', required => 1);
  has IamRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has Lifecycle => (is => 'ro', isa => 'Paws::Backup::Lifecycle');
  has RecoveryPointArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceBackupVaultName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartCopyJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/copy-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::StartCopyJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::StartCopyJob - Arguments for method StartCopyJob on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartCopyJob on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method StartCopyJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartCopyJob.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $StartCopyJobOutput = $backup->StartCopyJob(
      DestinationBackupVaultArn => 'MyARN',
      IamRoleArn                => 'MyIAMRoleArn',
      RecoveryPointArn          => 'MyARN',
      SourceBackupVaultName     => 'MyBackupVaultName',
      IdempotencyToken          => 'Mystring',            # OPTIONAL
      Lifecycle                 => {
        DeleteAfterDays            => 1,                  # OPTIONAL
        MoveToColdStorageAfterDays => 1,                  # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $CopyJobId    = $StartCopyJobOutput->CopyJobId;
    my $CreationDate = $StartCopyJobOutput->CreationDate;

    # Returns a L<Paws::Backup::StartCopyJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/StartCopyJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationBackupVaultArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a destination
backup vault to copy to; for example,
C<arn:aws:backup:us-east-1:123456789012:vault:aBackupVault>.



=head2 B<REQUIRED> IamRoleArn => Str

Specifies the IAM role ARN used to copy the target recovery point; for
example, arn:aws:iam::123456789012:role/S3Access.



=head2 IdempotencyToken => Str

A customer chosen string that can be used to distinguish between calls
to C<StartCopyJob>.



=head2 Lifecycle => L<Paws::Backup::Lifecycle>





=head2 B<REQUIRED> RecoveryPointArn => Str

An ARN that uniquely identifies a recovery point to use for the copy
job; for example,
arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.



=head2 B<REQUIRED> SourceBackupVaultName => Str

The name of a logical source container where backups are stored. Backup
vaults are identified by names that are unique to the account used to
create them and the AWS Region where they are created. They consist of
lowercase letters, numbers, and hyphens. E<gt>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartCopyJob in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

