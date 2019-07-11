package Paws::Pinpoint::SimpleEmail;
  use Moose;
  has HtmlPart => (is => 'ro', isa => 'Paws::Pinpoint::SimpleEmailPart');
  has Subject => (is => 'ro', isa => 'Paws::Pinpoint::SimpleEmailPart');
  has TextPart => (is => 'ro', isa => 'Paws::Pinpoint::SimpleEmailPart');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SimpleEmail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SimpleEmail object:

  $service_obj->Method(Att1 => { HtmlPart => $value, ..., TextPart => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SimpleEmail object:

  $result = $service_obj->Method(...);
  $result->Att1->HtmlPart

=head1 DESCRIPTION

Specifies the content of an email message, composed of a subject, a
text part, and an HTML part.

=head1 ATTRIBUTES


=head2 HtmlPart => L<Paws::Pinpoint::SimpleEmailPart>

  The body of the email message, in HTML format. We recommend using an
HTML part for email clients that support HTML. You can include links,
formatted text, and more in an HTML message.


=head2 Subject => L<Paws::Pinpoint::SimpleEmailPart>

  The subject line, or title, of the email.


=head2 TextPart => L<Paws::Pinpoint::SimpleEmailPart>

  The body of the email message, in text format. We recommend using a
text part for email clients that don't support HTML and clients that
are connected to high-latency networks, such as mobile devices.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

