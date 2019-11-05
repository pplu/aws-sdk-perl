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
  has ParquetVersion => (is => 'ro', isa => 'Str');
  has RowGroupLength => (is => 'ro', isa => 'Int');
  has ServerSideEncryptionKmsKeyId => (is => 'ro', isa => 'Str');
  has ServiceAccessRoleArn => (is => 'ro', isa => 'Str');

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

  $service_obj->Method(Att1 => { BucketFolder => $value, ..., ServiceAccessRoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::S3Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketFolder

=head1 DESCRIPTION

Settings for exporting data to Amazon S3.

=head1 ATTRIBUTES


=head2 BucketFolder => Str

  An optional parameter to set a folder name in the S3 bucket. If
provided, tables are created in the path
C<E<lt>bucketFolderE<gt>/E<lt>schema_nameE<gt>/E<lt>table_nameE<gt>/>.
If this parameter is not specified, then the path used is
C<E<lt>schema_nameE<gt>/E<lt>table_nameE<gt>/>.


=head2 BucketName => Str

  The name of the S3 bucket.


=head2 CdcInsertsOnly => Bool

  Option to write only C<INSERT> operations to the comma-separated value
(CSV) output files. By default, the first field in a CSV record
contains the letter C<I> (insert), C<U> (update) or C<D> (delete) to
indicate whether the row was inserted, updated, or deleted at the
source database. If C<cdcInsertsOnly> is set to true, then only
C<INSERT>s are recorded in the CSV file, without the C<I> annotation on
each line. Valid values are C<TRUE> and C<FALSE>.


=head2 CompressionType => Str

  An optional parameter to use GZIP to compress the target files. Set to
GZIP to compress the target files. Set to NONE (the default) or do not
use to leave the files uncompressed. Applies to both CSV and PARQUET
data formats.


=head2 CsvDelimiter => Str

  The delimiter used to separate columns in the source files. The default
is a comma.


=head2 CsvRowDelimiter => Str

  The delimiter used to separate rows in the source files. The default is
a carriage return (C<\n>).


=head2 DataFormat => Str

  The format of the data which you want to use for output. You can choose
one of the following:

=over

=item *

C<CSV> : This is a row-based format with comma-separated values.

=item *

C<PARQUET> : Apache Parquet is a columnar storage format that features
efficient compression and provides faster query response.

=back



=head2 DataPageSize => Int

  The size of one data page in bytes. Defaults to 1024 * 1024 bytes
(1MiB). For C<PARQUET> format only.


=head2 DictPageSizeLimit => Int

  The maximum size of an encoded dictionary page of a column. If the
dictionary page exceeds this, this column is stored using an encoding
type of C<PLAIN>. Defaults to 1024 * 1024 bytes (1MiB), the maximum
size of a dictionary page before it reverts to C<PLAIN> encoding. For
C<PARQUET> format only.


=head2 EnableStatistics => Bool

  Enables statistics for Parquet pages and rowGroups. Choose C<TRUE> to
enable statistics, choose C<FALSE> to disable. Statistics include
C<NULL>, C<DISTINCT>, C<MAX>, and C<MIN> values. Defaults to C<TRUE>.
For C<PARQUET> format only.


=head2 EncodingType => Str

  The type of encoding you are using: C<RLE_DICTIONARY> (default),
C<PLAIN>, or C<PLAIN_DICTIONARY>.

=over

=item *

C<RLE_DICTIONARY> uses a combination of bit-packing and run-length
encoding to store repeated values more efficiently.

=item *

C<PLAIN> does not use encoding at all. Values are stored as they are.

=item *

C<PLAIN_DICTIONARY> builds a dictionary of the values encountered in a
given column. The dictionary is stored in a dictionary page for each
column chunk.

=back



=head2 EncryptionMode => Str

  The type of server side encryption you want to use for your data. This
is part of the endpoint settings or the extra connections attributes
for Amazon S3. You can choose either C<SSE_S3> (default) or C<SSE_KMS>.
To use C<SSE_S3>, you need an IAM role with permission to allow
C<"arn:aws:s3:::dms-*"> to use the following actions:

=over

=item *

s3:CreateBucket

=item *

s3:ListBucket

=item *

s3:DeleteBucket

=item *

s3:GetBucketLocation

=item *

s3:GetObject

=item *

s3:PutObject

=item *

s3:DeleteObject

=item *

s3:GetObjectVersion

=item *

s3:GetBucketPolicy

=item *

s3:PutBucketPolicy

=item *

s3:DeleteBucketPolicy

=back



=head2 ExternalTableDefinition => Str

  The external table definition.


=head2 ParquetVersion => Str

  The version of Apache Parquet format you want to use: C<PARQUET_1_0>
(default) or C<PARQUET_2_0>.


=head2 RowGroupLength => Int

  The number of rows in a row group. A smaller row group size provides
faster reads. But as the number of row groups grows, the slower writes
become. Defaults to 10,000 (ten thousand) rows. For C<PARQUET> format
only.

If you choose a value larger than the maximum, C<RowGroupLength> is set
to the max row group length in bytes (64 * 1024 * 1024).


=head2 ServerSideEncryptionKmsKeyId => Str

  If you are using SSE_KMS for the C<EncryptionMode>, provide the KMS Key
ID. The key you use needs an attached policy that enables IAM user
permissions and allows use of the key.

Here is a CLI example: C<aws dms create-endpoint --endpoint-identifier
E<lt>valueE<gt> --endpoint-type target --engine-name s3 --s3-settings
ServiceAccessRoleArn=E<lt>valueE<gt>,BucketFolder=E<lt>valueE<gt>,BucketName=E<lt>valueE<gt>,EncryptionMode=SSE_KMS,ServerSideEncryptionKmsKeyId=E<lt>valueE<gt>>


=head2 ServiceAccessRoleArn => Str

  The Amazon Resource Name (ARN) used by the service access IAM role.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

