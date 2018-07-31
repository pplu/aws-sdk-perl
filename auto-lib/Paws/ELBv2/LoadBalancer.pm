package Paws::ELBv2::LoadBalancer;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::AvailabilityZone]');
  has CanonicalHostedZoneId => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DNSName => (is => 'ro', isa => 'Str');
  has IpAddressType => (is => 'ro', isa => 'Str');
  has LoadBalancerArn => (is => 'ro', isa => 'Str');
  has LoadBalancerName => (is => 'ro', isa => 'Str');
  has Scheme => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has State => (is => 'ro', isa => 'Paws::ELBv2::LoadBalancerState');
  has Type => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::LoadBalancer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::LoadBalancer object:

  $service_obj->Method(Att1 => { AvailabilityZones => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::LoadBalancer object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZones

=head1 DESCRIPTION

Information about a load balancer.

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[L<Paws::ELBv2::AvailabilityZone>]

  The Availability Zones for the load balancer.


=head2 CanonicalHostedZoneId => Str

  The ID of the Amazon Route 53 hosted zone associated with the load
balancer.


=head2 CreatedTime => Str

  The date and time the load balancer was created.


=head2 DNSName => Str

  The public DNS name of the load balancer.


=head2 IpAddressType => Str

  The type of IP addresses used by the subnets for your load balancer.
The possible values are C<ipv4> (for IPv4 addresses) and C<dualstack>
(for IPv4 and IPv6 addresses).


=head2 LoadBalancerArn => Str

  The Amazon Resource Name (ARN) of the load balancer.


=head2 LoadBalancerName => Str

  The name of the load balancer.


=head2 Scheme => Str

  The nodes of an Internet-facing load balancer have public IP addresses.
The DNS name of an Internet-facing load balancer is publicly resolvable
to the public IP addresses of the nodes. Therefore, Internet-facing
load balancers can route requests from clients over the internet.

The nodes of an internal load balancer have only private IP addresses.
The DNS name of an internal load balancer is publicly resolvable to the
private IP addresses of the nodes. Therefore, internal load balancers
can only route requests from clients with access to the VPC for the
load balancer.


=head2 SecurityGroups => ArrayRef[Str|Undef]

  The IDs of the security groups for the load balancer.


=head2 State => L<Paws::ELBv2::LoadBalancerState>

  The state of the load balancer.


=head2 Type => Str

  The type of load balancer.


=head2 VpcId => Str

  The ID of the VPC for the load balancer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

