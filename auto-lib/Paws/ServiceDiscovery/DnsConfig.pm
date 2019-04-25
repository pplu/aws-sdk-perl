package Paws::ServiceDiscovery::DnsConfig;
  use Moose;
  has DnsRecords => (is => 'ro', isa => 'ArrayRef[Paws::ServiceDiscovery::DnsRecord]', required => 1);
  has NamespaceId => (is => 'ro', isa => 'Str');
  has RoutingPolicy => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::DnsConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceDiscovery::DnsConfig object:

  $service_obj->Method(Att1 => { DnsRecords => $value, ..., RoutingPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceDiscovery::DnsConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->DnsRecords

=head1 DESCRIPTION

A complex type that contains information about the Amazon Route 53 DNS
records that you want AWS Cloud Map to create when you register an
instance.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DnsRecords => ArrayRef[L<Paws::ServiceDiscovery::DnsRecord>]

  An array that contains one C<DnsRecord> object for each Route 53 DNS
record that you want AWS Cloud Map to create when you register an
instance.


=head2 NamespaceId => Str

  The ID of the namespace to use for DNS configuration.


=head2 RoutingPolicy => Str

  The routing policy that you want to apply to all Route 53 DNS records
that AWS Cloud Map creates when you register an instance and specify
this service.

If you want to use this service to register instances that create alias
records, specify C<WEIGHTED> for the routing policy.

You can specify the following values:

B<MULTIVALUE>

If you define a health check for the service and the health check is
healthy, Route 53 returns the applicable value for up to eight
instances.

For example, suppose the service includes configurations for one A
record and a health check, and you use the service to register 10
instances. Route 53 responds to DNS queries with IP addresses for up to
eight healthy instances. If fewer than eight instances are healthy,
Route 53 responds to every DNS query with the IP addresses for all of
the healthy instances.

If you don't define a health check for the service, Route 53 assumes
that all instances are healthy and returns the values for up to eight
instances.

For more information about the multivalue routing policy, see
Multivalue Answer Routing
(http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-multivalue)
in the I<Route 53 Developer Guide>.

B<WEIGHTED>

Route 53 returns the applicable value from one randomly selected
instance from among the instances that you registered using the same
service. Currently, all records have the same weight, so you can't
route more or less traffic to any instances.

For example, suppose the service includes configurations for one A
record and a health check, and you use the service to register 10
instances. Route 53 responds to DNS queries with the IP address for one
randomly selected instance from among the healthy instances. If no
instances are healthy, Route 53 responds to DNS queries as if all of
the instances were healthy.

If you don't define a health check for the service, Route 53 assumes
that all instances are healthy and returns the applicable value for one
randomly selected instance.

For more information about the weighted routing policy, see Weighted
Routing
(http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-weighted)
in the I<Route 53 Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

