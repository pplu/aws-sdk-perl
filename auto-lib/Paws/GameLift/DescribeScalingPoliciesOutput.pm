# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeScalingPoliciesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_ScalingPolicy/;
  has NextToken => (is => 'ro', isa => Str);
  has ScalingPolicies => (is => 'ro', isa => ArrayRef[GameLift_ScalingPolicy]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ScalingPolicies' => {
                                      'class' => 'Paws::GameLift::ScalingPolicy',
                                      'type' => 'ArrayRef[GameLift_ScalingPolicy]'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeScalingPoliciesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 ScalingPolicies => ArrayRef[GameLift_ScalingPolicy]

Collection of objects containing the scaling policies matching the
request.


=head2 _request_id => Str


=cut

1;