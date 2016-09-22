
package Paws::Route53::UpdateHealthCheck;
  use Moose;
  has AlarmIdentifier => (is => 'ro', isa => 'Paws::Route53::AlarmIdentifier');
  has ChildHealthChecks => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableSNI => (is => 'ro', isa => 'Bool');
  has FailureThreshold => (is => 'ro', isa => 'Int');
  has FullyQualifiedDomainName => (is => 'ro', isa => 'Str');
  has HealthCheckId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'HealthCheckId' , required => 1);
  has HealthCheckVersion => (is => 'ro', isa => 'Int');
  has HealthThreshold => (is => 'ro', isa => 'Int');
  has InsufficientDataHealthStatus => (is => 'ro', isa => 'Str');
  has Inverted => (is => 'ro', isa => 'Bool');
  has IPAddress => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ResourcePath => (is => 'ro', isa => 'Str');
  has SearchString => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateHealthCheck');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/healthcheck/{HealthCheckId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::UpdateHealthCheckResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::UpdateHealthCheck - Arguments for method UpdateHealthCheck on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateHealthCheck on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method UpdateHealthCheck.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateHealthCheck.

As an example:

  $service_obj->UpdateHealthCheck(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AlarmIdentifier => L<Paws::Route53::AlarmIdentifier>





=head2 ChildHealthChecks => ArrayRef[Str|Undef]

A complex type that contains one C<ChildHealthCheck> element for each
health check that you want to associate with a C<CALCULATED> health
check.



=head2 EnableSNI => Bool

Specify whether you want Amazon Route 53 to send the value of
C<FullyQualifiedDomainName> to the endpoint in the C<client_hello>
message during C<TLS> negotiation. This allows the endpoint to respond
to C<HTTPS> health check requests with the applicable SSL/TLS
certificate.

Some endpoints require that HTTPS requests include the host name in the
C<client_hello> message. If you don't enable SNI, the status of the
health check will be SSL alert C<handshake_failure>. A health check can
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

If a health check already has a value for C<IPAddress>, you can change
the value. However, you can't update an existing health check to add or
remove the value of C<IPAddress>.

B<If you specify> C<IPAddress>:

The value that you want Amazon Route 53 to pass in the C<Host> header
in all health checks except TCP health checks. This is typically the
fully qualified DNS name of the endpoint on which you want Amazon Route
53 to perform health checks. When Amazon Route 53 checks the health of
an endpoint, here is how it constructs the C<Host> header:

=over

=item *

If you specify a value of C<80> for C<Port> and C<HTTP> or
C<HTTP_STR_MATCH> for C<Type>, Amazon Route 53 passes the value of
C<FullyQualifiedDomainName> to the endpoint in the C<Host> header.

=item *

If you specify a value of C<443> for C<Port> and C<HTTPS> or
C<HTTPS_STR_MATCH> for C<Type>, Amazon Route 53 passes the value of
C<FullyQualifiedDomainName> to the endpoint in the Host header.

=item *

If you specify another value for C<Port> and any value except C<TCP>
for C<Type>, Amazon Route 53 passes I<
C<FullyQualifiedDomainName>:C<Port> > to the endpoint in the Host
header.

=back

If you don't specify a value for C<FullyQualifiedDomainName>, Amazon
Route 53 substitutes the value of C<IPAddress> in the C<Host> header in
each of the above cases.

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
server (such as C<us-east-1-www.example.com>), not the name of the
resource record sets (www.example.com).

In this configuration, if the value of C<FullyQualifiedDomainName>
matches the name of the resource record sets and you then associate the
health check with those resource record sets, health check results will
be unpredictable.

In addition, if the value of C<Type> is C<HTTP>, C<HTTPS>,
C<HTTP_STR_MATCH>, or C<HTTPS_STR_MATCH>, Amazon Route 53 passes the
value of C<FullyQualifiedDomainName> in the C<Host> header, as it does
when you specify a value for C<IPAddress>. If the value of C<Type> is
C<TCP>, Amazon Route 53 doesn't pass a C<Host> header.



=head2 B<REQUIRED> HealthCheckId => Str

The ID for the health check for which you want detailed information.
When you created the health check, C<CreateHealthCheck> returned the ID
in the response, in the C<HealthCheckId> element.



=head2 HealthCheckVersion => Int

A sequential counter that Amazon Route 53 sets to C<1> when you create
a health check and increments by C<1> each time you update settings for
the health check.

We recommend that you use C<GetHealthCheck> or C<ListHealthChecks> to
get the current value of C<HealthCheckVersion> for the health check
that you want to update, and that you include that value in your
C<UpdateHealthCheck> request. This prevents Amazon Route 53 from
overwriting an intervening update:

=over

=item *

f the value in the C<UpdateHealthCheck> request matches the value of
C<HealthCheckVersion> in the health check, Amazon Route 53 updates the
health check with the new settings.

=item *

If the value of C<HealthCheckVersion> in the health check is greater,
the health check was changed after you got the version number. Amazon
Route 53 does not update the health check, and it returns a
C<HealthCheckVersionMismatch> error.

=back




=head2 HealthThreshold => Int

The number of child health checks that are associated with a
C<CALCULATED> health that Amazon Route 53 must consider healthy for the
C<CALCULATED> health check to be considered healthy. To specify the
child health checks that you want to associate with a C<CALCULATED>
health check, use the C<ChildHealthChecks> and C<ChildHealthCheck>
elements.

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



Valid values are: C<"Healthy">, C<"Unhealthy">, C<"LastKnownStatus">

=head2 Inverted => Bool

Specify whether you want Amazon Route 53 to invert the status of a
health check, for example, to consider a health check unhealthy when it
otherwise would be considered healthy.



=head2 IPAddress => Str

The IPv4 IP address of the endpoint on which you want Amazon Route 53
to perform health checks. If you don't specify a value for
C<IPAddress>, Amazon Route 53 sends a DNS request to resolve the domain
name that you specify in C<FullyQualifiedDomainName> at the interval
you specify in C<RequestInterval>. Using an IP address that DNS
returns, Amazon Route 53 then checks the health of the endpoint.

f the endpoint is an Amazon EC2 instance, we recommend that you create
an Elastic IP address, associate it with your Amazon EC2 instance, and
specify the Elastic IP address for C<IPAddress>. This ensures that the
IP address of your instance never changes. For more information, see
Elastic IP Addresses (EIP) in the I<Amazon EC2 User Guide for Linux
Instances>.

If a health check already has a value for C<IPAddress>, you can change
the value. However, you can't update an existing health check to add or
remove the value of C<IPAddress>.

For more information, see
UpdateHealthCheckRequest$FullyQualifiedDomainName.



=head2 Port => Int

The port on the endpoint on which you want Amazon Route 53 to perform
health checks.



=head2 Regions => ArrayRef[Str|Undef]

A complex type that contains one Region element for each region from
which you want Amazon Route 53 health checkers to check the specified
endpoint.



=head2 ResourcePath => Str

The path that you want Amazon Route 53 to request when performing
health checks. The path can be any value for which your endpoint will
return an HTTP status code of 2xx or 3xx when the endpoint is healthy,
for example the file /docs/route53-health-check.html.

Specify this value only if you want to change it.



=head2 SearchString => Str

If the value of C<Type> is C<HTTP_STR_MATCH> or C<HTTP_STR_MATCH>, the
string that you want Amazon Route 53 to search for in the response body
from the specified resource. If the string appears in the response
body, Amazon Route 53 considers the resource healthy. (You can't change
the value of C<Type> when you update a health check.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateHealthCheck in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

