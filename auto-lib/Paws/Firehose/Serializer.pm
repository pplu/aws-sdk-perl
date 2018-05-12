package Paws::Firehose::Serializer;
  use Moose;
  has OrcSerDe => (is => 'ro', isa => 'Paws::Firehose::OrcSerDe');
  has ParquetSerDe => (is => 'ro', isa => 'Paws::Firehose::ParquetSerDe');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::Serializer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::Serializer object:

  $service_obj->Method(Att1 => { OrcSerDe => $value, ..., ParquetSerDe => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::Serializer object:

  $result = $service_obj->Method(...);
  $result->Att1->OrcSerDe

=head1 DESCRIPTION

The serializer that you want Kinesis Data Firehose to use to convert
data to the target format before writing it to Amazon S3. Kinesis Data
Firehose supports two types of serializers: the ORC SerDe
(https://hive.apache.org/javadocs/r1.2.2/api/org/apache/hadoop/hive/ql/io/orc/OrcSerde.html)
and the Parquet SerDe
(https://hive.apache.org/javadocs/r1.2.2/api/org/apache/hadoop/hive/ql/io/parquet/serde/ParquetHiveSerDe.html).

=head1 ATTRIBUTES


=head2 OrcSerDe => L<Paws::Firehose::OrcSerDe>

  A serializer to use for converting data to the ORC format before
storing it in Amazon S3. For more information, see Apache ORC
(https://orc.apache.org/docs/).


=head2 ParquetSerDe => L<Paws::Firehose::ParquetSerDe>

  A serializer to use for converting data to the Parquet format before
storing it in Amazon S3. For more information, see Apache Parquet
(https://parquet.apache.org/documentation/latest/).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

