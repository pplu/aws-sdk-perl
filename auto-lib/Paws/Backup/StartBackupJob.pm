
package Paws::Backup::StartBackupJob;
  use Moose;
  has BackupVaultName => (is => 'ro', isa => 'Str', required => 1);
  has CompleteWindowMinutes => (is => 'ro', isa => 'Int');
  has IamRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has Lifecycle => (is => 'ro', isa => 'Paws::Backup::Lifecycle');
  has RecoveryPointTags => (is => 'ro', isa => 'Paws::Backup::Tags');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has StartWindowMinutes => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartBackupJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::StartBackupJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::StartBackupJob - Arguments for method StartBackupJob on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartBackupJob on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method StartBackupJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartBackupJob.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $StartBackupJobOutput = $backup->StartBackupJob(
      BackupVaultName       => 'MyBackupVaultName',
      IamRoleArn            => 'MyIAMRoleArn',
      ResourceArn           => 'MyARN',
      CompleteWindowMinutes => 1,                     # OPTIONAL
      IdempotencyToken      => 'Mystring',            # OPTIONAL
      Lifecycle             => {
        DeleteAfterDays            => 1,              # OPTIONAL
        MoveToColdStorageAfterDays => 1,              # OPTIONAL
      },    # OPTIONAL
      RecoveryPointTags => { 'MyTagKey' => 'MyTagValue', },    # OPTIONAL
      StartWindowMinutes => 1,                                 # OPTIONAL
    );

    # Results:
    my $BackupJobId      = $StartBackupJobOutput->BackupJobId;
    my $CreationDate     = $StartBackupJobOutput->CreationDate;
    my $RecoveryPointArn = $StartBackupJobOutput->RecoveryPointArn;

    # Returns a L<Paws::Backup::StartBackupJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/StartBackupJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupVaultName => Str

The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the AWS Region where they are created. They consist of
lowercase letters, numbers, and hyphens.



=head2 CompleteWindowMinutes => Int

The amount of time AWS Backup attempts a backup before canceling the
job and returning an error.



=head2 B<REQUIRED> IamRoleArn => Str

Specifies the IAM role ARN used to create the target recovery point;
for example, C<arn:aws:iam::123456789012:role/S3Access>.



=head2 IdempotencyToken => Str

A customer chosen string that can be used to distinguish between calls
to C<StartBackupJob>. Idempotency tokens time out after one hour.
Therefore, if you call C<StartBackupJob> multiple times with the same
idempotency token within one hour, AWS Backup recognizes that you are
requesting only one backup job and initiates only one. If you change
the idempotency token for each call, AWS Backup recognizes that you are
requesting to start multiple backups.



=head2 Lifecycle => L<Paws::Backup::Lifecycle>

The lifecycle defines when a protected resource is transitioned to cold
storage and when it expires. AWS Backup will transition and expire
backups automatically according to the lifecycle that you define.

Backups transitioned to cold storage must be stored in cold storage for
a minimum of 90 days. Therefore, the E<ldquo>expire after daysE<rdquo>
setting must be 90 days greater than the E<ldquo>transition to cold
after daysE<rdquo> setting. The E<ldquo>transition to cold after
daysE<rdquo> setting cannot be changed after a backup has been
transitioned to cold.



=head2 RecoveryPointTags => L<Paws::Backup::Tags>

To help organize your resources, you can assign your own metadata to
the resources that you create. Each tag is a key-value pair.



=head2 B<REQUIRED> ResourceArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a resource. The
format of the ARN depends on the resource type.



=head2 StartWindowMinutes => Int

The amount of time in minutes before beginning a backup.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartBackupJob in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

