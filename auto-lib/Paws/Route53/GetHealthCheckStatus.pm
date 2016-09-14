
package Paws::Route53::GetHealthCheckStatus;
  use Moose;
  has HealthCheckId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'HealthCheckId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetHealthCheckStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/healthcheck/{HealthCheckId}/status');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::GetHealthCheckStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetHealthCheckStatus - Arguments for method GetHealthCheckStatus on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetHealthCheckStatus on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method GetHealthCheckStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetHealthCheckStatus.

As an example:

  $service_obj->GetHealthCheckStatus(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthCheckId => Str

If you want Amazon Route 53 to return this resource record set in
response to a DNS query only when a health check is passing, include
the C<HealthCheckId> element and specify the ID of the applicable
health check.

Amazon Route 53 determines whether a resource record set is healthy by
periodically sending a request to the endpoint that is specified in the
health check. If that endpoint returns an HTTP status code of 2xx or
3xx, the endpoint is healthy. If the endpoint returns an HTTP status
code of 400 or greater, or if the endpoint doesn't respond for a
certain amount of time, Amazon Route 53 considers the endpoint
unhealthy and also considers the resource record set unhealthy.

The C<HealthCheckId> element is only useful when Amazon Route 53 is
choosing between two or more resource record sets to respond to a DNS
query, and you want Amazon Route 53 to base the choice in part on the
status of a health check. Configuring health checks only makes sense in
the following configurations:

=over

=item *

You're checking the health of the resource record sets in a weighted,
latency, geolocation, or failover resource record set, and you specify
health check IDs for all of the resource record sets. If the health
check for one resource record set specifies an endpoint that is not
healthy, Amazon Route 53 stops responding to queries using the value
for that resource record set.

=item *

You set C<EvaluateTargetHealth> to C<true> for the resource record sets
in an alias, weighted alias, latency alias, geolocation alias, or
failover alias resource record set, and you specify health check IDs
for all of the resource record sets that are referenced by the alias
resource record sets. For more information about this configuration,
see C<EvaluateTargetHealth>.

Amazon Route 53 doesn't check the health of the endpoint specified in
the resource record set, for example, the endpoint specified by the IP
address in the C<Value> element. When you add a C<HealthCheckId>
element to a resource record set, Amazon Route 53 checks the health of
the endpoint that you specified in the health check.

=back

For geolocation resource record sets, if an endpoint is unhealthy,
Amazon Route 53 looks for a resource record set for the larger,
associated geographic region. For example, suppose you have resource
record sets for a state in the United States, for the United States,
for North America, and for all locations. If the endpoint for the state
resource record set is unhealthy, Amazon Route 53 checks the resource
record sets for the United States, for North America, and for all
locations (a resource record set for which the value of CountryCode is
C<*>), in that order, until it finds a resource record set for which
the endpoint is healthy.

If your health checks specify the endpoint only by domain name, we
recommend that you create a separate health check for each endpoint.
For example, create a health check for each HTTP server that is serving
content for www.example.com. For the value of
C<FullyQualifiedDomainName>, specify the domain name of the server
(such as C<us-east-1-www.example.com>), not the name of the resource
record sets (example.com).

In this configuration, if you create a health check for which the value
of C<FullyQualifiedDomainName> matches the name of the resource record
sets and then associate the health check with those resource record
sets, health check results will be unpredictable.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetHealthCheckStatus in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

