# Generated from callresult_class.tt

package Paws::ELB::DescribeLoadBalancerPoliciesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELB::Types qw/ELB_PolicyDescription/;
  has PolicyDescriptions => (is => 'ro', isa => ArrayRef[ELB_PolicyDescription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PolicyDescriptions' => {
                                         'type' => 'ArrayRef[ELB_PolicyDescription]',
                                         'class' => 'Paws::ELB::PolicyDescription'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeLoadBalancerPoliciesOutput

=head1 ATTRIBUTES


=head2 PolicyDescriptions => ArrayRef[ELB_PolicyDescription]

Information about the policies.


=head2 _request_id => Str


=cut

