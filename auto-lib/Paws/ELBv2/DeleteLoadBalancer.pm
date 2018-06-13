
package Paws::ELBv2::DeleteLoadBalancer;
  use Moose;
  has LoadBalancerArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::DeleteLoadBalancerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DeleteLoadBalancer - Arguments for method DeleteLoadBalancer on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLoadBalancer on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method DeleteLoadBalancer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLoadBalancer.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    # To delete a load balancer
    # This example deletes the specified load balancer.
    my $DeleteLoadBalancerOutput = $elasticloadbalancing->DeleteLoadBalancer(
      {
        'LoadBalancerArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/DeleteLoadBalancer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerArn => Str

The Amazon Resource Name (ARN) of the load balancer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLoadBalancer in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

