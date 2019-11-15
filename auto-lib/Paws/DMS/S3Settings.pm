package Paws::DMS::S3Settings;
  use Moose;
  has BucketFolder => (is => 'ro', isa => 'Str');
  has BucketName => (is => 'ro', isa => 'Str');
  has CdcInsertsOnly => (is => 'ro', isa => 'Bool');
  has CompressionType => (is => 'ro', isa => 'Str');
  has CsvDelimiter => (is => 'ro', isa => 'Str');
  has CsvRowDelimiter => (is => 'ro', isa => 'Str');
  has DataFormat => (is => 'ro', isa => 'Str');
  has DataPageSize => (is => 'ro', isa => 'Int');
  has DictPageSizeLimit => (is => 'ro', isa => 'Int');
  has EnableStatistics => (is => 'ro', isa => 'Bool');
  has EncodingType => (is => 'ro', isa => 'Str');
  has EncryptionMode => (is => 'ro', isa => 'Str');
  has ExternalTableDefinition => (is => 'ro', isa => 'Str');
  has IncludeOpForFullLoad => (is => 'ro', isa => 'Bool');
  has ParquetTimestampInMillisecond => (is => 'ro', isa => 'Bool');
  has ParquetVersion => (is => 'ro', isa => 'Str');
  has RowGroupLength => (is => 'ro', isa => 'Int');
  has ServerSideEncryptionKmsKeyId => (is => 'ro', isa => 'Str');
  has ServiceAccessRoleArn => (is => 'ro', isa => 'Str');
  has TimestampColumnName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::S3Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::S3Settings object:

  $service_obj->Method(Att1 => { BucketFolder => $value, ..., TimestampColumnName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::S3Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketFolder

=head1 DESCRIPTION

Settings for exporting data to Amazon S3.

=head1 ATTRIBUTES


=head2 BucketFolder => Str

  An optional parameter to set a folder name in the S3 bucket. If
provided, tables are created in the path C<
I<bucketFolder>/I<schema_name>/I<table_name>/>. If this parameter is
not specified, then the path used is C< I<schema_name>/I<table_name>/>.


=head2 BucketName => Str

  The name of the S3 bucket.


=head2 CdcInsertsOnly => Bool

  A value that enables a change data capture (CDC) load to write only
INSERT operations to .csv or columnar storage (.parquet) output files.
By default (the C<false> setting), the first field in a .csv or
.parquet record contains the letter I (INSERT), U (UPDATE), or D
(DELETE). These values indicate whether the row was inserted, updated,
or deleted at the source database for a CDC load to the target.

If C<CdcInsertsOnly> is set to C<true> or C<y>, only INSERTs from the
source database are migrated to the .csv or .parquet file. For .csv
format only, how these INSERTs are recorded depends on the value of
C<IncludeOpForFullLoad>. If C<IncludeOpForFullLoad> is set to C<true>,
the first field of every CDC record is set to I to indicate the INSERT
operation at the source. If C<IncludeOpForFullLoad> is set to C<false>,
every CDC record is written without a first field to indicate the
INSERT operation at the source. For more information about how these
settings work together, see Indicating Source DB Operations in Migrated
S3 Data
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps)
in the I<AWS Database Migration Service User Guide.>.

AWS DMS supports this interaction between the C<CdcInsertsOnly> and
C<IncludeOpForFullLoad> parameters in versions 3.1.4 and later.


=head2 CompressionType => Str

  An optional parameter to use GZIP to compress the target files. Set to
GZIP to compress the target files. Set to NONE (the default) or do not
use to leave the files uncompressed. Applies to both .csv and .parquet
file formats.


=head2 CsvDelimiter => Str

  The delimiter used to separate columns in the source files. The default
is a comma.


=head2 CsvRowDelimiter => Str

  The delimiter used to separate rows in the source files. The default is
a carriage return (C<\n>).


=head2 DataFormat => Str

  The format of the data that you want to use for output. You can choose
one of the following:

=over

=item *

C<csv> : This is a row-based file format with comma-separated values
(.csv).

=item *

C<parquet> : Apache Parquet (.parquet) is a columnar storage file
format that features efficient compression and provides faster query
response.

=back



=head2 DataPageSize => Int

  The size of one data page in bytes. This parameter defaults to 1024 *
1024 bytes (1 MiB). This number is used for .parquet file format only.


=head2 DictPageSizeLimit => Int

  The maximum size of an encoded dictionary page of a column. If the
dictionary page exceeds this, this column is stored using an encoding
type of C<PLAIN>. This parameter defaults to 1024 * 1024 bytes (1 MiB),
the maximum size of a dictionary page before it reverts to C<PLAIN>
encoding. This size is used for .parquet file format only.


=head2 EnableStatistics => Bool

  A value that enables statistics for Parquet pages and row groups.
Choose C<true> to enable statistics, C<false> to disable. Statistics
include C<NULL>, C<DISTINCT>, C<MAX>, and C<MIN> values. This parameter
defaults to C<true>. This value is used for .parquet file format only.


=head2 EncodingType => Str

  The type of encoding you are using:

=over

=item *

C<RLE_DICTIONARY> uses a combination of bit-packing and run-length
encoding to store repeated values more efficiently. This is the
default.

=item *

C<PLAIN> doesn't use encoding at all. Values are stored as they are.

=item *

C<PLAIN_DICTIONARY> builds a dictionary of the values encountered in a
given column. The dictionary is stored in a dictionary page for each
column chunk.

=back



=head2 EncryptionMode => Str

  The type of server-side encryption that you want to use for your data.
This encryption type is part of the endpoint settings or the extra
connections attributes for Amazon S3. You can choose either C<SSE_S3>
(the default) or C<SSE_KMS>. To use C<SSE_S3>, you need an AWS Identity
and Access Management (IAM) role with permission to allow
C<"arn:aws:s3:::dms-*"> to use the following actions:

=over

=item *

C<s3:CreateBucket>

=item *

C<s3:ListBucket>

=item *

C<s3:DeleteBucket>

=item *

C<s3:GetBucketLocation>

=item *

C<s3:GetObject>

=item *

C<s3:PutObject>

=item *

C<s3:DeleteObject>

=item *

C<s3:GetObjectVersion>

=item *

C<s3:GetBucketPolicy>

=item *

C<s3:PutBucketPolicy>

=item *

C<s3:DeleteBucketPolicy>

=back



=head2 ExternalTableDefinition => Str

  The external table definition.


=head2 IncludeOpForFullLoad => Bool

  A value that enables a full load to write INSERT operations to the
comma-separated value (.csv) output files only to indicate how the rows
were added to the source database.

AWS DMS supports the C<IncludeOpForFullLoad> parameter in versions
3.1.4 and later.

For full load, records can only be inserted. By default (the C<false>
setting), no information is recorded in these output files for a full
load to indicate that the rows were inserted at the source database. If
C<IncludeOpForFullLoad> is set to C<true> or C<y>, the INSERT is
recorded as an I annotation in the first field of the .csv file. This
allows the format of your target records from a full load to be
consistent with the target records from a CDC load.

This setting works together with the C<CdcInsertsOnly> parameter for
output to .csv files only. For more information about how these
settings work together, see Indicating Source DB Operations in Migrated
S3 Data
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps)
in the I<AWS Database Migration Service User Guide.>.


=head2 ParquetTimestampInMillisecond => Bool

  A value that specifies the precision of any C<TIMESTAMP> column values
that are written to an Amazon S3 object file in .parquet format.

AWS DMS supports the C<ParquetTimestampInMillisecond> parameter in
versions 3.1.4 and later.

When C<ParquetTimestampInMillisecond> is set to C<true> or C<y>, AWS
DMS writes all C<TIMESTAMP> columns in a .parquet formatted file with
millisecond precision. Otherwise, DMS writes them with microsecond
precision.

Currently, Amazon Athena and AWS Glue can handle only millisecond
precision for C<TIMESTAMP> values. Set this parameter to C<true> for S3
endpoint object files that are .parquet formatted only if you plan to
query or process the data with Athena or AWS Glue.

AWS DMS writes any C<TIMESTAMP> column values written to an S3 file in
.csv format with microsecond precision.

Setting C<ParquetTimestampInMillisecond> has no effect on the string
format of the timestamp column value that is inserted by setting the
C<TimestampColumnName> parameter.


=head2 ParquetVersion => Str

  The version of the Apache Parquet format that you want to use:
C<parquet_1_0> (the default) or C<parquet_2_0>.


=head2 RowGroupLength => Int

  The number of rows in a row group. A smaller row group size provides
faster reads. But as the number of row groups grows, the slower writes
become. This parameter defaults to 10,000 rows. This number is used for
.parquet file format only.

If you choose a value larger than the maximum, C<RowGroupLength> is set
to the max row group length in bytes (64 * 1024 * 1024).


=head2 ServerSideEncryptionKmsKeyId => Str

  If you are using C<SSE_KMS> for the C<EncryptionMode>, provide the AWS
KMS key ID. The key that you use needs an attached policy that enables
AWS Identity and Access Management (IAM) user permissions and allows
use of the key.

Here is a CLI example: C<aws dms create-endpoint --endpoint-identifier
I<value> --endpoint-type target --engine-name s3 --s3-settings
ServiceAccessRoleArn=I<value>,BucketFolder=I<value>,BucketName=I<value>,EncryptionMode=SSE_KMS,ServerSideEncryptionKmsKeyId=I<value>>


=head2 ServiceAccessRoleArn => Str

  The Amazon Resource Name (ARN) used by the service access IAM role.


=head2 TimestampColumnName => Str

  A value that when nonblank causes AWS DMS to add a column with
timestamp information to the endpoint data for an Amazon S3 target.

AWS DMS supports the C<TimestampColumnName> parameter in versions 3.1.4
and later.

DMS includes an additional C<STRING> column in the .csv or .parquet
object files of your migrated data when you set C<TimestampColumnName>
to a nonblank value.

For a full load, each row of this timestamp column contains a timestamp
for when the data was transferred from the source to the target by DMS.

For a change data capture (CDC) load, each row of the timestamp column
contains the timestamp for the commit of that row in the source
database.

The string format for this timestamp column value is C<yyyy-MM-dd
HH:mm:ss.SSSSSS>. By default, the precision of this value is in
microseconds. For a CDC load, the rounding of the precision depends on
the commit timestamp supported by DMS for the source database.

When the C<AddColumnName> parameter is set to C<true>, DMS also
includes a name for the timestamp column that you set with
C<TimestampColumnName>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

