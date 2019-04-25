
package Paws::ELB::DescribeLoadBalancerAttributes;
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::DescribeLoadBalancerAttributesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerAttributesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeLoadBalancerAttributes - Arguments for method DescribeLoadBalancerAttributes on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLoadBalancerAttributes on the
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method DescribeLoadBalancerAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLoadBalancerAttributes.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELB');
    # To describe the attributes of a load balancer
    # This example describes the attributes of the specified load balancer.
    my $DescribeLoadBalancerAttributesOutput =
      $elasticloadbalancing->DescribeLoadBalancerAttributes(
      {
        'LoadBalancerName' => 'my-load-balancer'
      }
      );

    # Results:
    my $LoadBalancerAttributes =
      $DescribeLoadBalancerAttributesOutput->LoadBalancerAttributes;

    # Returns a L<Paws::ELB::DescribeLoadBalancerAttributesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/DescribeLoadBalancerAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLoadBalancerAttributes in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

