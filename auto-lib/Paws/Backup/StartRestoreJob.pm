
package Paws::Backup::StartRestoreJob;
  use Moose;
  has IamRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has Metadata => (is => 'ro', isa => 'Paws::Backup::Metadata', required => 1);
  has RecoveryPointArn => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartRestoreJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restore-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::StartRestoreJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::StartRestoreJob - Arguments for method StartRestoreJob on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartRestoreJob on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method StartRestoreJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartRestoreJob.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $StartRestoreJobOutput = $backup->StartRestoreJob(
      IamRoleArn       => 'MyIAMRoleArn',
      Metadata         => { 'MyMetadataKey' => 'MyMetadataValue', },
      RecoveryPointArn => 'MyARN',
      IdempotencyToken => 'Mystring',                                 # OPTIONAL
      ResourceType     => 'MyResourceType',                           # OPTIONAL
    );

    # Results:
    my $RestoreJobId = $StartRestoreJobOutput->RestoreJobId;

    # Returns a L<Paws::Backup::StartRestoreJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/StartRestoreJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IamRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that AWS Backup uses to
create the target recovery point; for example,
C<arn:aws:iam::123456789012:role/S3Access>.



=head2 IdempotencyToken => Str

A customer chosen string that can be used to distinguish between calls
to C<StartRestoreJob>.



=head2 B<REQUIRED> Metadata => L<Paws::Backup::Metadata>

A set of metadata key-value pairs. Contains information, such as a
resource name, required to restore a recovery point.

You can get configuration metadata about a resource at the time it was
backed-up by calling C<GetRecoveryPointRestoreMetadata>. However,
values in addition to those provided by
C<GetRecoveryPointRestoreMetadata> might be required to restore a
resource. For example, you might need to provide a new resource name if
the original already exists.

You need to specify specific metadata to restore an Amazon Elastic File
System (Amazon EFS) instance:

=over

=item *

C<file-system-id>: ID of the Amazon EFS file system that is backed up
by AWS Backup. Returned in C<GetRecoveryPointRestoreMetadata>.

=item *

C<Encrypted>: A Boolean value that, if true, specifies that the file
system is encrypted. If C<KmsKeyId> is specified, C<Encrypted> must be
set to C<true>.

=item *

C<KmsKeyId>: Specifies the AWS KMS key that is used to encrypt the
restored file system.

=item *

C<PerformanceMode>: Specifies the throughput mode of the file system.

=item *

C<CreationToken>: A user-supplied value that ensures the uniqueness
(idempotency) of the request.

=item *

C<newFileSystem>: A Boolean value that, if true, specifies that the
recovery point is restored to a new Amazon EFS file system.

=back




=head2 B<REQUIRED> RecoveryPointArn => Str

An ARN that uniquely identifies a recovery point; for example,
C<arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45>.



=head2 ResourceType => Str

Starts a job to restore a recovery point for one of the following
resources:

=over

=item *

C<EBS> for Amazon Elastic Block Store

=item *

C<Storage Gateway> for AWS Storage Gateway

=item *

C<RDS> for Amazon Relational Database Service

=item *

C<DDB> for Amazon DynamoDB

=item *

C<EFS> for Amazon Elastic File System

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartRestoreJob in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

