# Generated from callresult_class.tt

package Paws::ELB::DescribeLoadBalancerPolicyTypesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELB::Types qw/ELB_PolicyTypeDescription/;
  has PolicyTypeDescriptions => (is => 'ro', isa => ArrayRef[ELB_PolicyTypeDescription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PolicyTypeDescriptions' => {
                                             'class' => 'Paws::ELB::PolicyTypeDescription',
                                             'type' => 'ArrayRef[ELB_PolicyTypeDescription]'
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

Paws::ELB::DescribeLoadBalancerPolicyTypesOutput

=head1 ATTRIBUTES


=head2 PolicyTypeDescriptions => ArrayRef[ELB_PolicyTypeDescription]

Information about the policy types.


=head2 _request_id => Str


=cut

