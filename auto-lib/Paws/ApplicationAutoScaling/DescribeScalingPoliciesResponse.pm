# Generated from json/callresult_class.tt

package Paws::ApplicationAutoScaling::DescribeScalingPoliciesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApplicationAutoScaling::Types qw/ApplicationAutoScaling_ScalingPolicy/;
  has NextToken => (is => 'ro', isa => Str);
  has ScalingPolicies => (is => 'ro', isa => ArrayRef[ApplicationAutoScaling_ScalingPolicy]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ScalingPolicies' => {
                                      'class' => 'Paws::ApplicationAutoScaling::ScalingPolicy',
                                      'type' => 'ArrayRef[ApplicationAutoScaling_ScalingPolicy]'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::DescribeScalingPoliciesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to get the next set of results. This value is
C<null> if there are no more results to return.


=head2 ScalingPolicies => ArrayRef[ApplicationAutoScaling_ScalingPolicy]

Information about the scaling policies.


=head2 _request_id => Str


=cut

1;