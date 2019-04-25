package Paws::Firehose::ParquetSerDe;
  use Moose;
  has BlockSizeBytes => (is => 'ro', isa => 'Int');
  has Compression => (is => 'ro', isa => 'Str');
  has EnableDictionaryCompression => (is => 'ro', isa => 'Bool');
  has MaxPaddingBytes => (is => 'ro', isa => 'Int');
  has PageSizeBytes => (is => 'ro', isa => 'Int');
  has WriterVersion => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::ParquetSerDe

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::ParquetSerDe object:

  $service_obj->Method(Att1 => { BlockSizeBytes => $value, ..., WriterVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::ParquetSerDe object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockSizeBytes

=head1 DESCRIPTION

A serializer to use for converting data to the Parquet format before
storing it in Amazon S3. For more information, see Apache Parquet
(https://parquet.apache.org/documentation/latest/).

=head1 ATTRIBUTES


=head2 BlockSizeBytes => Int

  The Hadoop Distributed File System (HDFS) block size. This is useful if
you intend to copy the data from Amazon S3 to HDFS before querying. The
default is 256 MiB and the minimum is 64 MiB. Kinesis Data Firehose
uses this value for padding calculations.


=head2 Compression => Str

  The compression code to use over data blocks. The possible values are
C<UNCOMPRESSED>, C<SNAPPY>, and C<GZIP>, with the default being
C<SNAPPY>. Use C<SNAPPY> for higher decompression speed. Use C<GZIP> if
the compression ration is more important than speed.


=head2 EnableDictionaryCompression => Bool

  Indicates whether to enable dictionary compression.


=head2 MaxPaddingBytes => Int

  The maximum amount of padding to apply. This is useful if you intend to
copy the data from Amazon S3 to HDFS before querying. The default is 0.


=head2 PageSizeBytes => Int

  The Parquet page size. Column chunks are divided into pages. A page is
conceptually an indivisible unit (in terms of compression and
encoding). The minimum value is 64 KiB and the default is 1 MiB.


=head2 WriterVersion => Str

  Indicates the version of row format to output. The possible values are
C<V1> and C<V2>. The default is C<V1>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

