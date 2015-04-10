
package Paws::ELB::ApplySecurityGroupsToLoadBalancer {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ApplySecurityGroupsToLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::ApplySecurityGroupsToLoadBalancerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ApplySecurityGroupsToLoadBalancerResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::ApplySecurityGroupsToLoadBalancer - Arguments for method ApplySecurityGroupsToLoadBalancer on Paws::ELB

=head1 DESCRIPTION

This class represents the parameters used for calling the method ApplySecurityGroupsToLoadBalancer on the 
Elastic Load Balancing service. Use the attributes of this class
as arguments to method ApplySecurityGroupsToLoadBalancer.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to ApplySecurityGroupsToLoadBalancer.

As an example:

  $service_obj->ApplySecurityGroupsToLoadBalancer(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> LoadBalancerName => Str

  

The name associated with the load balancer. The name must be unique
within the set of load balancers associated with your AWS account.










=head2 B<REQUIRED> SecurityGroups => ArrayRef[Str]

  

A list of security group IDs to associate with your load balancer in
VPC. The security group IDs must be provided as the ID and not the
security group name (For example, sg-1234).












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ApplySecurityGroupsToLoadBalancer in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

