# Generated from callresult_class.tt

package Paws::ELB::DetachLoadBalancerFromSubnetsOutput;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::ELB::Types qw//;
  has Subnets => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Subnets' => {
                              'type' => 'ArrayRef[Str|Undef]'
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

Paws::ELB::DetachLoadBalancerFromSubnetsOutput

=head1 ATTRIBUTES


=head2 Subnets => ArrayRef[Str|Undef]

The IDs of the remaining subnets for the load balancer.


=head2 _request_id => Str


=cut

