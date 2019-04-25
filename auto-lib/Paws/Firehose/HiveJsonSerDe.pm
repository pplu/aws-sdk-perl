package Paws::Firehose::HiveJsonSerDe;
  use Moose;
  has TimestampFormats => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::HiveJsonSerDe

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::HiveJsonSerDe object:

  $service_obj->Method(Att1 => { TimestampFormats => $value, ..., TimestampFormats => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::HiveJsonSerDe object:

  $result = $service_obj->Method(...);
  $result->Att1->TimestampFormats

=head1 DESCRIPTION

The native Hive / HCatalog JsonSerDe. Used by Kinesis Data Firehose for
deserializing data, which means converting it from the JSON format in
preparation for serializing it to the Parquet or ORC format. This is
one of two deserializers you can choose, depending on which one offers
the functionality you need. The other option is the OpenX SerDe.

=head1 ATTRIBUTES


=head2 TimestampFormats => ArrayRef[Str|Undef]

  Indicates how you want Kinesis Data Firehose to parse the date and
timestamps that may be present in your input data JSON. To specify
these format strings, follow the pattern syntax of JodaTime's
DateTimeFormat format strings. For more information, see Class
DateTimeFormat
(https://www.joda.org/joda-time/apidocs/org/joda/time/format/DateTimeFormat.html).
You can also use the special value C<millis> to parse timestamps in
epoch milliseconds. If you don't specify a format, Kinesis Data
Firehose uses C<java.sql.Timestamp::valueOf> by default.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

