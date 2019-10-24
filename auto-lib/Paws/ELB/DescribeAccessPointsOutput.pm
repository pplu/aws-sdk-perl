# Generated from callresult_class.tt

package Paws::ELB::DescribeAccessPointsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELB::Types qw/ELB_LoadBalancerDescription/;
  has LoadBalancerDescriptions => (is => 'ro', isa => ArrayRef[ELB_LoadBalancerDescription]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LoadBalancerDescriptions' => {
                                               'class' => 'Paws::ELB::LoadBalancerDescription',
                                               'type' => 'ArrayRef[ELB_LoadBalancerDescription]'
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

Paws::ELB::DescribeAccessPointsOutput

=head1 ATTRIBUTES


=head2 LoadBalancerDescriptions => ArrayRef[ELB_LoadBalancerDescription]

Information about the load balancers.


=head2 NextMarker => Str

The marker to use when requesting the next set of results. If there are
no additional results, the string is empty.


=head2 _request_id => Str


=cut

