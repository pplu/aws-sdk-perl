package Paws::CloudFront::ViewerCertificate;
  use Moose;
  has CloudFrontDefaultCertificate => (is => 'ro', isa => 'Bool');
  has IAMCertificateId => (is => 'ro', isa => 'Str');
  has MinimumProtocolVersion => (is => 'ro', isa => 'Str');
  has SSLSupportMethod => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ViewerCertificate

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::ViewerCertificate object:

  $service_obj->Method(Att1 => { CloudFrontDefaultCertificate => $value, ..., SSLSupportMethod => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::ViewerCertificate object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudFrontDefaultCertificate

=head1 ATTRIBUTES

=head2 CloudFrontDefaultCertificate => Bool

  If you want viewers to use HTTPS to request your objects and you're
using the CloudFront domain name of your distribution in your object
URLs (for example, https://d111111abcdef8.cloudfront.net/logo.jpg), set
to true. Omit this value if you are setting an IAMCertificateId.

=head2 IAMCertificateId => Str

  If you want viewers to use HTTPS to request your objects and you're
using an alternate domain name in your object URLs (for example,
https://example.com/logo.jpg), specify the IAM certificate identifier
of the custom viewer certificate for this distribution. Specify either
this value or CloudFrontDefaultCertificate.

=head2 MinimumProtocolVersion => Str

  Specify the minimum version of the SSL protocol that you want
CloudFront to use, SSLv3 or TLSv1, for HTTPS connections. CloudFront
will serve your objects only to browsers or devices that support at
least the SSL version that you specify. The TLSv1 protocol is more
secure, so we recommend that you specify SSLv3 only if your users are
using browsers or devices that don't support TLSv1. If you're using a
custom certificate (if you specify a value for IAMCertificateId) and if
you're using dedicated IP (if you specify vip for SSLSupportMethod),
you can choose SSLv3 or TLSv1 as the MinimumProtocolVersion. If you're
using a custom certificate (if you specify a value for
IAMCertificateId) and if you're using SNI (if you specify sni-only for
SSLSupportMethod), you must specify TLSv1 for MinimumProtocolVersion.

=head2 SSLSupportMethod => Str

  If you specify a value for IAMCertificateId, you must also specify how
you want CloudFront to serve HTTPS requests. Valid values are vip and
sni-only. If you specify vip, CloudFront uses dedicated IP addresses
for your content and can respond to HTTPS requests from any viewer.
However, you must request permission to use this feature, and you incur
additional monthly charges. If you specify sni-only, CloudFront can
only respond to HTTPS requests from viewers that support Server Name
Indication (SNI). All modern browsers support SNI, but some browsers
still in use don't support SNI. Do not specify a value for
SSLSupportMethod if you specified true for
CloudFrontDefaultCertificate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

