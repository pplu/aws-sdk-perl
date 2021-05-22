
package Paws::SESv2::GetEmailTemplateResponse;
  use Moose;
  has TemplateContent => (is => 'ro', isa => 'Paws::SESv2::EmailTemplateContent', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetEmailTemplateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplateContent => L<Paws::SESv2::EmailTemplateContent>

The content of the email template, composed of a subject line, an HTML
part, and a text-only part.


=head2 B<REQUIRED> TemplateName => Str

The name of the template you want to retrieve.


=head2 _request_id => Str


=cut

