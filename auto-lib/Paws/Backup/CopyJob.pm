package Paws::Backup::CopyJob;
  use Moose;
  has BackupSizeInBytes => (is => 'ro', isa => 'Int');
  has CompletionDate => (is => 'ro', isa => 'Str');
  has CopyJobId => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Paws::Backup::RecoveryPointCreator');
  has CreationDate => (is => 'ro', isa => 'Str');
  has DestinationBackupVaultArn => (is => 'ro', isa => 'Str');
  has DestinationRecoveryPointArn => (is => 'ro', isa => 'Str');
  has IamRoleArn => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has SourceBackupVaultArn => (is => 'ro', isa => 'Str');
  has SourceRecoveryPointArn => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::CopyJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::CopyJob object:

  $service_obj->Method(Att1 => { BackupSizeInBytes => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::CopyJob object:

  $result = $service_obj->Method(...);
  $result->Att1->BackupSizeInBytes

=head1 DESCRIPTION

Contains detailed information about a copy job.

=head1 ATTRIBUTES


=head2 BackupSizeInBytes => Int

  The size, in bytes, of a copy job.


=head2 CompletionDate => Str

  The date and time a job to create a copy job is completed, in Unix
format and Coordinated Universal Time (UTC). The value of
CompletionDate is accurate to milliseconds. For example, the value
1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 CopyJobId => Str

  Uniquely identifies a request to AWS Backup to copy a resource.


=head2 CreatedBy => L<Paws::Backup::RecoveryPointCreator>

  


=head2 CreationDate => Str

  The date and time a copy job is created, in Unix format and Coordinated
Universal Time (UTC). The value of CreationDate is accurate to
milliseconds. For example, the value 1516925490.087 represents Friday,
January 26, 2018 12:11:30.087 AM.


=head2 DestinationBackupVaultArn => Str

  An Amazon Resource Name (ARN) that uniquely identifies a destination
copy vault; for example,
arn:aws:backup:us-east-1:123456789012:vault:aBackupVault.


=head2 DestinationRecoveryPointArn => Str

  An ARN that uniquely identifies a destination recovery point; for
example,
arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.


=head2 IamRoleArn => Str

  Specifies the IAM role ARN used to copy the target recovery point; for
example, arn:aws:iam::123456789012:role/S3Access.


=head2 ResourceArn => Str

  The type of AWS resource to be copied; for example, an Amazon Elastic
Block Store (Amazon EBS) volume or an Amazon Relational Database
Service (Amazon RDS) database.


=head2 ResourceType => Str

  The type of AWS resource to be copied; for example, an Amazon Elastic
Block Store (Amazon EBS) volume or an Amazon Relational Database
Service (Amazon RDS) database.


=head2 SourceBackupVaultArn => Str

  An Amazon Resource Name (ARN) that uniquely identifies a source copy
vault; for example,
arn:aws:backup:us-east-1:123456789012:vault:aBackupVault.


=head2 SourceRecoveryPointArn => Str

  An ARN that uniquely identifies a source recovery point; for example,
arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.


=head2 State => Str

  The current state of a resource recovery point.


=head2 StatusMessage => Str

  A detailed message explaining the status of the job that to copy a
resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

