
package Paws::RDS::CancelExportTask;
  use Moose;
  has ExportTaskIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelExportTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ExportTask');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CancelExportTaskResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CancelExportTask - Arguments for method CancelExportTask on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelExportTask on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CancelExportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelExportTask.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $ExportTask = $rds->CancelExportTask(
      ExportTaskIdentifier => 'MyString',

    );

    # Results:
    my $ExportOnly             = $ExportTask->ExportOnly;
    my $ExportTaskIdentifier   = $ExportTask->ExportTaskIdentifier;
    my $FailureCause           = $ExportTask->FailureCause;
    my $IamRoleArn             = $ExportTask->IamRoleArn;
    my $KmsKeyId               = $ExportTask->KmsKeyId;
    my $PercentProgress        = $ExportTask->PercentProgress;
    my $S3Bucket               = $ExportTask->S3Bucket;
    my $S3Prefix               = $ExportTask->S3Prefix;
    my $SnapshotTime           = $ExportTask->SnapshotTime;
    my $SourceArn              = $ExportTask->SourceArn;
    my $Status                 = $ExportTask->Status;
    my $TaskEndTime            = $ExportTask->TaskEndTime;
    my $TaskStartTime          = $ExportTask->TaskStartTime;
    my $TotalExtractedDataInGB = $ExportTask->TotalExtractedDataInGB;
    my $WarningMessage         = $ExportTask->WarningMessage;

    # Returns a L<Paws::RDS::ExportTask> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CancelExportTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportTaskIdentifier => Str

The identifier of the snapshot export task to cancel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelExportTask in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

