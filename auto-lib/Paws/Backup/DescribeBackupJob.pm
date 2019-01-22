
package Paws::Backup::DescribeBackupJob;
  use Moose;
  has BackupJobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backupJobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBackupJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup-jobs/{backupJobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::DescribeBackupJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeBackupJob - Arguments for method DescribeBackupJob on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBackupJob on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method DescribeBackupJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBackupJob.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $DescribeBackupJobOutput = $backup->DescribeBackupJob(
      BackupJobId => 'Mystring',

    );

    # Results:
    my $BackupJobId       = $DescribeBackupJobOutput->BackupJobId;
    my $BackupSizeInBytes = $DescribeBackupJobOutput->BackupSizeInBytes;
    my $BackupVaultArn    = $DescribeBackupJobOutput->BackupVaultArn;
    my $BackupVaultName   = $DescribeBackupJobOutput->BackupVaultName;
    my $BytesTransferred  = $DescribeBackupJobOutput->BytesTransferred;
    my $CompletionDate    = $DescribeBackupJobOutput->CompletionDate;
    my $CreatedBy         = $DescribeBackupJobOutput->CreatedBy;
    my $CreationDate      = $DescribeBackupJobOutput->CreationDate;
    my $ExpectedCompletionDate =
      $DescribeBackupJobOutput->ExpectedCompletionDate;
    my $IamRoleArn       = $DescribeBackupJobOutput->IamRoleArn;
    my $PercentDone      = $DescribeBackupJobOutput->PercentDone;
    my $RecoveryPointArn = $DescribeBackupJobOutput->RecoveryPointArn;
    my $ResourceArn      = $DescribeBackupJobOutput->ResourceArn;
    my $ResourceType     = $DescribeBackupJobOutput->ResourceType;
    my $StartBy          = $DescribeBackupJobOutput->StartBy;
    my $State            = $DescribeBackupJobOutput->State;
    my $StatusMessage    = $DescribeBackupJobOutput->StatusMessage;

    # Returns a L<Paws::Backup::DescribeBackupJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/DescribeBackupJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupJobId => Str

Uniquely identifies a request to AWS Backup to back up a resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBackupJob in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

