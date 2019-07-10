package Paws::Pinpoint::SMSMessage;
  use Moose;
  has Body => (is => 'ro', isa => 'Str');
  has Keyword => (is => 'ro', isa => 'Str');
  has MessageType => (is => 'ro', isa => 'Str');
  has OriginationNumber => (is => 'ro', isa => 'Str');
  has SenderId => (is => 'ro', isa => 'Str');
  has Substitutions => (is => 'ro', isa => 'Paws::Pinpoint::MapOfListOf__string');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SMSMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SMSMessage object:

  $service_obj->Method(Att1 => { Body => $value, ..., Substitutions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SMSMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->Body

=head1 DESCRIPTION

Specifies the default settings for a one-time SMS message that's sent
directly to an endpoint.

=head1 ATTRIBUTES


=head2 Body => Str

  The body of the SMS message.


=head2 Keyword => Str

  The SMS program name that you provided to AWS Support when you
requested your dedicated number.


=head2 MessageType => Str

  The SMS message type. Valid values are: TRANSACTIONAL, the message is
critical or time-sensitive, such as a one-time password that supports a
customer transaction; and, PROMOTIONAL, the message is not critical or
time-sensitive, such as a marketing message.


=head2 OriginationNumber => Str

  The number that the SMS message originates from. This should be one of
the dedicated long codes or short codes that you requested from AWS
Support and is assigned to your AWS account. If you don't specify a
long or short code, Amazon Pinpoint assigns a random long code to the
SMS message.


=head2 SenderId => Str

  The sender ID to display as the sender of the message on a recipient's
device. Support for sender IDs varies by country or region.


=head2 Substitutions => L<Paws::Pinpoint::MapOfListOf__string>

  The message variables to use in the SMS message. You can override the
default variables with individual address variables.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

