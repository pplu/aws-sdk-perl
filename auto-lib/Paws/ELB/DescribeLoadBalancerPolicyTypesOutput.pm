
package Paws::ELB::DescribeLoadBalancerPolicyTypesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has PolicyTypeDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::ELB::PolicyTypeDescription]');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeLoadBalancerPolicyTypesOutput

=head1 ATTRIBUTES

=head2 PolicyTypeDescriptions => ArrayRef[Paws::ELB::PolicyTypeDescription]

  

List of policy type description structures of the specified policy
type. If no policy type names are specified, returns the description of
all the policy types defined by Elastic Load Balancing service.











=cut

