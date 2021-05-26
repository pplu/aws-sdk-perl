
package Paws::RDS::StartExportTask;
  use Moose;
  has ExportOnly => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ExportTaskIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has IamRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str', required => 1);
  has S3BucketName => (is => 'ro', isa => 'Str', required => 1);
  has S3Prefix => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartExportTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ExportTask');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'StartExportTaskResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::StartExportTask - Arguments for method StartExportTask on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartExportTask on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method StartExportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartExportTask.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $ExportTask = $rds->StartExportTask(
      ExportTaskIdentifier => 'MyString',
      IamRoleArn           => 'MyString',
      KmsKeyId             => 'MyString',
      S3BucketName         => 'MyString',
      SourceArn            => 'MyString',
      ExportOnly           => [ 'MyString', ... ],    # OPTIONAL
      S3Prefix             => 'MyString',             # OPTIONAL
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/StartExportTask>

=head1 ATTRIBUTES


=head2 ExportOnly => ArrayRef[Str|Undef]

The data to be exported from the snapshot. If this parameter is not
provided, all the snapshot data is exported. Valid values are the
following:

=over

=item *

C<database> - Export all the data of the snapshot.

=item *

C<database.table [table-name]> - Export a table of the snapshot.

=item *

C<database.schema [schema-name]> - Export a database schema of the
snapshot. This value isn't valid for RDS for MySQL, RDS for MariaDB, or
Aurora MySQL.

=item *

C<database.schema.table [table-name]> - Export a table of the database
schema. This value isn't valid for RDS for MySQL, RDS for MariaDB, or
Aurora MySQL.

=back




=head2 B<REQUIRED> ExportTaskIdentifier => Str

A unique identifier for the snapshot export task. This ID isn't an
identifier for the Amazon S3 bucket where the snapshot is to be
exported to.



=head2 B<REQUIRED> IamRoleArn => Str

The name of the IAM role to use for writing to the Amazon S3 bucket
when exporting a snapshot.



=head2 B<REQUIRED> KmsKeyId => Str

The ID of the AWS KMS key to use to encrypt the snapshot exported to
Amazon S3. The KMS key ID is the Amazon Resource Name (ARN), the KMS
key identifier, or the KMS key alias for the KMS encryption key. The
IAM role used for the snapshot export must have encryption and
decryption permissions to use this KMS key.



=head2 B<REQUIRED> S3BucketName => Str

The name of the Amazon S3 bucket to export the snapshot to.



=head2 S3Prefix => Str

The Amazon S3 bucket prefix to use as the file name and path of the
exported snapshot.



=head2 B<REQUIRED> SourceArn => Str

The Amazon Resource Name (ARN) of the snapshot to export to Amazon S3.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartExportTask in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

