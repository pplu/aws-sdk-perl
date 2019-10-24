# Generated from json/callresult_class.tt

package Paws::Lightsail::GetLoadBalancerResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_LoadBalancer/;
  has LoadBalancer => (is => 'ro', isa => Lightsail_LoadBalancer);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LoadBalancer' => {
                                   'class' => 'Paws::Lightsail::LoadBalancer',
                                   'type' => 'Lightsail_LoadBalancer'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'LoadBalancer' => 'loadBalancer'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetLoadBalancerResult

=head1 ATTRIBUTES


=head2 LoadBalancer => Lightsail_LoadBalancer

An object containing information about your load balancer.


=head2 _request_id => Str


=cut

1;