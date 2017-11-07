package Paws::SES::Template;
  use Moose;
  has HtmlPart => (is => 'ro', isa => 'Str');
  has SubjectPart => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);
  has TextPart => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::Template

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::Template object:

  $service_obj->Method(Att1 => { HtmlPart => $value, ..., TextPart => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::Template object:

  $result = $service_obj->Method(...);
  $result->Att1->HtmlPart

=head1 DESCRIPTION

The content of the email, composed of a subject line, an HTML part, and
a text-only part.

=head1 ATTRIBUTES


=head2 HtmlPart => Str

  The HTML body of the email.


=head2 SubjectPart => Str

  The subject line of the email.


=head2 B<REQUIRED> TemplateName => Str

  The name of the template. You will refer to this name when you send
email using the C<SendTemplatedEmail> or C<SendBulkTemplatedEmail>
operations.


=head2 TextPart => Str

  The email body that will be visible to recipients whose email clients
do not display HTML.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

