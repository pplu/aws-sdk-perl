# Generated from callresult_class.tt

package Paws::ELBv2::CreateLoadBalancerOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELBv2::Types qw/ELBv2_LoadBalancer/;
  has LoadBalancers => (is => 'ro', isa => ArrayRef[ELBv2_LoadBalancer]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LoadBalancers' => {
                                    'type' => 'ArrayRef[ELBv2_LoadBalancer]',
                                    'class' => 'Paws::ELBv2::LoadBalancer'
                                  }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::CreateLoadBalancerOutput

=head1 ATTRIBUTES


=head2 LoadBalancers => ArrayRef[ELBv2_LoadBalancer]

Information about the load balancer.


=head2 _request_id => Str


=cut

