# Generated from callresult_class.tt

package Paws::ELBv2::DescribeLoadBalancerAttributesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELBv2::Types qw/ELBv2_LoadBalancerAttribute/;
  has Attributes => (is => 'ro', isa => ArrayRef[ELBv2_LoadBalancerAttribute]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'class' => 'Paws::ELBv2::LoadBalancerAttribute',
                                 'type' => 'ArrayRef[ELBv2_LoadBalancerAttribute]'
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

Paws::ELBv2::DescribeLoadBalancerAttributesOutput

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[ELBv2_LoadBalancerAttribute]

Information about the load balancer attributes.


=head2 _request_id => Str


=cut

