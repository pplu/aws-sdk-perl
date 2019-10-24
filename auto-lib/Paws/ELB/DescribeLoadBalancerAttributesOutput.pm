# Generated from callresult_class.tt

package Paws::ELB::DescribeLoadBalancerAttributesOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ELB::Types qw/ELB_LoadBalancerAttributes/;
  has LoadBalancerAttributes => (is => 'ro', isa => ELB_LoadBalancerAttributes);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LoadBalancerAttributes' => {
                                             'class' => 'Paws::ELB::LoadBalancerAttributes',
                                             'type' => 'ELB_LoadBalancerAttributes'
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

Paws::ELB::DescribeLoadBalancerAttributesOutput

=head1 ATTRIBUTES


=head2 LoadBalancerAttributes => ELB_LoadBalancerAttributes

Information about the load balancer attributes.


=head2 _request_id => Str


=cut

