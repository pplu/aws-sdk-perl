# Generated from json/callresult_class.tt

package Paws::AutoScalingPlans::DescribeScalingPlanResourcesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AutoScalingPlans::Types qw/AutoScalingPlans_ScalingPlanResource/;
  has NextToken => (is => 'ro', isa => Str);
  has ScalingPlanResources => (is => 'ro', isa => ArrayRef[AutoScalingPlans_ScalingPlanResource]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ScalingPlanResources' => {
                                           'class' => 'Paws::AutoScalingPlans::ScalingPlanResource',
                                           'type' => 'ArrayRef[AutoScalingPlans_ScalingPlanResource]'
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

Paws::AutoScalingPlans::DescribeScalingPlanResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to get the next set of results. This value is
C<null> if there are no more results to return.


=head2 ScalingPlanResources => ArrayRef[AutoScalingPlans_ScalingPlanResource]

Information about the scalable resources.


=head2 _request_id => Str


=cut

1;