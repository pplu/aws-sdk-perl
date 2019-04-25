
package Paws::ELB::CreateLoadBalancer;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Listeners => (is => 'ro', isa => 'ArrayRef[Paws::ELB::Listener]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has Scheme => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ELB::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::CreateAccessPointOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::CreateLoadBalancer - Arguments for method CreateLoadBalancer on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLoadBalancer on the
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method CreateLoadBalancer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLoadBalancer.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELB');
    # To create an HTTP load balancer in a VPC
    # This example creates a load balancer with an HTTP listener in a VPC.
    my $CreateAccessPointOutput = $elasticloadbalancing->CreateLoadBalancer(
      {
        'Listeners' => [

          {
            'InstancePort'     => 80,
            'InstanceProtocol' => 'HTTP',
            'LoadBalancerPort' => 80,
            'Protocol'         => 'HTTP'
          }
        ],
        'LoadBalancerName' => 'my-load-balancer',
        'SecurityGroups'   => ['sg-a61988c3'],
        'Subnets'          => ['subnet-15aaab61']
      }
    );

    # Results:
    my $DNSName = $CreateAccessPointOutput->DNSName;

    # Returns a L<Paws::ELB::CreateAccessPointOutput> object.
    # To create an HTTP load balancer in EC2-Classic
    # This example creates a load balancer with an HTTP listener in EC2-Classic.
    my $CreateAccessPointOutput = $elasticloadbalancing->CreateLoadBalancer(
      {
        'AvailabilityZones' => ['us-west-2a'],
        'Listeners'         => [

          {
            'InstancePort'     => 80,
            'InstanceProtocol' => 'HTTP',
            'LoadBalancerPort' => 80,
            'Protocol'         => 'HTTP'
          }
        ],
        'LoadBalancerName' => 'my-load-balancer'
      }
    );

    # Results:
    my $DNSName = $CreateAccessPointOutput->DNSName;

    # Returns a L<Paws::ELB::CreateAccessPointOutput> object.
    # To create an HTTPS load balancer in a VPC
    # This example creates a load balancer with an HTTPS listener in a VPC.
    my $CreateAccessPointOutput = $elasticloadbalancing->CreateLoadBalancer(
      {
        'Listeners' => [

          {
            'InstancePort'     => 80,
            'InstanceProtocol' => 'HTTP',
            'LoadBalancerPort' => 80,
            'Protocol'         => 'HTTP'
          },

          {
            'InstancePort'     => 80,
            'InstanceProtocol' => 'HTTP',
            'LoadBalancerPort' => 443,
            'Protocol'         => 'HTTPS',
            'SSLCertificateId' =>
              'arn:aws:iam::123456789012:server-certificate/my-server-cert'
          }
        ],
        'LoadBalancerName' => 'my-load-balancer',
        'SecurityGroups'   => ['sg-a61988c3'],
        'Subnets'          => ['subnet-15aaab61']
      }
    );

    # Results:
    my $DNSName = $CreateAccessPointOutput->DNSName;

   # Returns a L<Paws::ELB::CreateAccessPointOutput> object.
   # To create an HTTPS load balancer in EC2-Classic
   # This example creates a load balancer with an HTTPS listener in EC2-Classic.
    my $CreateAccessPointOutput = $elasticloadbalancing->CreateLoadBalancer(
      {
        'AvailabilityZones' => ['us-west-2a'],
        'Listeners'         => [

          {
            'InstancePort'     => 80,
            'InstanceProtocol' => 'HTTP',
            'LoadBalancerPort' => 80,
            'Protocol'         => 'HTTP'
          },

          {
            'InstancePort'     => 80,
            'InstanceProtocol' => 'HTTP',
            'LoadBalancerPort' => 443,
            'Protocol'         => 'HTTPS',
            'SSLCertificateId' =>
              'arn:aws:iam::123456789012:server-certificate/my-server-cert'
          }
        ],
        'LoadBalancerName' => 'my-load-balancer'
      }
    );

    # Results:
    my $DNSName = $CreateAccessPointOutput->DNSName;

    # Returns a L<Paws::ELB::CreateAccessPointOutput> object.
    # To create an internal load balancer
    # This example creates an internal load balancer with an HTTP listener in a
    # VPC.
    my $CreateAccessPointOutput = $elasticloadbalancing->CreateLoadBalancer(
      {
        'Listeners' => [

          {
            'InstancePort'     => 80,
            'InstanceProtocol' => 'HTTP',
            'LoadBalancerPort' => 80,
            'Protocol'         => 'HTTP'
          }
        ],
        'LoadBalancerName' => 'my-load-balancer',
        'Scheme'           => 'internal',
        'SecurityGroups'   => ['sg-a61988c3'],
        'Subnets'          => ['subnet-15aaab61']
      }
    );

    # Results:
    my $DNSName = $CreateAccessPointOutput->DNSName;

    # Returns a L<Paws::ELB::CreateAccessPointOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/CreateLoadBalancer>

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

One or more Availability Zones from the same region as the load
balancer.

You must specify at least one Availability Zone.

You can add more Availability Zones after you create the load balancer
using EnableAvailabilityZonesForLoadBalancer.



=head2 B<REQUIRED> Listeners => ArrayRef[L<Paws::ELB::Listener>]

The listeners.

For more information, see Listeners for Your Classic Load Balancer
(http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html)
in the I<Classic Load Balancers Guide>.



=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.

This name must be unique within your set of load balancers for the
region, must have a maximum of 32 characters, must contain only
alphanumeric characters or hyphens, and cannot begin or end with a
hyphen.



=head2 Scheme => Str

The type of a load balancer. Valid only for load balancers in a VPC.

By default, Elastic Load Balancing creates an Internet-facing load
balancer with a DNS name that resolves to public IP addresses. For more
information about Internet-facing and Internal load balancers, see Load
Balancer Scheme
(http://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/how-elastic-load-balancing-works.html#load-balancer-scheme)
in the I<Elastic Load Balancing User Guide>.

Specify C<internal> to create a load balancer with a DNS name that
resolves to private IP addresses.



=head2 SecurityGroups => ArrayRef[Str|Undef]

The IDs of the security groups to assign to the load balancer.



=head2 Subnets => ArrayRef[Str|Undef]

The IDs of the subnets in your VPC to attach to the load balancer.
Specify one subnet per Availability Zone specified in
C<AvailabilityZones>.



=head2 Tags => ArrayRef[L<Paws::ELB::Tag>]

A list of tags to assign to the load balancer.

For more information about tagging your load balancer, see Tag Your
Classic Load Balancer
(http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html)
in the I<Classic Load Balancers Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLoadBalancer in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

