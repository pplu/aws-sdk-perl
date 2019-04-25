
package Paws::ELB::CreateLoadBalancerListeners;
  use Moose;
  has Listeners => (is => 'ro', isa => 'ArrayRef[Paws::ELB::Listener]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerListeners');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::CreateLoadBalancerListenerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerListenersResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::CreateLoadBalancerListeners - Arguments for method CreateLoadBalancerListeners on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLoadBalancerListeners on the
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method CreateLoadBalancerListeners.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLoadBalancerListeners.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELB');
   # To create an HTTP listener for a load balancer
   # This example creates a listener for your load balancer at port 80 using the
   # HTTP protocol.
    my $CreateLoadBalancerListenerOutput =
      $elasticloadbalancing->CreateLoadBalancerListeners(
      {
        'Listeners' => [

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

    # To create an HTTPS listener for a load balancer
    # This example creates a listener for your load balancer at port 443 using
    # the HTTPS protocol.
    my $CreateLoadBalancerListenerOutput =
      $elasticloadbalancing->CreateLoadBalancerListeners(
      {
        'Listeners' => [

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


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/CreateLoadBalancerListeners>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Listeners => ArrayRef[L<Paws::ELB::Listener>]

The listeners.



=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLoadBalancerListeners in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

