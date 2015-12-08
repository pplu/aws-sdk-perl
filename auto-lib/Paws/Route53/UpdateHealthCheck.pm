
package Paws::Route53::UpdateHealthCheck;
  use Moose;
  has ChildHealthChecks => (is => 'ro', isa => 'ArrayRef[Str]');
  has FailureThreshold => (is => 'ro', isa => 'Int');
  has FullyQualifiedDomainName => (is => 'ro', isa => 'Str');
  has HealthCheckId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'HealthCheckId' , required => 1);
  has HealthCheckVersion => (is => 'ro', isa => 'Int');
  has HealthThreshold => (is => 'ro', isa => 'Int');
  has Inverted => (is => 'ro', isa => 'Bool');
  has IPAddress => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
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

Paws::Route53::UpdateHealthCheckResponse

=head1 ATTRIBUTES


=head2 ChildHealthChecks => ArrayRef[Str]

  For a specified parent health check, a list of C<HealthCheckId> values
for the associated child health checks.

Specify this value only if you want to change it.

=head2 FailureThreshold => Int

  The number of consecutive health checks that an endpoint must pass or
fail for Amazon Route 53 to change the current status of the endpoint
from unhealthy to healthy or vice versa.

Valid values are integers between 1 and 10. For more information, see
"How Amazon Route 53 Determines Whether an Endpoint Is Healthy" in the
Amazon Route 53 Developer Guide.

Specify this value only if you want to change it.

=head2 FullyQualifiedDomainName => Str

  Fully qualified domain name of the instance to be health checked.

Specify this value only if you want to change it.

=head2 B<REQUIRED> HealthCheckId => Str

  The ID of the health check to update.

=head2 HealthCheckVersion => Int

  Optional. When you specify a health check version, Amazon Route 53
compares this value with the current value in the health check, which
prevents you from updating the health check when the versions don't
match. Using C<HealthCheckVersion> lets you prevent overwriting another
change to the health check.

=head2 HealthThreshold => Int

  The minimum number of child health checks that must be healthy for
Amazon Route 53 to consider the parent health check to be healthy.
Valid values are integers between 0 and 256, inclusive.

Specify this value only if you want to change it.

=head2 Inverted => Bool

  A boolean value that indicates whether the status of health check
should be inverted. For example, if a health check is healthy but
C<Inverted> is C<True>, then Amazon Route 53 considers the health check
to be unhealthy.

Specify this value only if you want to change it.

=head2 IPAddress => Str

  The IP address of the resource that you want to check.

Specify this value only if you want to change it.

=head2 Port => Int

  The port on which you want Amazon Route 53 to open a connection to
perform health checks.

Specify this value only if you want to change it.

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
body, Amazon Route 53 considers the resource healthy.

Specify this value only if you want to change it.


=cut

