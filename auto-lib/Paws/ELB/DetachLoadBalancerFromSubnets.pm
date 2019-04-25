
package Paws::ELB::DetachLoadBalancerFromSubnets;
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachLoadBalancerFromSubnets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::DetachLoadBalancerFromSubnetsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DetachLoadBalancerFromSubnetsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DetachLoadBalancerFromSubnets - Arguments for method DetachLoadBalancerFromSubnets on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachLoadBalancerFromSubnets on the
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method DetachLoadBalancerFromSubnets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachLoadBalancerFromSubnets.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELB');
    # To detach a load balancer from a subnet
    # This example detaches the specified load balancer from the specified
    # subnet.
    my $DetachLoadBalancerFromSubnetsOutput =
      $elasticloadbalancing->DetachLoadBalancerFromSubnets(
      {
        'LoadBalancerName' => 'my-load-balancer',
        'Subnets'          => ['subnet-0ecac448']
      }
      );

    # Results:
    my $Subnets = $DetachLoadBalancerFromSubnetsOutput->Subnets;

    # Returns a L<Paws::ELB::DetachLoadBalancerFromSubnetsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/DetachLoadBalancerFromSubnets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.



=head2 B<REQUIRED> Subnets => ArrayRef[Str|Undef]

The IDs of the subnets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachLoadBalancerFromSubnets in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

