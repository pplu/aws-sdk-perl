package Paws::S3::CSVInput;
  use Moose;
  has AllowQuotedRecordDelimiter => (is => 'ro', isa => 'Bool');
  has Comments => (is => 'ro', isa => 'Str');
  has FieldDelimiter => (is => 'ro', isa => 'Str');
  has FileHeaderInfo => (is => 'ro', isa => 'Str');
  has QuoteCharacter => (is => 'ro', isa => 'Str');
  has QuoteEscapeCharacter => (is => 'ro', isa => 'Str');
  has RecordDelimiter => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CSVInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::CSVInput object:

  $service_obj->Method(Att1 => { AllowQuotedRecordDelimiter => $value, ..., RecordDelimiter => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::CSVInput object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowQuotedRecordDelimiter

=head1 DESCRIPTION

Describes how a CSV-formatted input object is formatted.

=head1 ATTRIBUTES


=head2 AllowQuotedRecordDelimiter => Bool

  Specifies that CSV field values may contain quoted record delimiters
and such records should be allowed. Default value is FALSE. Setting
this value to TRUE may lower performance.


=head2 Comments => Str

  The single character used to indicate a row should be ignored when
present at the start of a row.


=head2 FieldDelimiter => Str

  The value used to separate individual fields in a record.


=head2 FileHeaderInfo => Str

  Describes the first line of input. Valid values: None, Ignore, Use.


=head2 QuoteCharacter => Str

  Value used for escaping where the field delimiter is part of the value.


=head2 QuoteEscapeCharacter => Str

  The single character used for escaping the quote character inside an
already escaped value.


=head2 RecordDelimiter => Str

  The value used to separate individual records.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

