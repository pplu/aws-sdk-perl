
package Paws::ELB::DescribeLoadBalancerPoliciesOutput;
  use Moose;
  has PolicyDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::ELB::PolicyDescription]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeLoadBalancerPoliciesOutput

=head1 ATTRIBUTES


=head2 PolicyDescriptions => ArrayRef[L<Paws::ELB::PolicyDescription>]

Information about the policies.


=head2 _request_id => Str


=cut

