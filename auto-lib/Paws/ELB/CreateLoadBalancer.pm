
package Paws::ELB::CreateLoadBalancer {
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');
  has Listeners => (is => 'ro', isa => 'ArrayRef[Paws::ELB::Listener]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has Scheme => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ELB::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::CreateAccessPointOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::CreateLoadBalancer - Arguments for method CreateLoadBalancer on Paws::ELB

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLoadBalancer on the 
Elastic Load Balancing service. Use the attributes of this class
as arguments to method CreateLoadBalancer.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to CreateLoadBalancer.

As an example:

  $service_obj->CreateLoadBalancer(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 AvailabilityZones => ArrayRef[Str]

  

A list of Availability Zones.

At least one Availability Zone must be specified. Specified
Availability Zones must be in the same EC2 Region as the load balancer.
Traffic will be equally distributed across all zones.

You can later add more Availability Zones after the creation of the
load balancer by calling EnableAvailabilityZonesForLoadBalancer action.










=head2 B<REQUIRED> Listeners => ArrayRef[Paws::ELB::Listener]

  

A list of the following tuples: Protocol, LoadBalancerPort,
InstanceProtocol, InstancePort, and SSLCertificateId.










=head2 B<REQUIRED> LoadBalancerName => Str

  

The name associated with the load balancer. The name must be unique
within your set of load balancers, must have a maximum of 32
characters, and must only contain alphanumeric characters or hyphens.










=head2 Scheme => Str

  

The type of a load balancer.

By default, Elastic Load Balancing creates an Internet-facing load
balancer with a publicly resolvable DNS name, which resolves to public
IP addresses. For more information about Internet-facing and Internal
load balancers, see Internet-facing and Internal Load Balancers.

Specify the value C<internal> for this option to create an internal
load balancer with a DNS name that resolves to private IP addresses.

This option is only available for load balancers created within
EC2-VPC.










=head2 SecurityGroups => ArrayRef[Str]

  

The security groups to assign to your load balancer within your VPC.










=head2 Subnets => ArrayRef[Str]

  

A list of subnet IDs in your VPC to attach to your load balancer.
Specify one subnet per Availability Zone.










=head2 Tags => ArrayRef[Paws::ELB::Tag]

  

A list of tags to assign to the load balancer.

For more information about setting tags for your load balancer, see
Tagging.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for CreateLoadBalancer in Paws::ELB

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

