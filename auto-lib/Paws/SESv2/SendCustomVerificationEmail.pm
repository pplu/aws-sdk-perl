
package Paws::SESv2::SendCustomVerificationEmail;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendCustomVerificationEmail');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/outbound-custom-verification-emails');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::SendCustomVerificationEmailResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::SendCustomVerificationEmail - Arguments for method SendCustomVerificationEmail on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendCustomVerificationEmail on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method SendCustomVerificationEmail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendCustomVerificationEmail.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $SendCustomVerificationEmailResponse =
      $email->SendCustomVerificationEmail(
      EmailAddress         => 'MyEmailAddress',
      TemplateName         => 'MyEmailTemplateName',
      ConfigurationSetName => 'MyConfigurationSetName',    # OPTIONAL
      );

    # Results:
    my $MessageId = $SendCustomVerificationEmailResponse->MessageId;

    # Returns a L<Paws::SESv2::SendCustomVerificationEmailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/SendCustomVerificationEmail>

=head1 ATTRIBUTES


=head2 ConfigurationSetName => Str

Name of a configuration set to use when sending the verification email.



=head2 B<REQUIRED> EmailAddress => Str

The email address to verify.



=head2 B<REQUIRED> TemplateName => Str

The name of the custom verification email template to use when sending
the verification email.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendCustomVerificationEmail in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

