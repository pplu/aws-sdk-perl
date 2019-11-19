# Generated from callresult_class.tt

package Paws::ELB::ModifyLoadBalancerAttributesOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ELB::Types qw/ELB_LoadBalancerAttributes/;
  has LoadBalancerAttributes => (is => 'ro', isa => ELB_LoadBalancerAttributes);
  has LoadBalancerName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LoadBalancerAttributes' => {
                                             'type' => 'ELB_LoadBalancerAttributes',
                                             'class' => 'Paws::ELB::LoadBalancerAttributes'
                                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LoadBalancerName' => {
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

Paws::ELB::ModifyLoadBalancerAttributesOutput

=head1 ATTRIBUTES


=head2 LoadBalancerAttributes => ELB_LoadBalancerAttributes

Information about the load balancer attributes.


=head2 LoadBalancerName => Str

The name of the load balancer.


=head2 _request_id => Str


=cut

