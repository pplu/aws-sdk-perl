
package Paws::RDS::ExportTask;
  use Moose;
  has ExportOnly => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ExportTaskIdentifier => (is => 'ro', isa => 'Str');
  has FailureCause => (is => 'ro', isa => 'Str');
  has IamRoleArn => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has PercentProgress => (is => 'ro', isa => 'Int');
  has S3Bucket => (is => 'ro', isa => 'Str');
  has S3Prefix => (is => 'ro', isa => 'Str');
  has SnapshotTime => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TaskEndTime => (is => 'ro', isa => 'Str');
  has TaskStartTime => (is => 'ro', isa => 'Str');
  has TotalExtractedDataInGB => (is => 'ro', isa => 'Int');
  has WarningMessage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ExportTask

=head1 ATTRIBUTES


=head2 ExportOnly => ArrayRef[Str|Undef]

The data exported from the snapshot. Valid values are the following:

=over

=item *

C<database> - Export all the data from a specified database.

=item *

C<database.table> I<table-name> - Export a table of the snapshot. This
format is valid only for RDS for MySQL, RDS for MariaDB, and Aurora
MySQL.

=item *

C<database.schema> I<schema-name> - Export a database schema of the
snapshot. This format is valid only for RDS for PostgreSQL and Aurora
PostgreSQL.

=item *

C<database.schema.table> I<table-name> - Export a table of the database
schema. This format is valid only for RDS for PostgreSQL and Aurora
PostgreSQL.

=back



=head2 ExportTaskIdentifier => Str

A unique identifier for the snapshot export task. This ID isn't an
identifier for the Amazon S3 bucket where the snapshot is exported to.


=head2 FailureCause => Str

The reason the export failed, if it failed.


=head2 IamRoleArn => Str

The name of the IAM role that is used to write to Amazon S3 when
exporting a snapshot.


=head2 KmsKeyId => Str

The key identifier of the AWS KMS customer master key (CMK) that is
used to encrypt the snapshot when it's exported to Amazon S3. The AWS
KMS CMK identifier is its key ARN, key ID, alias ARN, or alias name.
The IAM role used for the snapshot export must have encryption and
decryption permissions to use this AWS KMS CMK.


=head2 PercentProgress => Int

The progress of the snapshot export task as a percentage.


=head2 S3Bucket => Str

The Amazon S3 bucket that the snapshot is exported to.


=head2 S3Prefix => Str

The Amazon S3 bucket prefix that is the file name and path of the
exported snapshot.


=head2 SnapshotTime => Str

The time that the snapshot was created.


=head2 SourceArn => Str

The Amazon Resource Name (ARN) of the snapshot exported to Amazon S3.


=head2 Status => Str

The progress status of the export task.


=head2 TaskEndTime => Str

The time that the snapshot export task completed.


=head2 TaskStartTime => Str

The time that the snapshot export task started.


=head2 TotalExtractedDataInGB => Int

The total amount of data exported, in gigabytes.


=head2 WarningMessage => Str

A warning about the snapshot export task.


=head2 _request_id => Str


=cut

