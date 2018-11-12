package Paws::ELB::LoadBalancerDescription;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has BackendServerDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::ELB::BackendServerDescription]');
  has CanonicalHostedZoneName => (is => 'ro', isa => 'Str');
  has CanonicalHostedZoneNameID => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DNSName => (is => 'ro', isa => 'Str');
  has HealthCheck => (is => 'ro', isa => 'Paws::ELB::HealthCheck');
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::ELB::Instance]');
  has ListenerDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::ELB::ListenerDescription]');
  has LoadBalancerName => (is => 'ro', isa => 'Str');
  has Policies => (is => 'ro', isa => 'Paws::ELB::Policies');
  has Scheme => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SourceSecurityGroup => (is => 'ro', isa => 'Paws::ELB::SourceSecurityGroup');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VPCId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::LoadBalancerDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELB::LoadBalancerDescription object:

  $service_obj->Method(Att1 => { AvailabilityZones => $value, ..., VPCId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELB::LoadBalancerDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZones

=head1 DESCRIPTION

Information about a load balancer.

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

  The Availability Zones for the load balancer.


=head2 BackendServerDescriptions => ArrayRef[L<Paws::ELB::BackendServerDescription>]

  Information about your EC2 instances.


=head2 CanonicalHostedZoneName => Str

  The DNS name of the load balancer.

For more information, see Configure a Custom Domain Name
(http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/using-domain-names-with-elb.html)
in the I<Classic Load Balancers Guide>.


=head2 CanonicalHostedZoneNameID => Str

  The ID of the Amazon Route 53 hosted zone for the load balancer.


=head2 CreatedTime => Str

  The date and time the load balancer was created.


=head2 DNSName => Str

  The DNS name of the load balancer.


=head2 HealthCheck => L<Paws::ELB::HealthCheck>

  Information about the health checks conducted on the load balancer.


=head2 Instances => ArrayRef[L<Paws::ELB::Instance>]

  The IDs of the instances for the load balancer.


=head2 ListenerDescriptions => ArrayRef[L<Paws::ELB::ListenerDescription>]

  The listeners for the load balancer.


=head2 LoadBalancerName => Str

  The name of the load balancer.


=head2 Policies => L<Paws::ELB::Policies>

  The policies defined for the load balancer.


=head2 Scheme => Str

  The type of load balancer. Valid only for load balancers in a VPC.

If C<Scheme> is C<internet-facing>, the load balancer has a public DNS
name that resolves to a public IP address.

If C<Scheme> is C<internal>, the load balancer has a public DNS name
that resolves to a private IP address.


=head2 SecurityGroups => ArrayRef[Str|Undef]

  The security groups for the load balancer. Valid only for load
balancers in a VPC.


=head2 SourceSecurityGroup => L<Paws::ELB::SourceSecurityGroup>

  The security group for the load balancer, which you can use as part of
your inbound rules for your registered instances. To only allow traffic
from load balancers, add a security group rule that specifies this
source security group as the inbound source.


=head2 Subnets => ArrayRef[Str|Undef]

  The IDs of the subnets for the load balancer.


=head2 VPCId => Str

  The ID of the VPC for the load balancer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

