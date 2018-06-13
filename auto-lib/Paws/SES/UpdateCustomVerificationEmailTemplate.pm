
package Paws::SES::UpdateCustomVerificationEmailTemplate;
  use Moose;
  has FailureRedirectionURL => (is => 'ro', isa => 'Str');
  has FromEmailAddress => (is => 'ro', isa => 'Str');
  has SuccessRedirectionURL => (is => 'ro', isa => 'Str');
  has TemplateContent => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);
  has TemplateSubject => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCustomVerificationEmailTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::UpdateCustomVerificationEmailTemplate - Arguments for method UpdateCustomVerificationEmailTemplate on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCustomVerificationEmailTemplate on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method UpdateCustomVerificationEmailTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCustomVerificationEmailTemplate.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    $email->UpdateCustomVerificationEmailTemplate(
      TemplateName          => 'MyTemplateName',
      FailureRedirectionURL => 'MyFailureRedirectionURL',    # OPTIONAL
      FromEmailAddress      => 'MyFromAddress',              # OPTIONAL
      SuccessRedirectionURL => 'MySuccessRedirectionURL',    # OPTIONAL
      TemplateContent       => 'MyTemplateContent',          # OPTIONAL
      TemplateSubject       => 'MySubject',                  # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/UpdateCustomVerificationEmailTemplate>

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

The content of the custom verification email. The total size of the
email must be less than 10 MB. The message body may contain HTML, with
some limitations. For more information, see Custom Verification Email
Frequently Asked Questions
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html#custom-verification-emails-faq)
in the I<Amazon SES Developer Guide>.



=head2 B<REQUIRED> TemplateName => Str

The name of the custom verification email template that you want to
update.



=head2 TemplateSubject => Str

The subject line of the custom verification email.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCustomVerificationEmailTemplate in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

