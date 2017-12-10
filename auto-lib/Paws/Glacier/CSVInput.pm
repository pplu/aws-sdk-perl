package Paws::Glacier::CSVInput;
  use Moose;
  has Comments => (is => 'ro', isa => 'Str');
  has FieldDelimiter => (is => 'ro', isa => 'Str');
  has FileHeaderInfo => (is => 'ro', isa => 'Str');
  has QuoteCharacter => (is => 'ro', isa => 'Str');
  has QuoteEscapeCharacter => (is => 'ro', isa => 'Str');
  has RecordDelimiter => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::CSVInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glacier::CSVInput object:

  $service_obj->Method(Att1 => { Comments => $value, ..., RecordDelimiter => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glacier::CSVInput object:

  $result = $service_obj->Method(...);
  $result->Att1->Comments

=head1 DESCRIPTION

Contains information about the comma-separated value (CSV) file to
select from.

=head1 ATTRIBUTES


=head2 Comments => Str

  A single character used to indicate that a row should be ignored when
the character is present at the start of that row.


=head2 FieldDelimiter => Str

  A value used to separate individual fields from each other within a
record.


=head2 FileHeaderInfo => Str

  Describes the first line of input. Valid values are C<None>, C<Ignore>,
and C<Use>.


=head2 QuoteCharacter => Str

  A value used as an escape character where the field delimiter is part
of the value.


=head2 QuoteEscapeCharacter => Str

  A single character used for escaping the quotation-mark character
inside an already escaped value.


=head2 RecordDelimiter => Str

  A value used to separate individual records from each other.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

