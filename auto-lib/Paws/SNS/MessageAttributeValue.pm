package Paws::SNS::MessageAttributeValue;
  use Moose;
  has BinaryValue => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str', required => 1);
  has StringValue => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::MessageAttributeValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SNS::MessageAttributeValue object:

  $service_obj->Method(Att1 => { BinaryValue => $value, ..., StringValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SNS::MessageAttributeValue object:

  $result = $service_obj->Method(...);
  $result->Att1->BinaryValue

=head1 DESCRIPTION

The user-specified message attribute value. For string data types, the
value attribute has the same restrictions on the content as the message
body. For more information, see Publish
(http://docs.aws.amazon.com/sns/latest/api/API_Publish.html).

Name, type, and value must not be empty or null. In addition, the
message body should not be empty or null. All parts of the message
attribute, including name, type, and value, are included in the message
size restriction, which is currently 256 KB (262,144 bytes). For more
information, see Using Amazon SNS Message Attributes
(http://docs.aws.amazon.com/sns/latest/dg/SNSMessageAttributes.html).

=head1 ATTRIBUTES


=head2 BinaryValue => Str

  Binary type attributes can store any binary data, for example,
compressed data, encrypted data, or images.


=head2 B<REQUIRED> DataType => Str

  Amazon SNS supports the following logical data types: String,
String.Array, Number, and Binary. For more information, see Message
Attribute Data Types
(http://docs.aws.amazon.com/sns/latest/dg/SNSMessageAttributes.html#SNSMessageAttributes.DataTypes).


=head2 StringValue => Str

  Strings are Unicode with UTF8 binary encoding. For a list of code
values, see
http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
(http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

