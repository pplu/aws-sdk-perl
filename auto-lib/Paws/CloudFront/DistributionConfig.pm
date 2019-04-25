package Paws::CloudFront::DistributionConfig;
  use Moose;
  has Aliases => (is => 'ro', isa => 'Paws::CloudFront::Aliases');
  has CacheBehaviors => (is => 'ro', isa => 'Paws::CloudFront::CacheBehaviors');
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has Comment => (is => 'ro', isa => 'Str', required => 1);
  has CustomErrorResponses => (is => 'ro', isa => 'Paws::CloudFront::CustomErrorResponses');
  has DefaultCacheBehavior => (is => 'ro', isa => 'Paws::CloudFront::DefaultCacheBehavior', required => 1);
  has DefaultRootObject => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has HttpVersion => (is => 'ro', isa => 'Str');
  has IsIPV6Enabled => (is => 'ro', isa => 'Bool');
  has Logging => (is => 'ro', isa => 'Paws::CloudFront::LoggingConfig');
  has OriginGroups => (is => 'ro', isa => 'Paws::CloudFront::OriginGroups');
  has Origins => (is => 'ro', isa => 'Paws::CloudFront::Origins', required => 1);
  has PriceClass => (is => 'ro', isa => 'Str');
  has Restrictions => (is => 'ro', isa => 'Paws::CloudFront::Restrictions');
  has ViewerCertificate => (is => 'ro', isa => 'Paws::CloudFront::ViewerCertificate');
  has WebACLId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::DistributionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::DistributionConfig object:

  $service_obj->Method(Att1 => { Aliases => $value, ..., WebACLId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::DistributionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Aliases

=head1 DESCRIPTION

A distribution configuration.

=head1 ATTRIBUTES


=head2 Aliases => L<Paws::CloudFront::Aliases>

  A complex type that contains information about CNAMEs (alternate domain
names), if any, for this distribution.


=head2 CacheBehaviors => L<Paws::CloudFront::CacheBehaviors>

  A complex type that contains zero or more C<CacheBehavior> elements.


=head2 B<REQUIRED> CallerReference => Str

  A unique value (for example, a date-time stamp) that ensures that the
request can't be replayed.

If the value of C<CallerReference> is new (regardless of the content of
the C<DistributionConfig> object), CloudFront creates a new
distribution.

If C<CallerReference> is a value that you already sent in a previous
request to create a distribution, CloudFront returns a
C<DistributionAlreadyExists> error.


=head2 B<REQUIRED> Comment => Str

  Any comments you want to include about the distribution.

If you don't want to specify a comment, include an empty C<Comment>
element.

To delete an existing comment, update the distribution configuration
and include an empty C<Comment> element.

To add or change a comment, update the distribution configuration and
specify the new comment.


=head2 CustomErrorResponses => L<Paws::CloudFront::CustomErrorResponses>

  A complex type that controls the following:

=over

=item *

Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range
with custom error messages before returning the response to the viewer.

=item *

How long CloudFront caches HTTP status codes in the 4xx and 5xx range.

=back

For more information about custom error pages, see Customizing Error
Responses
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 B<REQUIRED> DefaultCacheBehavior => L<Paws::CloudFront::DefaultCacheBehavior>

  A complex type that describes the default cache behavior if you don't
specify a C<CacheBehavior> element or if files don't match any of the
values of C<PathPattern> in C<CacheBehavior> elements. You must create
exactly one default cache behavior.


=head2 DefaultRootObject => Str

  The object that you want CloudFront to request from your origin (for
example, C<index.html>) when a viewer requests the root URL for your
distribution (C<http://www.example.com>) instead of an object in your
distribution (C<http://www.example.com/product-description.html>).
Specifying a default root object avoids exposing the contents of your
distribution.

Specify only the object name, for example, C<index.html>. Don't add a
C</> before the object name.

If you don't want to specify a default root object when you create a
distribution, include an empty C<DefaultRootObject> element.

To delete the default root object from an existing distribution, update
the distribution configuration and include an empty
C<DefaultRootObject> element.

To replace the default root object, update the distribution
configuration and specify the new object.

For more information about the default root object, see Creating a
Default Root Object
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DefaultRootObject.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 B<REQUIRED> Enabled => Bool

  From this field, you can enable or disable the selected distribution.


=head2 HttpVersion => Str

  (Optional) Specify the maximum HTTP version that you want viewers to
use to communicate with CloudFront. The default value for new web
distributions is http2. Viewers that don't support HTTP/2 automatically
use an earlier HTTP version.

For viewers and CloudFront to use HTTP/2, viewers must support TLS 1.2
or later, and must support Server Name Identification (SNI).

In general, configuring CloudFront to communicate with viewers using
HTTP/2 reduces latency. You can improve performance by optimizing for
HTTP/2. For more information, do an Internet search for "http/2
optimization."


=head2 IsIPV6Enabled => Bool

  If you want CloudFront to respond to IPv6 DNS requests with an IPv6
address for your distribution, specify C<true>. If you specify
C<false>, CloudFront responds to IPv6 DNS requests with the DNS
response code C<NOERROR> and with no IP addresses. This allows viewers
to submit a second request, for an IPv4 address for your distribution.

In general, you should enable IPv6 if you have users on IPv6 networks
who want to access your content. However, if you're using signed URLs
or signed cookies to restrict access to your content, and if you're
using a custom policy that includes the C<IpAddress> parameter to
restrict the IP addresses that can access your content, don't enable
IPv6. If you want to restrict access to some content by IP address and
not restrict access to other content (or restrict access but not by IP
address), you can create two distributions. For more information, see
Creating a Signed URL Using a Custom Policy
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-creating-signed-url-custom-policy.html)
in the I<Amazon CloudFront Developer Guide>.

If you're using an Amazon Route 53 alias resource record set to route
traffic to your CloudFront distribution, you need to create a second
alias resource record set when both of the following are true:

=over

=item *

You enable IPv6 for the distribution

=item *

You're using alternate domain names in the URLs for your objects

=back

For more information, see Routing Traffic to an Amazon CloudFront Web
Distribution by Using Your Domain Name
(http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html)
in the I<Amazon Route 53 Developer Guide>.

If you created a CNAME resource record set, either with Amazon Route 53
or with another DNS service, you don't need to make any changes. A
CNAME record will route traffic to your distribution regardless of the
IP address format of the viewer request.


=head2 Logging => L<Paws::CloudFront::LoggingConfig>

  A complex type that controls whether access logs are written for the
distribution.

For more information about logging, see Access Logs
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 OriginGroups => L<Paws::CloudFront::OriginGroups>

  A complex type that contains information about origin groups for this
distribution.


=head2 B<REQUIRED> Origins => L<Paws::CloudFront::Origins>

  A complex type that contains information about origins for this
distribution.


=head2 PriceClass => Str

  The price class that corresponds with the maximum price that you want
to pay for CloudFront service. If you specify C<PriceClass_All>,
CloudFront responds to requests for your objects from all CloudFront
edge locations.

If you specify a price class other than C<PriceClass_All>, CloudFront
serves your objects from the CloudFront edge location that has the
lowest latency among the edge locations in your price class. Viewers
who are in or near regions that are excluded from your specified price
class may encounter slower performance.

For more information about price classes, see Choosing the Price Class
for a CloudFront Distribution
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PriceClass.html)
in the I<Amazon CloudFront Developer Guide>. For information about
CloudFront pricing, including how price classes (such as Price Class
100) map to CloudFront regions, see Amazon CloudFront Pricing
(https://aws.amazon.com/cloudfront/pricing/). For price class
information, scroll down to see the table at the bottom of the page.


=head2 Restrictions => L<Paws::CloudFront::Restrictions>

  


=head2 ViewerCertificate => L<Paws::CloudFront::ViewerCertificate>

  


=head2 WebACLId => Str

  A unique identifier that specifies the AWS WAF web ACL, if any, to
associate with this distribution.

AWS WAF is a web application firewall that lets you monitor the HTTP
and HTTPS requests that are forwarded to CloudFront, and lets you
control access to your content. Based on conditions that you specify,
such as the IP addresses that requests originate from or the values of
query strings, CloudFront responds to requests either with the
requested content or with an HTTP 403 status code (Forbidden). You can
also configure CloudFront to return a custom error page when a request
is blocked. For more information about AWS WAF, see the AWS WAF
Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

