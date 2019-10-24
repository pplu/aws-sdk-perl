# Generated from json/callresult_class.tt

package Paws::Lightsail::GetLoadBalancersResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_LoadBalancer/;
  has LoadBalancers => (is => 'ro', isa => ArrayRef[Lightsail_LoadBalancer]);
  has NextPageToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'LoadBalancers' => {
                                    'class' => 'Paws::Lightsail::LoadBalancer',
                                    'type' => 'ArrayRef[Lightsail_LoadBalancer]'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextPageToken' => 'nextPageToken',
                       'LoadBalancers' => 'loadBalancers'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetLoadBalancersResult

=head1 ATTRIBUTES


=head2 LoadBalancers => ArrayRef[Lightsail_LoadBalancer]

An array of LoadBalancer objects describing your load balancers.


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your
GetLoadBalancers request.


=head2 _request_id => Str


=cut

1;