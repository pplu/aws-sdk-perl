
package Paws::AutoScaling::AttachLoadBalancers;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachLoadBalancers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::AttachLoadBalancersResultType');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AttachLoadBalancersResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::AttachLoadBalancers - Arguments for method AttachLoadBalancers on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachLoadBalancers on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method AttachLoadBalancers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachLoadBalancers.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To attach a load balancer to an Auto Scaling group
    # This example attaches the specified load balancer to the specified Auto
    # Scaling group.
    my $AttachLoadBalancersResultType = $autoscaling->AttachLoadBalancers(
      {
        'AutoScalingGroupName' => 'my-auto-scaling-group',
        'LoadBalancerNames'    => ['my-load-balancer']
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/AttachLoadBalancers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 B<REQUIRED> LoadBalancerNames => ArrayRef[Str|Undef]

The names of the load balancers. You can specify up to 10 load
balancers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachLoadBalancers in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

