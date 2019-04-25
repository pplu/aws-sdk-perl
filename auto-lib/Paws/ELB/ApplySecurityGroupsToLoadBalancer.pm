
package Paws::ELB::ApplySecurityGroupsToLoadBalancer;
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ApplySecurityGroupsToLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::ApplySecurityGroupsToLoadBalancerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ApplySecurityGroupsToLoadBalancerResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::ApplySecurityGroupsToLoadBalancer - Arguments for method ApplySecurityGroupsToLoadBalancer on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ApplySecurityGroupsToLoadBalancer on the
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method ApplySecurityGroupsToLoadBalancer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ApplySecurityGroupsToLoadBalancer.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELB');
    # To associate a security group with a load balancer in a VPC
    # This example associates a security group with the specified load balancer
    # in a VPC.
    my $ApplySecurityGroupsToLoadBalancerOutput =
      $elasticloadbalancing->ApplySecurityGroupsToLoadBalancer(
      {
        'LoadBalancerName' => 'my-load-balancer',
        'SecurityGroups'   => ['sg-fc448899']
      }
      );

    # Results:
    my $SecurityGroups =
      $ApplySecurityGroupsToLoadBalancerOutput->SecurityGroups;

    # Returns a L<Paws::ELB::ApplySecurityGroupsToLoadBalancerOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/ApplySecurityGroupsToLoadBalancer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.



=head2 B<REQUIRED> SecurityGroups => ArrayRef[Str|Undef]

The IDs of the security groups to associate with the load balancer.
Note that you cannot specify the name of the security group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ApplySecurityGroupsToLoadBalancer in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

