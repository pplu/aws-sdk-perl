package Paws::ServiceDiscovery::Service;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str');
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DnsConfig => (is => 'ro', isa => 'Paws::ServiceDiscovery::DnsConfig');
  has HealthCheckConfig => (is => 'ro', isa => 'Paws::ServiceDiscovery::HealthCheckConfig');
  has HealthCheckCustomConfig => (is => 'ro', isa => 'Paws::ServiceDiscovery::HealthCheckCustomConfig');
  has Id => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has NamespaceId => (is => 'ro', isa => 'Str');
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

  $service_obj->Method(Att1 => { Arn => $value, ..., NamespaceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceDiscovery::Service object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A complex type that contains information about the specified service.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) that AWS Cloud Map assigns to the
service when you create it.


=head2 CreateDate => Str

  The date and time that the service was created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreateDate> is
accurate to milliseconds. For example, the value C<1516925490.087>
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 CreatorRequestId => Str

  A unique string that identifies the request and that allows failed
requests to be retried without the risk of executing the operation
twice. C<CreatorRequestId> can be any unique string, for example, a
date/time stamp.


=head2 Description => Str

  The description of the service.


=head2 DnsConfig => L<Paws::ServiceDiscovery::DnsConfig>

  A complex type that contains information about the Route 53 DNS records
that you want AWS Cloud Map to create when you register an instance.


=head2 HealthCheckConfig => L<Paws::ServiceDiscovery::HealthCheckConfig>

  I<Public DNS namespaces only.> A complex type that contains settings
for an optional health check. If you specify settings for a health
check, AWS Cloud Map associates the health check with the records that
you specify in C<DnsConfig>.

For information about the charges for health checks, see Amazon Route
53 Pricing (http://aws.amazon.com/route53/pricing/).


=head2 HealthCheckCustomConfig => L<Paws::ServiceDiscovery::HealthCheckCustomConfig>

  A complex type that contains information about an optional custom
health check.

If you specify a health check configuration, you can specify either
C<HealthCheckCustomConfig> or C<HealthCheckConfig> but not both.


=head2 Id => Str

  The ID that AWS Cloud Map assigned to the service when you created it.


=head2 InstanceCount => Int

  The number of instances that are currently associated with the service.
Instances that were previously associated with the service but that
have been deleted are not included in the count.


=head2 Name => Str

  The name of the service.


=head2 NamespaceId => Str

  The ID of the namespace that was used to create the service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

