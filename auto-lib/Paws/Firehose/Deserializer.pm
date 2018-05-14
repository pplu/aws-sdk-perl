package Paws::Firehose::Deserializer;
  use Moose;
  has HiveJsonSerDe => (is => 'ro', isa => 'Paws::Firehose::HiveJsonSerDe');
  has OpenXJsonSerDe => (is => 'ro', isa => 'Paws::Firehose::OpenXJsonSerDe');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::Deserializer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::Deserializer object:

  $service_obj->Method(Att1 => { HiveJsonSerDe => $value, ..., OpenXJsonSerDe => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::Deserializer object:

  $result = $service_obj->Method(...);
  $result->Att1->HiveJsonSerDe

=head1 DESCRIPTION

The deserializer you want Kinesis Data Firehose to use for converting
the input data from JSON. Kinesis Data Firehose then serializes the
data to its final format using the Serializer. Kinesis Data Firehose
supports two types of deserializers: the Apache Hive JSON SerDe
(https://cwiki.apache.org/confluence/display/Hive/LanguageManual+DDL#LanguageManualDDL-JSON)
and the OpenX JSON SerDe (https://github.com/rcongiu/Hive-JSON-Serde).

=head1 ATTRIBUTES


=head2 HiveJsonSerDe => L<Paws::Firehose::HiveJsonSerDe>

  The native Hive / HCatalog JsonSerDe. Used by Kinesis Data Firehose for
deserializing data, which means converting it from the JSON format in
preparation for serializing it to the Parquet or ORC format. This is
one of two deserializers you can choose, depending on which one offers
the functionality you need. The other option is the OpenX SerDe.


=head2 OpenXJsonSerDe => L<Paws::Firehose::OpenXJsonSerDe>

  The OpenX SerDe. Used by Kinesis Data Firehose for deserializing data,
which means converting it from the JSON format in preparation for
serializing it to the Parquet or ORC format. This is one of two
deserializers you can choose, depending on which one offers the
functionality you need. The other option is the native Hive / HCatalog
JsonSerDe.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

