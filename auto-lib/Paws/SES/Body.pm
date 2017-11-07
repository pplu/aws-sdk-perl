package Paws::SES::Body;
  use Moose;
  has Html => (is => 'ro', isa => 'Paws::SES::Content');
  has Text => (is => 'ro', isa => 'Paws::SES::Content');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::Body

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::Body object:

  $service_obj->Method(Att1 => { Html => $value, ..., Text => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::Body object:

  $result = $service_obj->Method(...);
  $result->Att1->Html

=head1 DESCRIPTION

Represents the body of the message. You can specify text, HTML, or
both. If you use both, then the message should display correctly in the
widest variety of email clients.

=head1 ATTRIBUTES


=head2 Html => L<Paws::SES::Content>

  The content of the message, in HTML format. Use this for email clients
that can process HTML. You can include clickable links, formatted text,
and much more in an HTML message.


=head2 Text => L<Paws::SES::Content>

  The content of the message, in text format. Use this for text-based
email clients, or clients on high-latency networks (such as mobile
devices).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

