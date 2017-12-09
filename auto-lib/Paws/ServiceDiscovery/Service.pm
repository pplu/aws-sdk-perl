package Paws::ServiceDiscovery::Service;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str');
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DnsConfig => (is => 'ro', isa => 'Paws::ServiceDiscovery::DnsConfig');
  has HealthCheckConfig => (is => 'ro', isa => 'Paws::ServiceDiscovery::HealthCheckConfig');
  has Id => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::Service

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceDiscovery::Service object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceDiscovery::Service object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A complex type that contains information about the specified service.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) that Amazon Route 53 assigns to the
service when you create it.


=head2 CreateDate => Str

  The date and time that the service was created, in Unix format and
Coordinated Universal Time (UTC).


=head2 CreatorRequestId => Str

  An optional parameter that you can use to resolve concurrent creation
requests. C<CreatorRequestId> helps to determine if a specific client
owns the namespace.


=head2 Description => Str

  The description of the service.


=head2 DnsConfig => L<Paws::ServiceDiscovery::DnsConfig>

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


=head2 Id => Str

  The ID that Amazon Route 53 assigned to the service when you created
it.


=head2 InstanceCount => Int

  The number of instances that are currently associated with the service.
Instances that were previously associated with the service but that
have been deleted are not included in the count.


=head2 Name => Str

  The name of the service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

