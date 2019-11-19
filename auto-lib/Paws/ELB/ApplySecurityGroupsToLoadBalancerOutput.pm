# Generated from callresult_class.tt

package Paws::ELB::ApplySecurityGroupsToLoadBalancerOutput;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::ELB::Types qw//;
  has SecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SecurityGroups' => {
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

Paws::ELB::ApplySecurityGroupsToLoadBalancerOutput

=head1 ATTRIBUTES


=head2 SecurityGroups => ArrayRef[Str|Undef]

The IDs of the security groups associated with the load balancer.


=head2 _request_id => Str


=cut

