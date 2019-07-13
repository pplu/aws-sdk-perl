package Paws::CloudFront::ViewerCertificate;
  use Moose;
  has ACMCertificateArn => (is => 'ro', isa => 'Str');
  has Certificate => (is => 'ro', isa => 'Str');
  has CertificateSource => (is => 'ro', isa => 'Str');
  has CloudFrontDefaultCertificate => (is => 'ro', isa => 'Bool');
  has IAMCertificateId => (is => 'ro', isa => 'Str');
  has MinimumProtocolVersion => (is => 'ro', isa => 'Str');
  has SSLSupportMethod => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ViewerCertificate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::ViewerCertificate object:

  $service_obj->Method(Att1 => { ACMCertificateArn => $value, ..., SSLSupportMethod => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::ViewerCertificate object:

  $result = $service_obj->Method(...);
  $result->Att1->ACMCertificateArn

=head1 DESCRIPTION

A complex type that specifies the following:

=over

=item *

Whether you want viewers to use HTTP or HTTPS to request your objects.

=item *

If you want viewers to use HTTPS, whether you're using an alternate
domain name such as C<example.com> or the CloudFront domain name for
your distribution, such as C<d111111abcdef8.cloudfront.net>.

=item *

If you're using an alternate domain name, whether AWS Certificate
Manager (ACM) provided the certificate, or you purchased a certificate
from a third-party certificate authority and imported it into ACM or
uploaded it to the IAM certificate store.

=back

Specify only one of the following values:

=over

=item *

ACMCertificateArn
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ViewerCertificate.html#cloudfront-Type-ViewerCertificate-ACMCertificateArn)

=item *

IAMCertificateId
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ViewerCertificate.html#cloudfront-Type-ViewerCertificate-IAMCertificateId)

=item *

CloudFrontDefaultCertificate
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ViewerCertificate.html#cloudfront-Type-ViewerCertificate-CloudFrontDefaultCertificate)

=back

For more information, see Using Alternate Domain Names and HTTPS
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS)
in the I<Amazon CloudFront Developer Guide>.

=head1 ATTRIBUTES


=head2 ACMCertificateArn => Str

  If you want viewers to use HTTPS to request your objects and you're
using an alternate domain name, you must choose the type of certificate
that you want to use. Specify the following value if ACM provided your
certificate:

=over

=item *

C<E<lt>ACMCertificateArnE<gt>I<ARN for ACM SSL/TLS
certificate>E<lt>ACMCertificateArnE<gt>> where C< I<ARN for ACM SSL/TLS
certificate> > is the ARN for the ACM SSL/TLS certificate that you want
to use for this distribution.

=back

If you specify C<ACMCertificateArn>, you must also specify a value for
C<SSLSupportMethod>.


=head2 Certificate => Str

  This field is no longer used. Use one of the following fields instead:

=over

=item *

ACMCertificateArn
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ViewerCertificate.html#cloudfront-Type-ViewerCertificate-ACMCertificateArn)

=item *

IAMCertificateId
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ViewerCertificate.html#cloudfront-Type-ViewerCertificate-IAMCertificateId)

=item *

CloudFrontDefaultCertificate
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ViewerCertificate.html#cloudfront-Type-ViewerCertificate-CloudFrontDefaultCertificate)

=back



=head2 CertificateSource => Str

  This field is no longer used. Use one of the following fields instead:

=over

=item *

ACMCertificateArn
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ViewerCertificate.html#cloudfront-Type-ViewerCertificate-ACMCertificateArn)

=item *

IAMCertificateId
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ViewerCertificate.html#cloudfront-Type-ViewerCertificate-IAMCertificateId)

=item *

CloudFrontDefaultCertificate
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ViewerCertificate.html#cloudfront-Type-ViewerCertificate-CloudFrontDefaultCertificate)

=back



=head2 CloudFrontDefaultCertificate => Bool

  If you're using the CloudFront domain name for your distribution, such
as C<d111111abcdef8.cloudfront.net>, specify the following value:

=over

=item *

C<E<lt>CloudFrontDefaultCertificateE<gt>trueE<lt>CloudFrontDefaultCertificateE<gt>>

=back



=head2 IAMCertificateId => Str

  If you want viewers to use HTTPS to request your objects and you're
using an alternate domain name, you must choose the type of certificate
that you want to use. Specify the following value if you purchased your
certificate from a third-party certificate authority:

=over

=item *

C<E<lt>IAMCertificateIdE<gt>I<IAM certificate
ID>E<lt>IAMCertificateIdE<gt>> where C< I<IAM certificate ID> > is the
ID that IAM returned when you added the certificate to the IAM
certificate store.

=back

If you specify C<IAMCertificateId>, you must also specify a value for
C<SSLSupportMethod>.


=head2 MinimumProtocolVersion => Str

  Specify the security policy that you want CloudFront to use for HTTPS
connections. A security policy determines two settings:

=over

=item *

The minimum SSL/TLS protocol that CloudFront uses to communicate with
viewers

=item *

The cipher that CloudFront uses to encrypt the content that it returns
to viewers

=back

On the CloudFront console, this setting is called B<Security policy>.

We recommend that you specify C<TLSv1.1_2016> unless your users are
using browsers or devices that do not support TLSv1.1 or later.

When both of the following are true, you must specify C<TLSv1> or later
for the security policy:

=over

=item *

You're using a custom certificate: you specified a value for
C<ACMCertificateArn> or for C<IAMCertificateId>

=item *

You're using SNI: you specified C<sni-only> for C<SSLSupportMethod>

=back

If you specify C<true> for C<CloudFrontDefaultCertificate>, CloudFront
automatically sets the security policy to C<TLSv1> regardless of the
value that you specify for C<MinimumProtocolVersion>.

For information about the relationship between the security policy that
you choose and the protocols and ciphers that CloudFront uses to
communicate with viewers, see Supported SSL/TLS Protocols and Ciphers
for Communication Between Viewers and CloudFront
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html#secure-connections-supported-ciphers)
in the I<Amazon CloudFront Developer Guide>.


=head2 SSLSupportMethod => Str

  If you specify a value for ACMCertificateArn
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ViewerCertificate.html#cloudfront-Type-ViewerCertificate-ACMCertificateArn)
or for IAMCertificateId
(https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ViewerCertificate.html#cloudfront-Type-ViewerCertificate-IAMCertificateId),
you must also specify how you want CloudFront to serve HTTPS requests:
using a method that works for browsers and clients released after 2010
or one that works for all clients.

=over

=item *

C<sni-only>: CloudFront can respond to HTTPS requests from viewers that
support Server Name Indication (SNI). All modern browsers support SNI,
but there are a few that don't. For a current list of the browsers that
support SNI, see the Wikipedia entry Server Name Indication
(http://en.wikipedia.org/wiki/Server_Name_Indication). To learn about
options to explore if you have users with browsers that don't include
SNI support, see Choosing How CloudFront Serves HTTPS Requests
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cnames-https-dedicated-ip-or-sni.html)
in the I<Amazon CloudFront Developer Guide>.

=item *

C<vip>: CloudFront uses dedicated IP addresses for your content and can
respond to HTTPS requests from any viewer. However, there are
additional monthly charges. For details, including specific pricing
information, see Custom SSL options for Amazon CloudFront
(http://aws.amazon.com/cloudfront/custom-ssl-domains/) on the AWS
marketing site.

=back

Don't specify a value for C<SSLSupportMethod> if you specified
C<E<lt>CloudFrontDefaultCertificateE<gt>trueE<lt>CloudFrontDefaultCertificateE<gt>>.

For more information, see Choosing How CloudFront Serves HTTPS Requests
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cnames-https-dedicated-ip-or-sni.html)
in the I<Amazon CloudFront Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

