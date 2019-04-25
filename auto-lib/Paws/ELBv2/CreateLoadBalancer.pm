
package Paws::ELBv2::CreateLoadBalancer;
  use Moose;
  has IpAddressType => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Scheme => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SubnetMappings => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::SubnetMapping]');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Tag]');
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::CreateLoadBalancerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::CreateLoadBalancer - Arguments for method CreateLoadBalancer on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLoadBalancer on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method CreateLoadBalancer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLoadBalancer.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    # To create an Internet-facing load balancer
    # This example creates an Internet-facing load balancer and enables the
    # Availability Zones for the specified subnets.
    my $CreateLoadBalancerOutput = $elasticloadbalancing->CreateLoadBalancer(
      {
        'Name'    => 'my-load-balancer',
        'Subnets' => [ 'subnet-b7d581c0', 'subnet-8360a9e7' ]
      }
    );

    # Results:
    my $LoadBalancers = $CreateLoadBalancerOutput->LoadBalancers;

   # Returns a L<Paws::ELBv2::CreateLoadBalancerOutput> object.
   # To create an internal load balancer
   # This example creates an internal load balancer and enables the Availability
   # Zones for the specified subnets.
    my $CreateLoadBalancerOutput = $elasticloadbalancing->CreateLoadBalancer(
      {
        'Name'           => 'my-internal-load-balancer',
        'Scheme'         => 'internal',
        'SecurityGroups' => [

        ],
        'Subnets' => [ 'subnet-b7d581c0', 'subnet-8360a9e7' ]
      }
    );

    # Results:
    my $LoadBalancers = $CreateLoadBalancerOutput->LoadBalancers;

    # Returns a L<Paws::ELBv2::CreateLoadBalancerOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/CreateLoadBalancer>

=head1 ATTRIBUTES


=head2 IpAddressType => Str

[Application Load Balancers] The type of IP addresses used by the
subnets for your load balancer. The possible values are C<ipv4> (for
IPv4 addresses) and C<dualstack> (for IPv4 and IPv6 addresses).
Internal load balancers must use C<ipv4>.

Valid values are: C<"ipv4">, C<"dualstack">

=head2 B<REQUIRED> Name => Str

The name of the load balancer.

This name must be unique per region per account, can have a maximum of
32 characters, must contain only alphanumeric characters or hyphens,
must not begin or end with a hyphen, and must not begin with
"internal-".



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

The default is an Internet-facing load balancer.

Valid values are: C<"internet-facing">, C<"internal">

=head2 SecurityGroups => ArrayRef[Str|Undef]

[Application Load Balancers] The IDs of the security groups for the
load balancer.



=head2 SubnetMappings => ArrayRef[L<Paws::ELBv2::SubnetMapping>]

The IDs of the public subnets. You can specify only one subnet per
Availability Zone. You must specify either subnets or subnet mappings.

[Application Load Balancers] You must specify subnets from at least two
Availability Zones. You cannot specify Elastic IP addresses for your
subnets.

[Network Load Balancers] You can specify subnets from one or more
Availability Zones. You can specify one Elastic IP address per subnet.



=head2 Subnets => ArrayRef[Str|Undef]

The IDs of the public subnets. You can specify only one subnet per
Availability Zone. You must specify either subnets or subnet mappings.

[Application Load Balancers] You must specify subnets from at least two
Availability Zones.

[Network Load Balancers] You can specify subnets from one or more
Availability Zones.



=head2 Tags => ArrayRef[L<Paws::ELBv2::Tag>]

One or more tags to assign to the load balancer.



=head2 Type => Str

The type of load balancer. The default is C<application>.

Valid values are: C<"application">, C<"network">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLoadBalancer in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

