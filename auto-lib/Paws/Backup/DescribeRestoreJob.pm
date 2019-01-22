
package Paws::Backup::DescribeRestoreJob;
  use Moose;
  has RestoreJobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restoreJobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRestoreJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restore-jobs/{restoreJobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::DescribeRestoreJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeRestoreJob - Arguments for method DescribeRestoreJob on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRestoreJob on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method DescribeRestoreJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRestoreJob.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $DescribeRestoreJobOutput = $backup->DescribeRestoreJob(
      RestoreJobId => 'MyRestoreJobId',

    );

    # Results:
    my $BackupSizeInBytes  = $DescribeRestoreJobOutput->BackupSizeInBytes;
    my $CompletionDate     = $DescribeRestoreJobOutput->CompletionDate;
    my $CreatedResourceArn = $DescribeRestoreJobOutput->CreatedResourceArn;
    my $CreationDate       = $DescribeRestoreJobOutput->CreationDate;
    my $ExpectedCompletionTimeMinutes =
      $DescribeRestoreJobOutput->ExpectedCompletionTimeMinutes;
    my $IamRoleArn       = $DescribeRestoreJobOutput->IamRoleArn;
    my $PercentDone      = $DescribeRestoreJobOutput->PercentDone;
    my $RecoveryPointArn = $DescribeRestoreJobOutput->RecoveryPointArn;
    my $RestoreJobId     = $DescribeRestoreJobOutput->RestoreJobId;
    my $Status           = $DescribeRestoreJobOutput->Status;
    my $StatusMessage    = $DescribeRestoreJobOutput->StatusMessage;

    # Returns a L<Paws::Backup::DescribeRestoreJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/DescribeRestoreJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RestoreJobId => Str

Uniquely identifies the job that restores a recovery point.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRestoreJob in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

