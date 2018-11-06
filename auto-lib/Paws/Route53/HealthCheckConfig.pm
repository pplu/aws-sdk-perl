package Paws::Route53::HealthCheckConfig;
  use Moose;
  has AlarmIdentifier => (is => 'ro', isa => 'Paws::Route53::AlarmIdentifier');
  has ChildHealthChecks => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ChildHealthCheck', traits => ['NameInRequest']);
  has Disabled => (is => 'ro', isa => 'Bool');
  has EnableSNI => (is => 'ro', isa => 'Bool');
  has FailureThreshold => (is => 'ro', isa => 'Int');
  has FullyQualifiedDomainName => (is => 'ro', isa => 'Str');
  has HealthThreshold => (is => 'ro', isa => 'Int');
  has InsufficientDataHealthStatus => (is => 'ro', isa => 'Str');
  has Inverted => (is => 'ro', isa => 'Bool');
  has IPAddress => (is => 'ro', isa => 'Str');
  has MeasureLatency => (is => 'ro', isa => 'Bool');
  has Port => (is => 'ro', isa => 'Int');
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'Region', traits => ['NameInRequest']);
  has RequestInterval => (is => 'ro', isa => 'Int');
  has ResourcePath => (is => 'ro', isa => 'Str');
  has SearchString => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::HealthCheckConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::HealthCheckConfig object:

  $service_obj->Method(Att1 => { AlarmIdentifier => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::HealthCheckConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AlarmIdentifier

=head1 DESCRIPTION

A complex type that contains information about the health check.

=head1 ATTRIBUTES


=head2 AlarmIdentifier => L<Paws::Route53::AlarmIdentifier>

  A complex type that identifies the CloudWatch alarm that you want
Amazon Route 53 health checkers to use to determine whether the
specified health check is healthy.


=head2 ChildHealthChecks => ArrayRef[Str|Undef]

  (CALCULATED Health Checks Only) A complex type that contains one
C<ChildHealthCheck> element for each health check that you want to
associate with a C<CALCULATED> health check.


=head2 Disabled => Bool

  Stops Route 53 from performing health checks. When you disable a health
check, here's what happens:

=over

=item *

B<Health checks that check the health of endpoints:> Route 53 stops
submitting requests to your application, server, or other resource.

=item *

B<Calculated health checks:> Route 53 stops aggregating the status of
the referenced health checks.

=item *

B<Health checks that monitor CloudWatch alarms:> Route 53 stops
monitoring the corresponding CloudWatch metrics.

=back

After you disable a health check, Route 53 considers the status of the
health check to always be healthy. If you configured DNS failover,
Route 53 continues to route traffic to the corresponding resources. If
you want to stop routing traffic to a resource, change the value of
UpdateHealthCheckRequest$Inverted.

Charges for a health check still apply when the health check is
disabled. For more information, see Amazon Route 53 Pricing
(http://aws.amazon.com/route53/pricing/).


=head2 EnableSNI => Bool

  Specify whether you want Amazon Route 53 to send the value of
C<FullyQualifiedDomainName> to the endpoint in the C<client_hello>
message during TLS negotiation. This allows the endpoint to respond to
C<HTTPS> health check requests with the applicable SSL/TLS certificate.

Some endpoints require that C<HTTPS> requests include the host name in
the C<client_hello> message. If you don't enable SNI, the status of the
health check will be C<SSL alert handshake_failure>. A health check can
also have that status for other reasons. If SNI is enabled and you're
still getting the error, check the SSL/TLS configuration on your
endpoint and confirm that your certificate is valid.

The SSL/TLS certificate on your endpoint includes a domain name in the
C<Common Name> field and possibly several more in the C<Subject
Alternative Names> field. One of the domain names in the certificate
should match the value that you specify for
C<FullyQualifiedDomainName>. If the endpoint responds to the
C<client_hello> message with a certificate that does not include the
domain name that you specified in C<FullyQualifiedDomainName>, a health
checker will retry the handshake. In the second attempt, the health
checker will omit C<FullyQualifiedDomainName> from the C<client_hello>
message.


=head2 FailureThreshold => Int

  The number of consecutive health checks that an endpoint must pass or
fail for Amazon Route 53 to change the current status of the endpoint
from unhealthy to healthy or vice versa. For more information, see How
Amazon Route 53 Determines Whether an Endpoint Is Healthy
(http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html)
in the I<Amazon Route 53 Developer Guide>.

If you don't specify a value for C<FailureThreshold>, the default value
is three health checks.


=head2 FullyQualifiedDomainName => Str

  Amazon Route 53 behavior depends on whether you specify a value for
C<IPAddress>.

B<If you specify a value for> C<IPAddress>:

Amazon Route 53 sends health check requests to the specified IPv4 or
IPv6 address and passes the value of C<FullyQualifiedDomainName> in the
C<Host> header for all health checks except TCP health checks. This is
typically the fully qualified DNS name of the endpoint on which you
want Route 53 to perform health checks.

When Route 53 checks the health of an endpoint, here is how it
constructs the C<Host> header:

=over

=item *

If you specify a value of C<80> for C<Port> and C<HTTP> or
C<HTTP_STR_MATCH> for C<Type>, Route 53 passes the value of
C<FullyQualifiedDomainName> to the endpoint in the Host header.

=item *

If you specify a value of C<443> for C<Port> and C<HTTPS> or
C<HTTPS_STR_MATCH> for C<Type>, Route 53 passes the value of
C<FullyQualifiedDomainName> to the endpoint in the C<Host> header.

=item *

If you specify another value for C<Port> and any value except C<TCP>
for C<Type>, Route 53 passes C<FullyQualifiedDomainName:Port> to the
endpoint in the C<Host> header.

=back

If you don't specify a value for C<FullyQualifiedDomainName>, Route 53
substitutes the value of C<IPAddress> in the C<Host> header in each of
the preceding cases.

B<If you don't specify a value for C<IPAddress> >:

Route 53 sends a DNS request to the domain that you specify for
C<FullyQualifiedDomainName> at the interval that you specify for
C<RequestInterval>. Using an IPv4 address that DNS returns, Route 53
then checks the health of the endpoint.

If you don't specify a value for C<IPAddress>, Route 53 uses only IPv4
to send health checks to the endpoint. If there's no resource record
set with a type of A for the name that you specify for
C<FullyQualifiedDomainName>, the health check fails with a "DNS
resolution failed" error.

If you want to check the health of weighted, latency, or failover
resource record sets and you choose to specify the endpoint only by
C<FullyQualifiedDomainName>, we recommend that you create a separate
health check for each endpoint. For example, create a health check for
each HTTP server that is serving content for www.example.com. For the
value of C<FullyQualifiedDomainName>, specify the domain name of the
server (such as us-east-2-www.example.com), not the name of the
resource record sets (www.example.com).

In this configuration, if you create a health check for which the value
of C<FullyQualifiedDomainName> matches the name of the resource record
sets and you then associate the health check with those resource record
sets, health check results will be unpredictable.

In addition, if the value that you specify for C<Type> is C<HTTP>,
C<HTTPS>, C<HTTP_STR_MATCH>, or C<HTTPS_STR_MATCH>, Route 53 passes the
value of C<FullyQualifiedDomainName> in the C<Host> header, as it does
when you specify a value for C<IPAddress>. If the value of C<Type> is
C<TCP>, Route 53 doesn't pass a C<Host> header.


=head2 HealthThreshold => Int

  The number of child health checks that are associated with a
C<CALCULATED> health that Amazon Route 53 must consider healthy for the
C<CALCULATED> health check to be considered healthy. To specify the
child health checks that you want to associate with a C<CALCULATED>
health check, use the HealthCheckConfig$ChildHealthChecks and
HealthCheckConfig$ChildHealthChecks elements.

Note the following:

=over

=item *

If you specify a number greater than the number of child health checks,
Route 53 always considers this health check to be unhealthy.

=item *

If you specify C<0>, Route 53 always considers this health check to be
healthy.

=back



=head2 InsufficientDataHealthStatus => Str

  When CloudWatch has insufficient data about the metric to determine the
alarm state, the status that you want Amazon Route 53 to assign to the
health check:

=over

=item *

C<Healthy>: Route 53 considers the health check to be healthy.

=item *

C<Unhealthy>: Route 53 considers the health check to be unhealthy.

=item *

C<LastKnownStatus>: Route 53 uses the status of the health check from
the last time that CloudWatch had sufficient data to determine the
alarm state. For new health checks that have no last known status, the
default status for the health check is healthy.

=back



=head2 Inverted => Bool

  Specify whether you want Amazon Route 53 to invert the status of a
health check, for example, to consider a health check unhealthy when it
otherwise would be considered healthy.


=head2 IPAddress => Str

  The IPv4 or IPv6 IP address of the endpoint that you want Amazon Route
53 to perform health checks on. If you don't specify a value for
C<IPAddress>, Route 53 sends a DNS request to resolve the domain name
that you specify in C<FullyQualifiedDomainName> at the interval that
you specify in C<RequestInterval>. Using an IP address returned by DNS,
Route 53 then checks the health of the endpoint.

Use one of the following formats for the value of C<IPAddress>:

=over

=item *

B<IPv4 address>: four values between 0 and 255, separated by periods
(.), for example, C<192.0.2.44>.

=item *

B<IPv6 address>: eight groups of four hexadecimal values, separated by
colons (:), for example, C<2001:0db8:85a3:0000:0000:abcd:0001:2345>.
You can also shorten IPv6 addresses as described in RFC 5952, for
example, C<2001:db8:85a3::abcd:1:2345>.

=back

If the endpoint is an EC2 instance, we recommend that you create an
Elastic IP address, associate it with your EC2 instance, and specify
the Elastic IP address for C<IPAddress>. This ensures that the IP
address of your instance will never change.

For more information, see HealthCheckConfig$FullyQualifiedDomainName.

Constraints: Route 53 can't check the health of endpoints for which the
IP address is in local, private, non-routable, or multicast ranges. For
more information about IP addresses for which you can't create health
checks, see the following documents:

=over

=item *

RFC 5735, Special Use IPv4 Addresses
(https://tools.ietf.org/html/rfc5735)

=item *

RFC 6598, IANA-Reserved IPv4 Prefix for Shared Address Space
(https://tools.ietf.org/html/rfc6598)

=item *

RFC 5156, Special-Use IPv6 Addresses
(https://tools.ietf.org/html/rfc5156)

=back

When the value of C<Type> is C<CALCULATED> or C<CLOUDWATCH_METRIC>,
omit C<IPAddress>.


=head2 MeasureLatency => Bool

  Specify whether you want Amazon Route 53 to measure the latency between
health checkers in multiple AWS regions and your endpoint, and to
display CloudWatch latency graphs on the B<Health Checks> page in the
Route 53 console.

You can't change the value of C<MeasureLatency> after you create a
health check.


=head2 Port => Int

  The port on the endpoint on which you want Amazon Route 53 to perform
health checks. Specify a value for C<Port> only when you specify a
value for C<IPAddress>.


=head2 Regions => ArrayRef[Str|Undef]

  A complex type that contains one C<Region> element for each region from
which you want Amazon Route 53 health checkers to check the specified
endpoint.

If you don't specify any regions, Route 53 health checkers
automatically performs checks from all of the regions that are listed
under B<Valid Values>.

If you update a health check to remove a region that has been
performing health checks, Route 53 will briefly continue to perform
checks from that region to ensure that some health checkers are always
checking the endpoint (for example, if you replace three regions with
four different regions).


=head2 RequestInterval => Int

  The number of seconds between the time that Amazon Route 53 gets a
response from your endpoint and the time that it sends the next health
check request. Each Route 53 health checker makes requests at this
interval.

You can't change the value of C<RequestInterval> after you create a
health check.

If you don't specify a value for C<RequestInterval>, the default value
is C<30> seconds.


=head2 ResourcePath => Str

  The path, if any, that you want Amazon Route 53 to request when
performing health checks. The path can be any value for which your
endpoint will return an HTTP status code of 2xx or 3xx when the
endpoint is healthy, for example, the file
/docs/route53-health-check.html. You can also include query string
parameters, for example, C</welcome.html?language=jp&login=y>.


=head2 SearchString => Str

  If the value of Type is C<HTTP_STR_MATCH> or C<HTTP_STR_MATCH>, the
string that you want Amazon Route 53 to search for in the response body
from the specified resource. If the string appears in the response
body, Route 53 considers the resource healthy.

Route 53 considers case when searching for C<SearchString> in the
response body.


=head2 B<REQUIRED> Type => Str

  The type of health check that you want to create, which indicates how
Amazon Route 53 determines whether an endpoint is healthy.

You can't change the value of C<Type> after you create a health check.

You can create the following types of health checks:

=over

=item *

B<HTTP>: Route 53 tries to establish a TCP connection. If successful,
Route 53 submits an HTTP request and waits for an HTTP status code of
200 or greater and less than 400.

=item *

B<HTTPS>: Route 53 tries to establish a TCP connection. If successful,
Route 53 submits an HTTPS request and waits for an HTTP status code of
200 or greater and less than 400.

If you specify C<HTTPS> for the value of C<Type>, the endpoint must
support TLS v1.0 or later.

=item *

B<HTTP_STR_MATCH>: Route 53 tries to establish a TCP connection. If
successful, Route 53 submits an HTTP request and searches the first
5,120 bytes of the response body for the string that you specify in
C<SearchString>.

=item *

B<HTTPS_STR_MATCH>: Route 53 tries to establish a TCP connection. If
successful, Route 53 submits an C<HTTPS> request and searches the first
5,120 bytes of the response body for the string that you specify in
C<SearchString>.

=item *

B<TCP>: Route 53 tries to establish a TCP connection.

=item *

B<CLOUDWATCH_METRIC>: The health check is associated with a CloudWatch
alarm. If the state of the alarm is C<OK>, the health check is
considered healthy. If the state is C<ALARM>, the health check is
considered unhealthy. If CloudWatch doesn't have sufficient data to
determine whether the state is C<OK> or C<ALARM>, the health check
status depends on the setting for C<InsufficientDataHealthStatus>:
C<Healthy>, C<Unhealthy>, or C<LastKnownStatus>.

=item *

B<CALCULATED>: For health checks that monitor the status of other
health checks, Route 53 adds up the number of health checks that Route
53 health checkers consider to be healthy and compares that number with
the value of C<HealthThreshold>.

=back

For more information, see How Route 53 Determines Whether an Endpoint
Is Healthy
(http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html)
in the I<Amazon Route 53 Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

