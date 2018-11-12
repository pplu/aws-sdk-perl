package Paws::PinpointEmail::Message;
  use Moose;
  has Body => (is => 'ro', isa => 'Paws::PinpointEmail::Body', required => 1);
  has Subject => (is => 'ro', isa => 'Paws::PinpointEmail::Content', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::Message

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::Message object:

  $service_obj->Method(Att1 => { Body => $value, ..., Subject => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::Message object:

  $result = $service_obj->Method(...);
  $result->Att1->Body

=head1 DESCRIPTION

Represents the email message that you're sending. The C<Message> object
consists of a subject line and a message body.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => L<Paws::PinpointEmail::Body>

  The body of the message. You can specify an HTML version of the
message, a text-only version of the message, or both.


=head2 B<REQUIRED> Subject => L<Paws::PinpointEmail::Content>

  The subject line of the email. The subject line can only contain 7-bit
ASCII characters. However, you can specify non-ASCII characters in the
subject line by using encoded-word syntax, as described in RFC 2047
(https://tools.ietf.org/html/rfc2047).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

