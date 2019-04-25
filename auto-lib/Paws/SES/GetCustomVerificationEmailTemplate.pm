
package Paws::SES::GetCustomVerificationEmailTemplate;
  use Moose;
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCustomVerificationEmailTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::GetCustomVerificationEmailTemplateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetCustomVerificationEmailTemplateResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetCustomVerificationEmailTemplate - Arguments for method GetCustomVerificationEmailTemplate on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCustomVerificationEmailTemplate on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method GetCustomVerificationEmailTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCustomVerificationEmailTemplate.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    my $GetCustomVerificationEmailTemplateResponse =
      $email->GetCustomVerificationEmailTemplate(
      TemplateName => 'MyTemplateName',

      );

    # Results:
    my $FailureRedirectionURL =
      $GetCustomVerificationEmailTemplateResponse->FailureRedirectionURL;
    my $FromEmailAddress =
      $GetCustomVerificationEmailTemplateResponse->FromEmailAddress;
    my $SuccessRedirectionURL =
      $GetCustomVerificationEmailTemplateResponse->SuccessRedirectionURL;
    my $TemplateContent =
      $GetCustomVerificationEmailTemplateResponse->TemplateContent;
    my $TemplateName =
      $GetCustomVerificationEmailTemplateResponse->TemplateName;
    my $TemplateSubject =
      $GetCustomVerificationEmailTemplateResponse->TemplateSubject;

    # Returns a L<Paws::SES::GetCustomVerificationEmailTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetCustomVerificationEmailTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplateName => Str

The name of the custom verification email template that you want to
retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCustomVerificationEmailTemplate in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

