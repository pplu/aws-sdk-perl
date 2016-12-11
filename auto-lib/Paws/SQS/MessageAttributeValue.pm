package Paws::SQS::MessageAttributeValue;
  use Moose;
  has BinaryListValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'BinaryListValue', xmlname => 'BinaryListValue', request_name => 'BinaryListValue', traits => ['NameInRequest','Unwrapped','NameInRequest']);
  has BinaryValue => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str', required => 1);
  has StringListValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'StringListValue', xmlname => 'StringListValue', request_name => 'StringListValue', traits => ['NameInRequest','Unwrapped','NameInRequest']);
  has StringValue => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::MessageAttributeValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SQS::MessageAttributeValue object:

  $service_obj->Method(Att1 => { BinaryListValues => $value, ..., StringValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SQS::MessageAttributeValue object:

  $result = $service_obj->Method(...);
  $result->Att1->BinaryListValues

=head1 DESCRIPTION

The user-specified message attribute value. For string data types, the
value attribute has the same restrictions on the content as the message
body. For more information, see SendMessage.

Name, type, and value must not be empty or null. In addition, the
message body should not be empty or null. All parts of the message
attribute, including name, type, and value, are included in the message
size restriction, which is currently 256 KB (262,144 bytes).

=head1 ATTRIBUTES


=head2 BinaryListValues => ArrayRef[Str|Undef]

  Not implemented. Reserved for future use.


=head2 BinaryValue => Str

  Binary type attributes can store any binary data, for example,
compressed data, encrypted data, or images.


=head2 B<REQUIRED> DataType => Str

  Amazon SQS supports the following logical data types: String, Number,
and Binary. For the Number data type, you must use StringValue.

You can also append custom labels. For more information, see Message
Attribute Data Types and Validation in the I<Amazon SQS Developer
Guide>.


=head2 StringListValues => ArrayRef[Str|Undef]

  Not implemented. Reserved for future use.


=head2 StringValue => Str

  Strings are Unicode with UTF8 binary encoding. For a list of code
values, see ASCII Printable Characters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

