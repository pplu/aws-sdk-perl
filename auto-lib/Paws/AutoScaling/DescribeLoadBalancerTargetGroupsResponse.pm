# Generated from callresult_class.tt

package Paws::AutoScaling::DescribeLoadBalancerTargetGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AutoScaling::Types qw/AutoScaling_LoadBalancerTargetGroupState/;
  has LoadBalancerTargetGroups => (is => 'ro', isa => ArrayRef[AutoScaling_LoadBalancerTargetGroupState]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LoadBalancerTargetGroups' => {
                                               'class' => 'Paws::AutoScaling::LoadBalancerTargetGroupState',
                                               'type' => 'ArrayRef[AutoScaling_LoadBalancerTargetGroupState]'
                                             },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::AutoScaling::DescribeLoadBalancerTargetGroupsResponse

=head1 ATTRIBUTES


=head2 LoadBalancerTargetGroups => ArrayRef[AutoScaling_LoadBalancerTargetGroupState]

Information about the target groups.


=head2 NextToken => Str

A string that indicates that the response contains more items than can
be returned in a single response. To receive additional items, specify
this string for the C<NextToken> value when requesting the next set of
items. This value is null when there are no more items to return.


=head2 _request_id => Str


=cut

