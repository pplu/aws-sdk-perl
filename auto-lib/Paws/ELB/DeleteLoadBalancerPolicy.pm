
package Paws::ELB::DeleteLoadBalancerPolicy;
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::DeleteLoadBalancerPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DeleteLoadBalancerPolicy - Arguments for method DeleteLoadBalancerPolicy on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLoadBalancerPolicy on the
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method DeleteLoadBalancerPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLoadBalancerPolicy.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELB');
   # To delete a policy from your load balancer
   # This example deletes the specified policy from the specified load balancer.
   # The policy must not be enabled on any listener.
    my $DeleteLoadBalancerPolicyOutput =
      $elasticloadbalancing->DeleteLoadBalancerPolicy(
      {
        'LoadBalancerName' => 'my-load-balancer',
        'PolicyName'       => 'my-duration-cookie-policy'
      }
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/DeleteLoadBalancerPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.



=head2 B<REQUIRED> PolicyName => Str

The name of the policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLoadBalancerPolicy in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

