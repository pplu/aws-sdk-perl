
package Paws::PinpointEmail::PutEmailIdentityMailFromAttributes;
  use Moose;
  has BehaviorOnMxFailure => (is => 'ro', isa => 'Str');
  has EmailIdentity => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EmailIdentity', required => 1);
  has MailFromDomain => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutEmailIdentityMailFromAttributes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/email/identities/{EmailIdentity}/mail-from');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointEmail::PutEmailIdentityMailFromAttributesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::PutEmailIdentityMailFromAttributes - Arguments for method PutEmailIdentityMailFromAttributes on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutEmailIdentityMailFromAttributes on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method PutEmailIdentityMailFromAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutEmailIdentityMailFromAttributes.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $PutEmailIdentityMailFromAttributesResponse =
      $email->PutEmailIdentityMailFromAttributes(
      EmailIdentity       => 'MyIdentity',
      BehaviorOnMxFailure => 'USE_DEFAULT_VALUE',       # OPTIONAL
      MailFromDomain      => 'MyMailFromDomainName',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutEmailIdentityMailFromAttributes>

=head1 ATTRIBUTES


=head2 BehaviorOnMxFailure => Str

The action that you want Amazon Pinpoint to take if it can't read the
required MX record when you send an email. When you set this value to
C<UseDefaultValue>, Amazon Pinpoint uses I<amazonses.com> as the MAIL
FROM domain. When you set this value to C<RejectMessage>, Amazon
Pinpoint returns a C<MailFromDomainNotVerified> error, and doesn't
attempt to deliver the email.

These behaviors are taken when the custom MAIL FROM domain
configuration is in the C<Pending>, C<Failed>, and C<TemporaryFailure>
states.

Valid values are: C<"USE_DEFAULT_VALUE">, C<"REJECT_MESSAGE">

=head2 B<REQUIRED> EmailIdentity => Str

The verified email identity that you want to set up the custom MAIL
FROM domain for.



=head2 MailFromDomain => Str

The custom MAIL FROM domain that you want the verified identity to use.
The MAIL FROM domain must meet the following criteria:

=over

=item *

It has to be a subdomain of the verified identity.

=item *

It can't be used to receive email.

=item *

It can't be used in a "From" address if the MAIL FROM domain is a
destination for feedback forwarding emails.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutEmailIdentityMailFromAttributes in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

