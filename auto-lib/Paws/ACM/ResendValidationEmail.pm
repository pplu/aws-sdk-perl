
package Paws::ACM::ResendValidationEmail;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', required => 1);
  has Domain => (is => 'ro', isa => 'Str', required => 1);
  has ValidationDomain => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResendValidationEmail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::ResendValidationEmail - Arguments for method ResendValidationEmail on L<Paws::ACM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResendValidationEmail on the
L<AWS Certificate Manager|Paws::ACM> service. Use the attributes of this class
as arguments to method ResendValidationEmail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResendValidationEmail.

=head1 SYNOPSIS

    my $acm = Paws->service('ACM');
    $acm->ResendValidationEmail(
      CertificateArn   => 'MyArn',
      Domain           => 'MyDomainNameString',
      ValidationDomain => 'MyDomainNameString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm/ResendValidationEmail>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateArn => Str

String that contains the ARN of the requested certificate. The
certificate ARN is generated and returned by the RequestCertificate
action as soon as the request is made. By default, using this parameter
causes email to be sent to all top-level domains you specified in the
certificate request. The ARN must be of the form:

C<arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012>



=head2 B<REQUIRED> Domain => Str

The fully qualified domain name (FQDN) of the certificate that needs to
be validated.



=head2 B<REQUIRED> ValidationDomain => Str

The base validation domain that will act as the suffix of the email
addresses that are used to send the emails. This must be the same as
the C<Domain> value or a superdomain of the C<Domain> value. For
example, if you requested a certificate for
C<site.subdomain.example.com> and specify a B<ValidationDomain> of
C<subdomain.example.com>, ACM sends email to the domain registrant,
technical contact, and administrative contact in WHOIS and the
following five addresses:

=over

=item *

admin@subdomain.example.com

=item *

administrator@subdomain.example.com

=item *

hostmaster@subdomain.example.com

=item *

postmaster@subdomain.example.com

=item *

webmaster@subdomain.example.com

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResendValidationEmail in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

