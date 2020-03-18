
package Paws::ServiceDiscovery::CreateService;
  use Moose;
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DnsConfig => (is => 'ro', isa => 'Paws::ServiceDiscovery::DnsConfig');
  has HealthCheckConfig => (is => 'ro', isa => 'Paws::ServiceDiscovery::HealthCheckConfig');
  has HealthCheckCustomConfig => (is => 'ro', isa => 'Paws::ServiceDiscovery::HealthCheckCustomConfig');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NamespaceId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateService');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::CreateServiceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::CreateService - Arguments for method CreateService on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateService on the
L<AWS Cloud Map|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method CreateService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateService.

=head1 SYNOPSIS

    my $servicediscovery = Paws->service('ServiceDiscovery');
    my $CreateServiceResponse = $servicediscovery->CreateService(
      Name             => 'MyServiceName',
      CreatorRequestId => 'MyResourceId',             # OPTIONAL
      Description      => 'MyResourceDescription',    # OPTIONAL
      DnsConfig        => {
        DnsRecords => [
          {
            TTL  => 1,        # max: 2147483647
            Type => 'SRV',    # values: SRV, A, AAAA, CNAME

          },
          ...
        ],
        NamespaceId => 'MyResourceId',    # max: 64
        RoutingPolicy => 'MULTIVALUE',  # values: MULTIVALUE, WEIGHTED; OPTIONAL
      },    # OPTIONAL
      HealthCheckConfig => {
        Type             => 'HTTP',              # values: HTTP, HTTPS, TCP
        FailureThreshold => 1,                   # min: 1, max: 10; OPTIONAL
        ResourcePath     => 'MyResourcePath',    # max: 255; OPTIONAL
      },    # OPTIONAL
      HealthCheckCustomConfig => {
        FailureThreshold => 1,    # min: 1, max: 10; OPTIONAL
      },    # OPTIONAL
      NamespaceId => 'MyResourceId',    # OPTIONAL
    );

    # Results:
    my $Service = $CreateServiceResponse->Service;

    # Returns a L<Paws::ServiceDiscovery::CreateServiceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/CreateService>

=head1 ATTRIBUTES


=head2 CreatorRequestId => Str

A unique string that identifies the request and that allows failed
C<CreateService> requests to be retried without the risk of executing
the operation twice. C<CreatorRequestId> can be any unique string, for
example, a date/time stamp.



=head2 Description => Str

A description for the service.



=head2 DnsConfig => L<Paws::ServiceDiscovery::DnsConfig>

A complex type that contains information about the Amazon Route 53
records that you want AWS Cloud Map to create when you register an
instance.



=head2 HealthCheckConfig => L<Paws::ServiceDiscovery::HealthCheckConfig>

I<Public DNS namespaces only.> A complex type that contains settings
for an optional Route 53 health check. If you specify settings for a
health check, AWS Cloud Map associates the health check with all the
Route 53 DNS records that you specify in C<DnsConfig>.

If you specify a health check configuration, you can specify either
C<HealthCheckCustomConfig> or C<HealthCheckConfig> but not both.

For information about the charges for health checks, see AWS Cloud Map
Pricing (http://aws.amazon.com/cloud-map/pricing/).



=head2 HealthCheckCustomConfig => L<Paws::ServiceDiscovery::HealthCheckCustomConfig>

A complex type that contains information about an optional custom
health check.

If you specify a health check configuration, you can specify either
C<HealthCheckCustomConfig> or C<HealthCheckConfig> but not both.



=head2 B<REQUIRED> Name => Str

The name that you want to assign to the service.



=head2 NamespaceId => Str

The ID of the namespace that you want to use to create the service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateService in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

