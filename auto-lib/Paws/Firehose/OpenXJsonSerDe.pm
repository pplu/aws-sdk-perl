package Paws::Firehose::OpenXJsonSerDe;
  use Moose;
  has CaseInsensitive => (is => 'ro', isa => 'Bool');
  has ColumnToJsonKeyMappings => (is => 'ro', isa => 'Paws::Firehose::ColumnToJsonKeyMappings');
  has ConvertDotsInJsonKeysToUnderscores => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::OpenXJsonSerDe

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::OpenXJsonSerDe object:

  $service_obj->Method(Att1 => { CaseInsensitive => $value, ..., ConvertDotsInJsonKeysToUnderscores => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::OpenXJsonSerDe object:

  $result = $service_obj->Method(...);
  $result->Att1->CaseInsensitive

=head1 DESCRIPTION

The OpenX SerDe. Used by Kinesis Data Firehose for deserializing data,
which means converting it from the JSON format in preparation for
serializing it to the Parquet or ORC format. This is one of two
deserializers you can choose, depending on which one offers the
functionality you need. The other option is the native Hive / HCatalog
JsonSerDe.

=head1 ATTRIBUTES


=head2 CaseInsensitive => Bool

  When set to C<true>, which is the default, Kinesis Data Firehose
converts JSON keys to lowercase before deserializing them.


=head2 ColumnToJsonKeyMappings => L<Paws::Firehose::ColumnToJsonKeyMappings>

  Maps column names to JSON keys that aren't identical to the column
names. This is useful when the JSON contains keys that are Hive
keywords. For example, C<timestamp> is a Hive keyword. If you have a
JSON key named C<timestamp>, set this parameter to C<{"ts":
"timestamp"}> to map this key to a column named C<ts>.


=head2 ConvertDotsInJsonKeysToUnderscores => Bool

  When set to C<true>, specifies that the names of the keys include dots
and that you want Kinesis Data Firehose to replace them with
underscores. This is useful because Apache Hive does not allow dots in
column names. For example, if the JSON contains a key whose name is
"a.b", you can define the column name to be "a_b" when using this
option.

The default is C<false>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

