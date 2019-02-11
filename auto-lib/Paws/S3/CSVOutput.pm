package Paws::S3::CSVOutput;
  use Moose;
  has FieldDelimiter => (is => 'ro', isa => 'Str');
  has QuoteCharacter => (is => 'ro', isa => 'Str');
  has QuoteEscapeCharacter => (is => 'ro', isa => 'Str');
  has QuoteFields => (is => 'ro', isa => 'Str');
  has RecordDelimiter => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CSVOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::CSVOutput object:

  $service_obj->Method(Att1 => { FieldDelimiter => $value, ..., RecordDelimiter => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::CSVOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->FieldDelimiter

=head1 DESCRIPTION

Describes how CSV-formatted results are formatted.

=head1 ATTRIBUTES


=head2 FieldDelimiter => Str

  The value used to separate individual fields in a record.


=head2 QuoteCharacter => Str

  The value used for escaping where the field delimiter is part of the
value.


=head2 QuoteEscapeCharacter => Str

  Th single character used for escaping the quote character inside an
already escaped value.


=head2 QuoteFields => Str

  Indicates whether or not all output fields should be quoted.


=head2 RecordDelimiter => Str

  The value used to separate individual records.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

