
package Paws::ServiceDiscovery::CreateService;
  use Moose;
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DnsConfig => (is => 'ro', isa => 'Paws::ServiceDiscovery::DnsConfig', required => 1);
  has HealthCheckConfig => (is => 'ro', isa => 'Paws::ServiceDiscovery::HealthCheckConfig');
  has Name => (is => 'ro', isa => 'Str', required => 1);

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
Amazon Route 53 Auto Naming service. Use the attributes of this class
as arguments to method CreateService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateService.

As an example:

  $service_obj->CreateService(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CreatorRequestId => Str

An optional parameter that you can use to resolve concurrent creation
requests. C<CreatorRequestId> helps to determine if a specific client
owns the namespace.



=head2 Description => Str

A description for the service.



=head2 B<REQUIRED> DnsConfig => L<Paws::ServiceDiscovery::DnsConfig>

A complex type that contains information about the resource record sets
that you want Amazon Route 53 to create when you register an instance.



=head2 HealthCheckConfig => L<Paws::ServiceDiscovery::HealthCheckConfig>

I<Public DNS namespaces only.> A complex type that contains settings
for an optional health check. If you specify settings for a health
check, Amazon Route 53 associates the health check with all the
resource record sets that you specify in C<DnsConfig>.

The health check uses 30 seconds as the request interval. This is the
number of seconds between the time that each Amazon Route 53 health
checker gets a response from your endpoint and the time that it sends
the next health check request. A health checker in each data center
around the world sends your endpoint a health check request every 30
seconds. On average, your endpoint receives a health check request
about every two seconds. Health checkers in different data centers
don't coordinate with one another, so you'll sometimes see several
requests per second followed by a few seconds with no health checks at
all.

For information about the charges for health checks, see Amazon Route
53 Pricing (http://aws.amazon.com/route53/pricing).



=head2 B<REQUIRED> Name => Str

The name that you want to assign to the service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateService in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

