package Paws::Route53::HealthCheckConfig;
  use Moose;
  has ChildHealthChecks => (is => 'ro', isa => 'ArrayRef[Str]');
  has FailureThreshold => (is => 'ro', isa => 'Int');
  has FullyQualifiedDomainName => (is => 'ro', isa => 'Str');
  has HealthThreshold => (is => 'ro', isa => 'Int');
  has Inverted => (is => 'ro', isa => 'Bool');
  has IPAddress => (is => 'ro', isa => 'Str');
  has MeasureLatency => (is => 'ro', isa => 'Bool');
  has Port => (is => 'ro', isa => 'Int');
  has RequestInterval => (is => 'ro', isa => 'Int');
  has ResourcePath => (is => 'ro', isa => 'Str');
  has SearchString => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::HealthCheckConfig

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::HealthCheckConfig object:

  $service_obj->Method(Att1 => { ChildHealthChecks => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::HealthCheckConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ChildHealthChecks

=head1 ATTRIBUTES

=head2 ChildHealthChecks => ArrayRef[Str]

  For a specified parent health check, a list of C<HealthCheckId> values
for the associated child health checks.

=head2 FailureThreshold => Int

  The number of consecutive health checks that an endpoint must pass or
fail for Route 53 to change the current status of the endpoint from
unhealthy to healthy or vice versa.

Valid values are integers between 1 and 10. For more information, see
"How Amazon Route 53 Determines Whether an Endpoint Is Healthy" in the
Amazon Route 53 Developer Guide.

=head2 FullyQualifiedDomainName => Str

  Fully qualified domain name of the instance to be health checked.

=head2 HealthThreshold => Int

  The minimum number of child health checks that must be healthy for
Route 53 to consider the parent health check to be healthy. Valid
values are integers between 0 and 256, inclusive.

=head2 Inverted => Bool

  A boolean value that indicates whether the status of health check
should be inverted. For example, if a health check is healthy but
C<Inverted> is C<True>, then Route 53 considers the health check to be
unhealthy.

=head2 IPAddress => Str

  IP Address of the instance being checked.

=head2 MeasureLatency => Bool

  A Boolean value that indicates whether you want Route 53 to measure the
latency between health checkers in multiple AWS regions and your
endpoint and to display CloudWatch latency graphs in the Route 53
console.

=head2 Port => Int

  Port on which connection will be opened to the instance to health
check. For HTTP and HTTP_STR_MATCH this defaults to 80 if the port is
not specified. For HTTPS and HTTPS_STR_MATCH this defaults to 443 if
the port is not specified.

=head2 RequestInterval => Int

  The number of seconds between the time that Route 53 gets a response
from your endpoint and the time that it sends the next health-check
request.

Each Route 53 health checker makes requests at this interval. Valid
values are 10 and 30. The default value is 30.

=head2 ResourcePath => Str

  Path to ping on the instance to check the health. Required for HTTP,
HTTPS, HTTP_STR_MATCH, and HTTPS_STR_MATCH health checks, HTTP request
is issued to the instance on the given port and path.

=head2 SearchString => Str

  A string to search for in the body of a health check response. Required
for HTTP_STR_MATCH and HTTPS_STR_MATCH health checks.

=head2 B<REQUIRED> Type => Str

  The type of health check to be performed. Currently supported types are
TCP, HTTP, HTTPS, HTTP_STR_MATCH, and HTTPS_STR_MATCH.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

