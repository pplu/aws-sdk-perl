package Paws::EC2::Explanation;
  use Moose;
  has Acl => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'acl', traits => ['NameInRequest']);
  has AclRule => (is => 'ro', isa => 'Paws::EC2::AnalysisAclRule', request_name => 'aclRule', traits => ['NameInRequest']);
  has Address => (is => 'ro', isa => 'Str', request_name => 'address', traits => ['NameInRequest']);
  has Addresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'addressSet', traits => ['NameInRequest']);
  has AttachedTo => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'attachedTo', traits => ['NameInRequest']);
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'availabilityZoneSet', traits => ['NameInRequest']);
  has Cidrs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'cidrSet', traits => ['NameInRequest']);
  has ClassicLoadBalancerListener => (is => 'ro', isa => 'Paws::EC2::AnalysisLoadBalancerListener', request_name => 'classicLoadBalancerListener', traits => ['NameInRequest']);
  has Component => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'component', traits => ['NameInRequest']);
  has CustomerGateway => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'customerGateway', traits => ['NameInRequest']);
  has Destination => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'destination', traits => ['NameInRequest']);
  has DestinationVpc => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'destinationVpc', traits => ['NameInRequest']);
  has Direction => (is => 'ro', isa => 'Str', request_name => 'direction', traits => ['NameInRequest']);
  has ElasticLoadBalancerListener => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'elasticLoadBalancerListener', traits => ['NameInRequest']);
  has ExplanationCode => (is => 'ro', isa => 'Str', request_name => 'explanationCode', traits => ['NameInRequest']);
  has IngressRouteTable => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'ingressRouteTable', traits => ['NameInRequest']);
  has InternetGateway => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'internetGateway', traits => ['NameInRequest']);
  has LoadBalancerArn => (is => 'ro', isa => 'Str', request_name => 'loadBalancerArn', traits => ['NameInRequest']);
  has LoadBalancerListenerPort => (is => 'ro', isa => 'Int', request_name => 'loadBalancerListenerPort', traits => ['NameInRequest']);
  has LoadBalancerTarget => (is => 'ro', isa => 'Paws::EC2::AnalysisLoadBalancerTarget', request_name => 'loadBalancerTarget', traits => ['NameInRequest']);
  has LoadBalancerTargetGroup => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'loadBalancerTargetGroup', traits => ['NameInRequest']);
  has LoadBalancerTargetGroups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AnalysisComponent]', request_name => 'loadBalancerTargetGroupSet', traits => ['NameInRequest']);
  has LoadBalancerTargetPort => (is => 'ro', isa => 'Int', request_name => 'loadBalancerTargetPort', traits => ['NameInRequest']);
  has MissingComponent => (is => 'ro', isa => 'Str', request_name => 'missingComponent', traits => ['NameInRequest']);
  has NatGateway => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'natGateway', traits => ['NameInRequest']);
  has NetworkInterface => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'networkInterface', traits => ['NameInRequest']);
  has PacketField => (is => 'ro', isa => 'Str', request_name => 'packetField', traits => ['NameInRequest']);
  has Port => (is => 'ro', isa => 'Int', request_name => 'port', traits => ['NameInRequest']);
  has PortRanges => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PortRange]', request_name => 'portRangeSet', traits => ['NameInRequest']);
  has PrefixList => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'prefixList', traits => ['NameInRequest']);
  has Protocols => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'protocolSet', traits => ['NameInRequest']);
  has RouteTable => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'routeTable', traits => ['NameInRequest']);
  has RouteTableRoute => (is => 'ro', isa => 'Paws::EC2::AnalysisRouteTableRoute', request_name => 'routeTableRoute', traits => ['NameInRequest']);
  has SecurityGroup => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'securityGroup', traits => ['NameInRequest']);
  has SecurityGroupRule => (is => 'ro', isa => 'Paws::EC2::AnalysisSecurityGroupRule', request_name => 'securityGroupRule', traits => ['NameInRequest']);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AnalysisComponent]', request_name => 'securityGroupSet', traits => ['NameInRequest']);
  has SourceVpc => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'sourceVpc', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Subnet => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'subnet', traits => ['NameInRequest']);
  has SubnetRouteTable => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'subnetRouteTable', traits => ['NameInRequest']);
  has Vpc => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'vpc', traits => ['NameInRequest']);
  has VpcEndpoint => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'vpcEndpoint', traits => ['NameInRequest']);
  has VpcPeeringConnection => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'vpcPeeringConnection', traits => ['NameInRequest']);
  has VpnConnection => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'vpnConnection', traits => ['NameInRequest']);
  has VpnGateway => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'vpnGateway', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Explanation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Explanation object:

  $service_obj->Method(Att1 => { Acl => $value, ..., VpnGateway => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Explanation object:

  $result = $service_obj->Method(...);
  $result->Att1->Acl

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Acl => L<Paws::EC2::AnalysisComponent>

The network ACL.


=head2 AclRule => L<Paws::EC2::AnalysisAclRule>

The network ACL rule.


=head2 Address => Str

The IPv4 address, in CIDR notation.


=head2 Addresses => ArrayRef[Str|Undef]

The IPv4 addresses, in CIDR notation.


=head2 AttachedTo => L<Paws::EC2::AnalysisComponent>

The resource to which the component is attached.


=head2 AvailabilityZones => ArrayRef[Str|Undef]

The Availability Zones.


=head2 Cidrs => ArrayRef[Str|Undef]

The CIDR ranges.


=head2 ClassicLoadBalancerListener => L<Paws::EC2::AnalysisLoadBalancerListener>

The listener for a Classic Load Balancer.


=head2 Component => L<Paws::EC2::AnalysisComponent>

The component.


=head2 CustomerGateway => L<Paws::EC2::AnalysisComponent>

The customer gateway.


=head2 Destination => L<Paws::EC2::AnalysisComponent>

The destination.


=head2 DestinationVpc => L<Paws::EC2::AnalysisComponent>

The destination VPC.


=head2 Direction => Str

The direction. The following are possible values:

=over

=item *

egress

=item *

ingress

=back



=head2 ElasticLoadBalancerListener => L<Paws::EC2::AnalysisComponent>

The load balancer listener.


=head2 ExplanationCode => Str

The explanation code.


=head2 IngressRouteTable => L<Paws::EC2::AnalysisComponent>

The route table.


=head2 InternetGateway => L<Paws::EC2::AnalysisComponent>

The internet gateway.


=head2 LoadBalancerArn => Str

The Amazon Resource Name (ARN) of the load balancer.


=head2 LoadBalancerListenerPort => Int

The listener port of the load balancer.


=head2 LoadBalancerTarget => L<Paws::EC2::AnalysisLoadBalancerTarget>

The target.


=head2 LoadBalancerTargetGroup => L<Paws::EC2::AnalysisComponent>

The target group.


=head2 LoadBalancerTargetGroups => ArrayRef[L<Paws::EC2::AnalysisComponent>]

The target groups.


=head2 LoadBalancerTargetPort => Int

The target port.


=head2 MissingComponent => Str

The missing component.


=head2 NatGateway => L<Paws::EC2::AnalysisComponent>

The NAT gateway.


=head2 NetworkInterface => L<Paws::EC2::AnalysisComponent>

The network interface.


=head2 PacketField => Str

The packet field.


=head2 Port => Int

The port.


=head2 PortRanges => ArrayRef[L<Paws::EC2::PortRange>]

The port ranges.


=head2 PrefixList => L<Paws::EC2::AnalysisComponent>

The prefix list.


=head2 Protocols => ArrayRef[Str|Undef]

The protocols.


=head2 RouteTable => L<Paws::EC2::AnalysisComponent>

The route table.


=head2 RouteTableRoute => L<Paws::EC2::AnalysisRouteTableRoute>

The route table route.


=head2 SecurityGroup => L<Paws::EC2::AnalysisComponent>

The security group.


=head2 SecurityGroupRule => L<Paws::EC2::AnalysisSecurityGroupRule>

The security group rule.


=head2 SecurityGroups => ArrayRef[L<Paws::EC2::AnalysisComponent>]

The security groups.


=head2 SourceVpc => L<Paws::EC2::AnalysisComponent>

The source VPC.


=head2 State => Str

The state.


=head2 Subnet => L<Paws::EC2::AnalysisComponent>

The subnet.


=head2 SubnetRouteTable => L<Paws::EC2::AnalysisComponent>

The route table for the subnet.


=head2 Vpc => L<Paws::EC2::AnalysisComponent>

The component VPC.


=head2 VpcEndpoint => L<Paws::EC2::AnalysisComponent>

The VPC endpoint.


=head2 VpcPeeringConnection => L<Paws::EC2::AnalysisComponent>

The VPC peering connection.


=head2 VpnConnection => L<Paws::EC2::AnalysisComponent>

The VPN connection.


=head2 VpnGateway => L<Paws::EC2::AnalysisComponent>

The VPN gateway.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
