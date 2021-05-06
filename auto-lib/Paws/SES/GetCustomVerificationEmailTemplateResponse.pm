
package Paws::SES::GetCustomVerificationEmailTemplateResponse;
  use Moose;
  has FailureRedirectionURL => (is => 'ro', isa => 'Str');
  has FromEmailAddress => (is => 'ro', isa => 'Str');
  has SuccessRedirectionURL => (is => 'ro', isa => 'Str');
  has TemplateContent => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has TemplateSubject => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetCustomVerificationEmailTemplateResponse

=head1 ATTRIBUTES


=head2 FailureRedirectionURL => Str

The URL that the recipient of the verification email is sent to if his
or her address is not successfully verified.


=head2 FromEmailAddress => Str

The email address that the custom verification email is sent from.


=head2 SuccessRedirectionURL => Str

The URL that the recipient of the verification email is sent to if his
or her address is successfully verified.


=head2 TemplateContent => Str

The content of the custom verification email.


=head2 TemplateName => Str

The name of the custom verification email template.


=head2 TemplateSubject => Str

The subject line of the custom verification email.


=head2 _request_id => Str


=cut

