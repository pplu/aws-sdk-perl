package Paws::Route53::HealthCheckConfig;
  use Moose;
  has AlarmIdentifier => (is => 'ro', isa => 'Paws::Route53::AlarmIdentifier');
  has ChildHealthChecks => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableSNI => (is => 'ro', isa => 'Bool');
  has FailureThreshold => (is => 'ro', isa => 'Int');
  has FullyQualifiedDomainName => (is => 'ro', isa => 'Str');
  has HealthThreshold => (is => 'ro', isa => 'Int');
  has InsufficientDataHealthStatus => (is => 'ro', isa => 'Str');
  has Inverted => (is => 'ro', isa => 'Bool');
  has IPAddress => (is => 'ro', isa => 'Str');
  has MeasureLatency => (is => 'ro', isa => 'Bool');
  has Port => (is => 'ro', isa => 'Int');
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
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
Amazon Route 53 health checkers to use to determine whether this health
check is healthy.


=head2 ChildHealthChecks => ArrayRef[Str|Undef]

  (CALCULATED Health Checks Only) A complex type that contains one
C<ChildHealthCheck> element for each health check that you want to
associate with a C<CALCULATED> health check.


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
Amazon Route 53 Determines Whether an Endpoint Is Healthy in the
I<Amazon Route 53 Developer Guide>.


=head2 FullyQualifiedDomainName => Str

  Amazon Route 53 behavior depends on whether you specify a value for
C<IPAddress>.

B<If you specify> C<IPAddress>:

The value that you want Amazon Route 53 to pass in the C<Host> header
in all health checks except TCP health checks. This is typically the
fully qualified DNS name of the website that you are attempting to
health check. When Amazon Route 53 checks the health of an endpoint,
here is how it constructs the C<Host> header:

=over

=item *

If you specify a value of C<80> for C<Port> and C<HTTP> or
C<HTTP_STR_MATCH> for C<Type>, Amazon Route 53 passes the value of
C<FullyQualifiedDomainName> to the endpoint in the Host header.

=item *

If you specify a value of C<443> for C<Port> and C<HTTPS> or
C<HTTPS_STR_MATCH> for C<Type>, Amazon Route 53 passes the value of
C<FullyQualifiedDomainName> to the endpoint in the C<Host> header.

=item *

If you specify another value for C<Port> and any value except C<TCP>
for C<Type>, Amazon Route 53 passes C<FullyQualifiedDomainName:Port> to
the endpoint in the C<Host> header.

=back

If you don't specify a value for C<FullyQualifiedDomainName>, Amazon
Route 53 substitutes the value of C<IPAddress> in the C<Host> header in
each of the preceding cases.

B<If you don't specify> C<IPAddress>:

If you don't specify a value for C<IPAddress>, Amazon Route 53 sends a
DNS request to the domain that you specify in
C<FullyQualifiedDomainName> at the interval you specify in
C<RequestInterval>. Using an IP address that DNS returns, Amazon Route
53 then checks the health of the endpoint.

If you want to check the health of weighted, latency, or failover
resource record sets and you choose to specify the endpoint only by
C<FullyQualifiedDomainName>, we recommend that you create a separate
health check for each endpoint. For example, create a health check for
each HTTP server that is serving content for www.example.com. For the
value of C<FullyQualifiedDomainName>, specify the domain name of the
server (such as us-east-1-www.example.com), not the name of the
resource record sets (www.example.com).

In this configuration, if you create a health check for which the value
of C<FullyQualifiedDomainName> matches the name of the resource record
sets and you then associate the health check with those resource record
sets, health check results will be unpredictable.

In addition, if the value that you specify for C<Type> is C<HTTP>,
C<HTTPS>, C<HTTP_STR_MATCH>, or C<HTTPS_STR_MATCH>, Amazon Route 53
passes the value of C<FullyQualifiedDomainName> in the C<Host> header,
as it does when you specify a value for C<IPAddress>. If the value of
C<Type> is C<TCP>, Amazon Route 53 doesn't pass a C<Host> header.


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
Amazon Route 53 always considers this health check to be unhealthy.

=item *

If you specify C<0>, Amazon Route 53 always considers this health check
to be healthy.

=back



=head2 InsufficientDataHealthStatus => Str

  When CloudWatch has insufficient data about the metric to determine the
alarm state, the status that you want Amazon Route 53 to assign to the
health check:

=over

=item *

C<Healthy>: Amazon Route 53 considers the health check to be healthy.

=item *

C<Unhealthy>: Amazon Route 53 considers the health check to be
unhealthy.

=item *

C<LastKnownStatus>: Amazon Route 53uses the status of the health check
from the last time CloudWatch had sufficient data to determine the
alarm state. For new health checks that have no last known status, the
default status for the health check is healthy.

=back



=head2 Inverted => Bool

  Specify whether you want Amazon Route 53 to invert the status of a
health check, for example, to consider a health check unhealthy when it
otherwise would be considered healthy.


=head2 IPAddress => Str

  The IPv4 IP address of the endpoint on which you want Amazon Route 53
to perform health checks. If you don't specify a value for
C<IPAddress>, Amazon Route 53 sends a DNS request to resolve the domain
name that you specify in C<FullyQualifiedDomainName> at the interval
that you specify in RequestInterval. Using an IP address that DNS
returns, Amazon Route 53 then checks the health of the endpoint.

If the endpoint is an Amazon EC2 instance, we recommend that you create
an Elastic IP address, associate it with your Amazon EC2 instance, and
specify the Elastic IP address for C<IPAddress>. This ensures that the
IP address of your instance will never change.

For more information, see HealthCheckConfig$FullyQualifiedDomainName.

Contraints: Amazon Route 53 cannot check the health of endpoints for
which the IP address is in local, private, non-routable, or multicast
ranges. For more information about IP addresses for which you cannot
create health checks, see RFC 5735, Special Use IPv4 Addresses and RFC
6598, IANA-Reserved IPv4 Prefix for Shared Address Space.

When the value of Type is C<CALCULATED> or C<CLOUDWATCH_METRIC>, omit
IPAddress.


=head2 MeasureLatency => Bool

  Specify whether you want Amazon Route 53 to measure the latency between
health checkers in multiple AWS regions and your endpoint, and to
display CloudWatch latency graphs on the B<Health Checks> page in the
Amazon Route 53 console.

You can't change the value of C<MeasureLatency> after you create a
health check.


=head2 Port => Int

  The port on the endpoint on which you want Amazon Route 53 to perform
health checks. Specify a value for Port only when you specify a value
for C<IPAddress>.


=head2 Regions => ArrayRef[Str|Undef]

  A complex type that contains one Region element for each region from
which you want Amazon Route 53 health checkers to check the specified
endpoint.


=head2 RequestInterval => Int

  The number of seconds between the time that Amazon Route 53 gets a
response from your endpoint and the time that it sends the next
health-check request. Each Amazon Route 53 health checker makes
requests at this interval.

You can't change the value of C<RequestInterval> after you create a
health check.


=head2 ResourcePath => Str

  The path, if any, that you want Amazon Route 53 to request when
performing health checks. The path can be any value for which your
endpoint will return an HTTP status code of 2xx or 3xx when the
endpoint is healthy, for example, the file
/docs/route53-health-check.html.


=head2 SearchString => Str

  If the value of Type is C<HTTP_STR_MATCH> or C<HTTP_STR_MATCH>, the
string that you want Amazon Route 53 to search for in the response body
from the specified resource. If the string appears in the response
body, Amazon Route 53 considers the resource healthy.

Amazon Route 53 considers case when searching for C<SearchString> in
the response body.


=head2 B<REQUIRED> Type => Str

  The type of health check that you want to create, which indicates how
Amazon Route 53 determines whether an endpoint is healthy.

You can't change the value of C<Type> after you create a health check.

You can create the following types of health checks:

=over

=item *

B<HTTP>: Amazon Route 53 tries to establish a TCP connection. If
successful, Amazon Route 53 submits an HTTP request and waits for an
HTTP status code of 200 or greater and less than 400.

=item *

B<HTTPS>: Amazon Route 53 tries to establish a TCP connection. If
successful, Amazon Route 53 submits an HTTPS request and waits for an
HTTP status code of 200 or greater and less than 400.

If you specify C<HTTPS> for the value of C<Type>, the endpoint must
support TLS v1.0 or later.

=item *

B<HTTP_STR_MATCH>: Amazon Route 53 tries to establish a TCP connection.
If successful, Amazon Route 53 submits an HTTP request and searches the
first 5,120 bytes of the response body for the string that you specify
in C<SearchString>.

=item *

B<HTTPS_STR_MATCH>: Amazon Route 53 tries to establish a TCP
connection. If successful, Amazon Route 53 submits an C<HTTPS> request
and searches the first 5,120 bytes of the response body for the string
that you specify in C<SearchString>.

=item *

B<TCP>: Amazon Route 53 tries to establish a TCP connection.

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
health checks, Amazon Route 53 adds up the number of health checks that
Amazon Route 53 health checkers consider to be healthy and compares
that number with the value of C<HealthThreshold>.

=back

For more information about how Amazon Route 53 determines whether an
endpoint is healthy, see the introduction to this topic.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

