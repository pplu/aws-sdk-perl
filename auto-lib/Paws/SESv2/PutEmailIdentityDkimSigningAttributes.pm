
package Paws::SESv2::PutEmailIdentityDkimSigningAttributes;
  use Moose;
  has EmailIdentity => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EmailIdentity', required => 1);
  has SigningAttributes => (is => 'ro', isa => 'Paws::SESv2::DkimSigningAttributes');
  has SigningAttributesOrigin => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutEmailIdentityDkimSigningAttributes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/email/identities/{EmailIdentity}/dkim/signing');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::PutEmailIdentityDkimSigningAttributesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::PutEmailIdentityDkimSigningAttributes - Arguments for method PutEmailIdentityDkimSigningAttributes on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutEmailIdentityDkimSigningAttributes on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method PutEmailIdentityDkimSigningAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutEmailIdentityDkimSigningAttributes.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $PutEmailIdentityDkimSigningAttributesResponse =
      $email->PutEmailIdentityDkimSigningAttributes(
      EmailIdentity           => 'MyIdentity',
      SigningAttributesOrigin => 'AWS_SES',
      SigningAttributes       => {
        DomainSigningPrivateKey => 'MyPrivateKey',    # min: 1, max: 20480
        DomainSigningSelector   => 'MySelector',      # min: 1, max: 63

      },    # OPTIONAL
      );

    # Results:
    my $DkimStatus = $PutEmailIdentityDkimSigningAttributesResponse->DkimStatus;
    my $DkimTokens = $PutEmailIdentityDkimSigningAttributesResponse->DkimTokens;

# Returns a L<Paws::SESv2::PutEmailIdentityDkimSigningAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutEmailIdentityDkimSigningAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EmailIdentity => Str

The email identity that you want to configure DKIM for.



=head2 SigningAttributes => L<Paws::SESv2::DkimSigningAttributes>

An object that contains information about the private key and selector
that you want to use to configure DKIM for the identity. This object is
only required if you want to configure Bring Your Own DKIM (BYODKIM)
for the identity.



=head2 B<REQUIRED> SigningAttributesOrigin => Str

The method that you want to use to configure DKIM for the identity.
There are two possible values:

=over

=item *

C<AWS_SES> E<ndash> Configure DKIM for the identity by using Easy DKIM
(https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html).

=item *

C<EXTERNAL> E<ndash> Configure DKIM for the identity by using Bring
Your Own DKIM (BYODKIM).

=back


Valid values are: C<"AWS_SES">, C<"EXTERNAL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutEmailIdentityDkimSigningAttributes in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

