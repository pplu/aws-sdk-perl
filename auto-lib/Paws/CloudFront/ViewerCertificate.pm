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

A complex type that determines the distributionE<rsquo>s SSL/TLS
configuration for communicating with viewers.

If the distribution doesnE<rsquo>t use C<Aliases> (also known as
alternate domain names or CNAMEs)E<mdash>that is, if the distribution
uses the CloudFront domain name such as
C<d111111abcdef8.cloudfront.net>E<mdash>set
C<CloudFrontDefaultCertificate> to C<true> and leave all other fields
empty.

If the distribution uses C<Aliases> (alternate domain names or CNAMEs),
use the fields in this type to specify the following settings:

=over

=item *

Which viewers the distribution accepts HTTPS connections from: only
viewers that support server name indication (SNI)
(https://en.wikipedia.org/wiki/Server_Name_Indication) (recommended),
or all viewers including those that donE<rsquo>t support SNI.

=over

=item *

To accept HTTPS connections from only viewers that support SNI, set
C<SSLSupportMethod> to C<sni-only>. This is recommended. Most browsers
and clients released after 2010 support SNI.

=item *

To accept HTTPS connections from all viewers, including those that
donE<rsquo>t support SNI, set C<SSLSupportMethod> to C<vip>. This is
not recommended, and results in additional monthly charges from
CloudFront.

=back

=item *

The minimum SSL/TLS protocol version that the distribution can use to
communicate with viewers. To specify a minimum version, choose a value
for C<MinimumProtocolVersion>. For more information, see Security
Policy
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValues-security-policy)
in the I<Amazon CloudFront Developer Guide>.

=item *

The location of the SSL/TLS certificate, AWS Certificate Manager (ACM)
(https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html)
(recommended) or AWS Identity and Access Management (AWS IAM)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html).
You specify the location by setting a value in one of the following
fields (not both):

=over

=item *

C<ACMCertificateArn>

=item *

C<IAMCertificateId>

=back

=back

All distributions support HTTPS connections from viewers. To require
viewers to use HTTPS only, or to redirect them from HTTP to HTTPS, use
C<ViewerProtocolPolicy> in the C<CacheBehavior> or
C<DefaultCacheBehavior>. To specify how CloudFront should use SSL/TLS
to communicate with your custom origin, use C<CustomOriginConfig>.

For more information, see Using HTTPS with CloudFront
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https.html)
and Using Alternate Domain Names and HTTPS
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-alternate-domain-names.html)
in the I<Amazon CloudFront Developer Guide>.

=head1 ATTRIBUTES


=head2 ACMCertificateArn => Str

  If the distribution uses C<Aliases> (alternate domain names or CNAMEs)
and the SSL/TLS certificate is stored in AWS Certificate Manager (ACM)
(https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html),
provide the Amazon Resource Name (ARN) of the ACM certificate.
CloudFront only supports ACM certificates in the US East (N. Virginia)
Region (C<us-east-1>).

If you specify an ACM certificate ARN, you must also specify values for
C<MinimumProtocolVerison> and C<SSLSupportMethod>.


=head2 Certificate => Str

  This field is deprecated. Use one of the following fields instead:

=over

=item *

C<ACMCertificateArn>

=item *

C<IAMCertificateId>

=item *

C<CloudFrontDefaultCertificate>

=back



=head2 CertificateSource => Str

  This field is deprecated. Use one of the following fields instead:

=over

=item *

C<ACMCertificateArn>

=item *

C<IAMCertificateId>

=item *

C<CloudFrontDefaultCertificate>

=back



=head2 CloudFrontDefaultCertificate => Bool

  If the distribution uses the CloudFront domain name such as
C<d111111abcdef8.cloudfront.net>, set this field to C<true>.

If the distribution uses C<Aliases> (alternate domain names or CNAMEs),
set this field to C<false> and specify values for the following fields:

=over

=item *

C<ACMCertificateArn> or C<IAMCertificateId> (specify a value for one,
not both)

=item *

C<MinimumProtocolVersion>

=item *

C<SSLSupportMethod>

=back



=head2 IAMCertificateId => Str

  If the distribution uses C<Aliases> (alternate domain names or CNAMEs)
and the SSL/TLS certificate is stored in AWS Identity and Access
Management (AWS IAM)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html),
provide the ID of the IAM certificate.

If you specify an IAM certificate ID, you must also specify values for
C<MinimumProtocolVerison> and C<SSLSupportMethod>.


=head2 MinimumProtocolVersion => Str

  If the distribution uses C<Aliases> (alternate domain names or CNAMEs),
specify the security policy that you want CloudFront to use for HTTPS
connections with viewers. The security policy determines two settings:

=over

=item *

The minimum SSL/TLS protocol that CloudFront can use to communicate
with viewers.

=item *

The ciphers that CloudFront can use to encrypt the content that it
returns to viewers.

=back

For more information, see Security Policy
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValues-security-policy)
and Supported Protocols and Ciphers Between Viewers and CloudFront
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html#secure-connections-supported-ciphers)
in the I<Amazon CloudFront Developer Guide>.

On the CloudFront console, this setting is called B<Security Policy>.

We recommend that you specify C<TLSv1.2_2018> unless your viewers are
using browsers or devices that donE<rsquo>t support TLSv1.2.

When youE<rsquo>re using SNI only (you set C<SSLSupportMethod> to
C<sni-only>), you must specify C<TLSv1> or higher.

If the distribution uses the CloudFront domain name such as
C<d111111abcdef8.cloudfront.net> (you set
C<CloudFrontDefaultCertificate> to C<true>), CloudFront automatically
sets the security policy to C<TLSv1> regardless of the value that you
set here.


=head2 SSLSupportMethod => Str

  If the distribution uses C<Aliases> (alternate domain names or CNAMEs),
specify which viewers the distribution accepts HTTPS connections from.

=over

=item *

C<sni-only> E<ndash> The distribution accepts HTTPS connections from
only viewers that support server name indication (SNI)
(https://en.wikipedia.org/wiki/Server_Name_Indication). This is
recommended. Most browsers and clients released after 2010 support SNI.

=item *

C<vip> E<ndash> The distribution accepts HTTPS connections from all
viewers including those that donE<rsquo>t support SNI. This is not
recommended, and results in additional monthly charges from CloudFront.

=back

If the distribution uses the CloudFront domain name such as
C<d111111abcdef8.cloudfront.net>, donE<rsquo>t set a value for this
field.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

