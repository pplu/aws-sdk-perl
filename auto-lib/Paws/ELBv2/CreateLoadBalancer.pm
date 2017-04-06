
package Paws::ELBv2::CreateLoadBalancer;
  use Moose;
  has IpAddressType => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Scheme => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::CreateLoadBalancerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::CreateLoadBalancer - Arguments for method CreateLoadBalancer on Paws::ELBv2

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLoadBalancer on the 
Elastic Load Balancing service. Use the attributes of this class
as arguments to method CreateLoadBalancer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLoadBalancer.

As an example:

  $service_obj->CreateLoadBalancer(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 IpAddressType => Str

The type of IP addresses used by the subnets for your load balancer.
The possible values are C<ipv4> (for IPv4 addresses) and C<dualstack>
(for IPv4 and IPv6 addresses). Internal load balancers must use
C<ipv4>.

Valid values are: C<"ipv4">, C<"dualstack">

=head2 B<REQUIRED> Name => Str

The name of the load balancer.

This name must be unique per region per account, can have a maximum of
32 characters, must contain only alphanumeric characters or hyphens,
and must not begin or end with a hyphen.



=head2 Scheme => Str

The nodes of an Internet-facing load balancer have public IP addresses.
The DNS name of an Internet-facing load balancer is publicly resolvable
to the public IP addresses of the nodes. Therefore, Internet-facing
load balancers can route requests from clients over the Internet.

The nodes of an internal load balancer have only private IP addresses.
The DNS name of an internal load balancer is publicly resolvable to the
private IP addresses of the nodes. Therefore, internal load balancers
can only route requests from clients with access to the VPC for the
load balancer.

The default is an Internet-facing load balancer.

Valid values are: C<"internet-facing">, C<"internal">

=head2 SecurityGroups => ArrayRef[Str|Undef]

The IDs of the security groups to assign to the load balancer.



=head2 B<REQUIRED> Subnets => ArrayRef[Str|Undef]

The IDs of the subnets to attach to the load balancer. You can specify
only one subnet per Availability Zone. You must specify subnets from at
least two Availability Zones.



=head2 Tags => ArrayRef[L<Paws::ELBv2::Tag>]

One or more tags to assign to the load balancer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLoadBalancer in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

