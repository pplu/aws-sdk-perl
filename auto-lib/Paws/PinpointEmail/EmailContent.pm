package Paws::PinpointEmail::EmailContent;
  use Moose;
  has Raw => (is => 'ro', isa => 'Paws::PinpointEmail::RawMessage');
  has Simple => (is => 'ro', isa => 'Paws::PinpointEmail::Message');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::EmailContent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::EmailContent object:

  $service_obj->Method(Att1 => { Raw => $value, ..., Simple => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::EmailContent object:

  $result = $service_obj->Method(...);
  $result->Att1->Raw

=head1 DESCRIPTION

An object that defines the entire content of the email, including the
message headers and the body content. You can create a simple email
message, in which you specify the subject and the text and HTML
versions of the message body. You can also create raw messages, in
which you specify a complete MIME-formatted message. Raw messages can
include attachments and custom headers.

=head1 ATTRIBUTES


=head2 Raw => L<Paws::PinpointEmail::RawMessage>

  The raw email message. The message has to meet the following criteria:

=over

=item *

The message has to contain a header and a body, separated by one blank
line.

=item *

All of the required header fields must be present in the message.

=item *

Each part of a multipart MIME message must be formatted properly.

=item *

If you include attachments, they must be in a file format that Amazon
Pinpoint supports.

=item *

The entire message must be Base64 encoded.

=item *

If any of the MIME parts in your message contain content that is
outside of the 7-bit ASCII character range, you should encode that
content to ensure that recipients' email clients render the message
properly.

=item *

The length of any single line of text in the message can't exceed 1,000
characters. This restriction is defined in RFC 5321
(https://tools.ietf.org/html/rfc5321).

=back



=head2 Simple => L<Paws::PinpointEmail::Message>

  The simple email message. The message consists of a subject and a
message body.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

