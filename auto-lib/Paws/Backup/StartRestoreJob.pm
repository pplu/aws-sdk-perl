
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
to C<StartRestoreJob>. Idempotency tokens time out after one hour.
Therefore, if you call C<StartRestoreJob> multiple times with the same
idempotency token within one hour, AWS Backup recognizes that you are
requesting only one restore job and initiates only one. If you change
the idempotency token for each call, AWS Backup recognizes that you are
requesting to start multiple restores.



=head2 B<REQUIRED> Metadata => L<Paws::Backup::Metadata>

A set of metadata key-value pairs. Lists the metadata that the recovery
point was created with.



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

C<SGW> for AWS Storage Gateway

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

