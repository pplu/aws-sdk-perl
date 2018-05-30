package Paws::Firehose::DataFormatConversionConfiguration;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has InputFormatConfiguration => (is => 'ro', isa => 'Paws::Firehose::InputFormatConfiguration');
  has OutputFormatConfiguration => (is => 'ro', isa => 'Paws::Firehose::OutputFormatConfiguration');
  has SchemaConfiguration => (is => 'ro', isa => 'Paws::Firehose::SchemaConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::DataFormatConversionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::DataFormatConversionConfiguration object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., SchemaConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::DataFormatConversionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

Specifies that you want Kinesis Data Firehose to convert data from the
JSON format to the Parquet or ORC format before writing it to Amazon
S3. Kinesis Data Firehose uses the serializer and deserializer that you
specify, in addition to the column information from the AWS Glue table,
to deserialize your input data from JSON and then serialize it to the
Parquet or ORC format. For more information, see Kinesis Data Firehose
Record Format Conversion
(https://docs.aws.amazon.com/firehose/latest/dev/record-format-conversion.html).

=head1 ATTRIBUTES


=head2 Enabled => Bool

  Defaults to C<true>. Set it to C<false> if you want to disable format
conversion while preserving the configuration details.


=head2 InputFormatConfiguration => L<Paws::Firehose::InputFormatConfiguration>

  Specifies the deserializer that you want Kinesis Data Firehose to use
to convert the format of your data from JSON.


=head2 OutputFormatConfiguration => L<Paws::Firehose::OutputFormatConfiguration>

  Specifies the serializer that you want Kinesis Data Firehose to use to
convert the format of your data to the Parquet or ORC format.


=head2 SchemaConfiguration => L<Paws::Firehose::SchemaConfiguration>

  Specifies the AWS Glue Data Catalog table that contains the column
information.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

