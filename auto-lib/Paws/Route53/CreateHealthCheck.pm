
package Paws::Route53::CreateHealthCheck;
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has HealthCheckConfig => (is => 'ro', isa => 'Paws::Route53::HealthCheckConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHealthCheck');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/healthcheck');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::CreateHealthCheckResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateHealthCheck - Arguments for method CreateHealthCheck on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHealthCheck on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method CreateHealthCheck.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHealthCheck.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $CreateHealthCheckResponse = $route53->CreateHealthCheck(
      CallerReference   => 'MyHealthCheckNonce',
      HealthCheckConfig => {
        Type => 'HTTP'
        , # values: HTTP, HTTPS, HTTP_STR_MATCH, HTTPS_STR_MATCH, TCP, CALCULATED, CLOUDWATCH_METRIC
        AlarmIdentifier => {
          Name   => 'MyAlarmName',    # min: 1, max: 256
          Region => 'us-east-1'
          , # values: us-east-1, us-east-2, us-west-1, us-west-2, ca-central-1, eu-central-1, eu-west-1, eu-west-2, eu-west-3, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, ap-northeast-3, eu-north-1, sa-east-1min: 1, max: 64

        },    # OPTIONAL
        ChildHealthChecks => [
          'MyHealthCheckId', ...    # max: 64
        ],                          # max: 256; OPTIONAL
        Disabled         => 1,      # OPTIONAL
        EnableSNI        => 1,      # OPTIONAL
        FailureThreshold => 1,      # min: 1, max: 10; OPTIONAL
        FullyQualifiedDomainName =>
          'MyFullyQualifiedDomainName',    # max: 255; OPTIONAL
        HealthThreshold => 1,              # max: 256; OPTIONAL
        IPAddress       => 'MyIPAddress',  # max: 45; OPTIONAL
        InsufficientDataHealthStatus =>
          'Healthy',    # values: Healthy, Unhealthy, LastKnownStatus; OPTIONAL
        Inverted       => 1,    # OPTIONAL
        MeasureLatency => 1,    # OPTIONAL
        Port           => 1,    # min: 1, max: 65535; OPTIONAL
        Regions        => [
          'us-east-1',
          ... # values: us-east-1, us-west-1, us-west-2, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1min: 1, max: 64
        ],    # min: 3, max: 64; OPTIONAL
        RequestInterval => 1,                   # min: 10, max: 30; OPTIONAL
        ResourcePath    => 'MyResourcePath',    # max: 255; OPTIONAL
        SearchString    => 'MySearchString',    # max: 255; OPTIONAL
      },

    );

    # Results:
    my $HealthCheck = $CreateHealthCheckResponse->HealthCheck;
    my $Location    = $CreateHealthCheckResponse->Location;

    # Returns a L<Paws::Route53::CreateHealthCheckResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/CreateHealthCheck>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallerReference => Str

A unique string that identifies the request and that allows you to
retry a failed C<CreateHealthCheck> request without the risk of
creating two identical health checks:

=over

=item *

If you send a C<CreateHealthCheck> request with the same
C<CallerReference> and settings as a previous request, and if the
health check doesn't exist, Amazon Route 53 creates the health check.
If the health check does exist, Route 53 returns the settings for the
existing health check.

=item *

If you send a C<CreateHealthCheck> request with the same
C<CallerReference> as a deleted health check, regardless of the
settings, Route 53 returns a C<HealthCheckAlreadyExists> error.

=item *

If you send a C<CreateHealthCheck> request with the same
C<CallerReference> as an existing health check but with different
settings, Route 53 returns a C<HealthCheckAlreadyExists> error.

=item *

If you send a C<CreateHealthCheck> request with a unique
C<CallerReference> but settings identical to an existing health check,
Route 53 creates the health check.

=back




=head2 B<REQUIRED> HealthCheckConfig => L<Paws::Route53::HealthCheckConfig>

A complex type that contains settings for a new health check.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHealthCheck in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

