
package Paws::ELBv2::DescribeLoadBalancers;
  use Moose;
  has LoadBalancerArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Marker => (is => 'ro', isa => 'Str');
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PageSize => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::DescribeLoadBalancersOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancersResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeLoadBalancers - Arguments for method DescribeLoadBalancers on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLoadBalancers on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method DescribeLoadBalancers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLoadBalancers.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    # To describe a load balancer
    # This example describes the specified load balancer.
    my $DescribeLoadBalancersOutput =
      $elasticloadbalancing->DescribeLoadBalancers(
      {
        'LoadBalancerArns' => [
'arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188'
        ]
      }
      );

    # Results:
    my $LoadBalancers = $DescribeLoadBalancersOutput->LoadBalancers;

    # Returns a L<Paws::ELBv2::DescribeLoadBalancersOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/DescribeLoadBalancers>

=head1 ATTRIBUTES


=head2 LoadBalancerArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the load balancers. You can specify
up to 20 load balancers in a single call.



=head2 Marker => Str

The marker for the next set of results. (You received this marker from
a previous call.)



=head2 Names => ArrayRef[Str|Undef]

The names of the load balancers.



=head2 PageSize => Int

The maximum number of results to return with this call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLoadBalancers in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

