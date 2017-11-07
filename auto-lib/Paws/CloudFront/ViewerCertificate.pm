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

You must specify only one of the following values:

=over

=item *

ViewerCertificate$ACMCertificateArn

=item *

ViewerCertificate$IAMCertificateId

=item *

ViewerCertificate$CloudFrontDefaultCertificate

=back

Don't specify C<false> for C<CloudFrontDefaultCertificate>.

B<If you want viewers to use HTTP instead of HTTPS to request your
objects>: Specify the following value:

C<E<lt>CloudFrontDefaultCertificateE<gt>trueE<lt>CloudFrontDefaultCertificateE<gt>>

In addition, specify C<allow-all> for C<ViewerProtocolPolicy> for all
of your cache behaviors.

B<If you want viewers to use HTTPS to request your objects>: Choose the
type of certificate that you want to use based on whether you're using
an alternate domain name for your objects or the CloudFront domain
name:

=over

=item *

B<If you're using an alternate domain name, such as example.com>:
Specify one of the following values, depending on whether ACM provided
your certificate or you purchased your certificate from third-party
certificate authority:

=over

=item *

C<E<lt>ACMCertificateArnE<gt>I<ARN for ACM SSL/TLS
certificate>E<lt>ACMCertificateArnE<gt>> where C< I<ARN for ACM SSL/TLS
certificate> > is the ARN for the ACM SSL/TLS certificate that you want
to use for this distribution.

=item *

C<E<lt>IAMCertificateIdE<gt>I<IAM certificate
ID>E<lt>IAMCertificateIdE<gt>> where C< I<IAM certificate ID> > is the
ID that IAM returned when you added the certificate to the IAM
certificate store.

=back

If you specify C<ACMCertificateArn> or C<IAMCertificateId>, you must
also specify a value for C<SSLSupportMethod>.

If you choose to use an ACM certificate or a certificate in the IAM
certificate store, we recommend that you use only an alternate domain
name in your object URLs (C<https://example.com/logo.jpg>). If you use
the domain name that is associated with your CloudFront distribution
(such as C<https://d111111abcdef8.cloudfront.net/logo.jpg>) and the
viewer supports C<SNI>, then CloudFront behaves normally. However, if
the browser does not support SNI, the user's experience depends on the
value that you choose for C<SSLSupportMethod>:

=over

=item *

C<vip>: The viewer displays a warning because there is a mismatch
between the CloudFront domain name and the domain name in your SSL/TLS
certificate.

=item *

C<sni-only>: CloudFront drops the connection with the browser without
returning the object.

=back

=item *

B<If you're using the CloudFront domain name for your distribution,
such as C<d111111abcdef8.cloudfront.net> >: Specify the following
value:

C<E<lt>CloudFrontDefaultCertificateE<gt>trueE<lt>CloudFrontDefaultCertificateE<gt>>

=back

If you want viewers to use HTTPS, you must also specify one of the
following values in your cache behaviors:

=over

=item *

C<E<lt>ViewerProtocolPolicyE<gt>https-onlyE<lt>ViewerProtocolPolicyE<gt>>

=item *

C<E<lt>ViewerProtocolPolicyE<gt>redirect-to-httpsE<lt>ViewerProtocolPolicyE<gt>>

=back

You can also optionally require that CloudFront use HTTPS to
communicate with your origin by specifying one of the following values
for the applicable origins:

=over

=item *

C<E<lt>OriginProtocolPolicyE<gt>https-onlyE<lt>OriginProtocolPolicyE<gt>>

=item *

C<E<lt>OriginProtocolPolicyE<gt>match-viewerE<lt>OriginProtocolPolicyE<gt>>

=back

For more information, see Using Alternate Domain Names and HTTPS
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS)
in the I<Amazon CloudFront Developer Guide>.

=head1 ATTRIBUTES


=head2 ACMCertificateArn => Str

  For information about how and when to use C<ACMCertificateArn>, see
ViewerCertificate.


=head2 Certificate => Str

  This field has been deprecated. Use one of the following fields
instead:

=over

=item *

ViewerCertificate$ACMCertificateArn

=item *

ViewerCertificate$IAMCertificateId

=item *

ViewerCertificate$CloudFrontDefaultCertificate

=back



=head2 CertificateSource => Str

  This field has been deprecated. Use one of the following fields
instead:

=over

=item *

ViewerCertificate$ACMCertificateArn

=item *

ViewerCertificate$IAMCertificateId

=item *

ViewerCertificate$CloudFrontDefaultCertificate

=back



=head2 CloudFrontDefaultCertificate => Bool

  For information about how and when to use
C<CloudFrontDefaultCertificate>, see ViewerCertificate.


=head2 IAMCertificateId => Str

  For information about how and when to use C<IAMCertificateId>, see
ViewerCertificate.


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
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html#secure-connections-supported-ciphers)
in the I<Amazon CloudFront Developer Guide>.


=head2 SSLSupportMethod => Str

  If you specify a value for ViewerCertificate$ACMCertificateArn or for
ViewerCertificate$IAMCertificateId, you must also specify how you want
CloudFront to serve HTTPS requests: using a method that works for all
clients or one that works for most clients:

=over

=item *

C<vip>: CloudFront uses dedicated IP addresses for your content and can
respond to HTTPS requests from any viewer. However, you will incur
additional monthly charges.

=item *

C<sni-only>: CloudFront can respond to HTTPS requests from viewers that
support Server Name Indication (SNI). All modern browsers support SNI,
but some browsers still in use don't support SNI. If some of your
users' browsers don't support SNI, we recommend that you do one of the
following:

=over

=item *

Use the C<vip> option (dedicated IP addresses) instead of C<sni-only>.

=item *

Use the CloudFront SSL/TLS certificate instead of a custom certificate.
This requires that you use the CloudFront domain name of your
distribution in the URLs for your objects, for example,
C<https://d111111abcdef8.cloudfront.net/logo.png>.

=item *

If you can control which browser your users use, upgrade the browser to
one that supports SNI.

=item *

Use HTTP instead of HTTPS.

=back

=back

Don't specify a value for C<SSLSupportMethod> if you specified
C<E<lt>CloudFrontDefaultCertificateE<gt>trueE<lt>CloudFrontDefaultCertificateE<gt>>.

For more information, see Using Alternate Domain Names and HTTPS
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS.html)
in the I<Amazon CloudFront Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

