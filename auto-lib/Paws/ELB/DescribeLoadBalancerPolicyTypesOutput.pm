
package Paws::ELB::DescribeLoadBalancerPolicyTypesOutput;
  use Moose;
  has PolicyTypeDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::ELB::PolicyTypeDescription]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeLoadBalancerPolicyTypesOutput

=head1 ATTRIBUTES


=head2 PolicyTypeDescriptions => ArrayRef[L<Paws::ELB::PolicyTypeDescription>]

Information about the policy types.


=head2 _request_id => Str


=cut

