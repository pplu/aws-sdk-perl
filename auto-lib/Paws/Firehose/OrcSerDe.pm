package Paws::Firehose::OrcSerDe;
  use Moose;
  has BlockSizeBytes => (is => 'ro', isa => 'Int');
  has BloomFilterColumns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has BloomFilterFalsePositiveProbability => (is => 'ro', isa => 'Num');
  has Compression => (is => 'ro', isa => 'Str');
  has DictionaryKeyThreshold => (is => 'ro', isa => 'Num');
  has EnablePadding => (is => 'ro', isa => 'Bool');
  has FormatVersion => (is => 'ro', isa => 'Str');
  has PaddingTolerance => (is => 'ro', isa => 'Num');
  has RowIndexStride => (is => 'ro', isa => 'Int');
  has StripeSizeBytes => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::OrcSerDe

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::OrcSerDe object:

  $service_obj->Method(Att1 => { BlockSizeBytes => $value, ..., StripeSizeBytes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::OrcSerDe object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockSizeBytes

=head1 DESCRIPTION

A serializer to use for converting data to the ORC format before
storing it in Amazon S3. For more information, see Apache ORC
(https://orc.apache.org/docs/).

=head1 ATTRIBUTES


=head2 BlockSizeBytes => Int

  The Hadoop Distributed File System (HDFS) block size. This is useful if
you intend to copy the data from Amazon S3 to HDFS before querying. The
default is 256 MiB and the minimum is 64 MiB. Kinesis Data Firehose
uses this value for padding calculations.


=head2 BloomFilterColumns => ArrayRef[Str|Undef]

  The column names for which you want Kinesis Data Firehose to create
bloom filters. The default is C<null>.


=head2 BloomFilterFalsePositiveProbability => Num

  The Bloom filter false positive probability (FPP). The lower the FPP,
the bigger the Bloom filter. The default value is 0.05, the minimum is
0, and the maximum is 1.


=head2 Compression => Str

  The compression code to use over data blocks. The default is C<SNAPPY>.


=head2 DictionaryKeyThreshold => Num

  Represents the fraction of the total number of non-null rows. To turn
off dictionary encoding, set this fraction to a number that is less
than the number of distinct keys in a dictionary. To always use
dictionary encoding, set this threshold to 1.


=head2 EnablePadding => Bool

  Set this to C<true> to indicate that you want stripes to be padded to
the HDFS block boundaries. This is useful if you intend to copy the
data from Amazon S3 to HDFS before querying. The default is C<false>.


=head2 FormatVersion => Str

  The version of the file to write. The possible values are C<V0_11> and
C<V0_12>. The default is C<V0_12>.


=head2 PaddingTolerance => Num

  A number between 0 and 1 that defines the tolerance for block padding
as a decimal fraction of stripe size. The default value is 0.05, which
means 5 percent of stripe size.

For the default values of 64 MiB ORC stripes and 256 MiB HDFS blocks,
the default block padding tolerance of 5 percent reserves a maximum of
3.2 MiB for padding within the 256 MiB block. In such a case, if the
available size within the block is more than 3.2 MiB, a new, smaller
stripe is inserted to fit within that space. This ensures that no
stripe crosses block boundaries and causes remote reads within a
node-local task.

Kinesis Data Firehose ignores this parameter when
OrcSerDe$EnablePadding is C<false>.


=head2 RowIndexStride => Int

  The number of rows between index entries. The default is 10,000 and the
minimum is 1,000.


=head2 StripeSizeBytes => Int

  The number of bytes in each stripe. The default is 64 MiB and the
minimum is 8 MiB.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

