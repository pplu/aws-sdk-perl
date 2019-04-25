
package Paws::SES::SetIdentityMailFromDomain;
  use Moose;
  has BehaviorOnMXFailure => (is => 'ro', isa => 'Str');
  has Identity => (is => 'ro', isa => 'Str', required => 1);
  has MailFromDomain => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetIdentityMailFromDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::SetIdentityMailFromDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetIdentityMailFromDomainResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::SetIdentityMailFromDomain - Arguments for method SetIdentityMailFromDomain on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetIdentityMailFromDomain on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method SetIdentityMailFromDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetIdentityMailFromDomain.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # SetIdentityMailFromDomain
    # The following example configures Amazon SES to use a custom MAIL FROM
    # domain for an identity:
    my $SetIdentityMailFromDomainResponse = $email->SetIdentityMailFromDomain(
      {
        'BehaviorOnMXFailure' => 'UseDefaultValue',
        'Identity'            => 'user@example.com',
        'MailFromDomain'      => 'bounces.example.com'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/SetIdentityMailFromDomain>

=head1 ATTRIBUTES


=head2 BehaviorOnMXFailure => Str

The action that you want Amazon SES to take if it cannot successfully
read the required MX record when you send an email. If you choose
C<UseDefaultValue>, Amazon SES will use amazonses.com (or a subdomain
of that) as the MAIL FROM domain. If you choose C<RejectMessage>,
Amazon SES will return a C<MailFromDomainNotVerified> error and not
send the email.

The action specified in C<BehaviorOnMXFailure> is taken when the custom
MAIL FROM domain setup is in the C<Pending>, C<Failed>, and
C<TemporaryFailure> states.

Valid values are: C<"UseDefaultValue">, C<"RejectMessage">

=head2 B<REQUIRED> Identity => Str

The verified identity for which you want to enable or disable the
specified custom MAIL FROM domain.



=head2 MailFromDomain => Str

The custom MAIL FROM domain that you want the verified identity to use.
The MAIL FROM domain must 1) be a subdomain of the verified identity,
2) not be used in a "From" address if the MAIL FROM domain is the
destination of email feedback forwarding (for more information, see the
Amazon SES Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html)),
and 3) not be used to receive emails. A value of C<null> disables the
custom MAIL FROM setting for the identity.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetIdentityMailFromDomain in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

