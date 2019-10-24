# Generated from callresult_class.tt

package Paws::ELBv2::DescribeLoadBalancersOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELBv2::Types qw/ELBv2_LoadBalancer/;
  has LoadBalancers => (is => 'ro', isa => ArrayRef[ELBv2_LoadBalancer]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LoadBalancers' => {
                                    'class' => 'Paws::ELBv2::LoadBalancer',
                                    'type' => 'ArrayRef[ELBv2_LoadBalancer]'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextMarker' => {
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

Paws::ELBv2::DescribeLoadBalancersOutput

=head1 ATTRIBUTES


=head2 LoadBalancers => ArrayRef[ELBv2_LoadBalancer]

Information about the load balancers.


=head2 NextMarker => Str

If there are additional results, this is the marker for the next set of
results. Otherwise, this is null.


=head2 _request_id => Str


=cut

