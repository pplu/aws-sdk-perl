# Generated from json/callresult_class.tt

package Paws::AutoScalingPlans::DescribeScalingPlansResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AutoScalingPlans::Types qw/AutoScalingPlans_ScalingPlan/;
  has NextToken => (is => 'ro', isa => Str);
  has ScalingPlans => (is => 'ro', isa => ArrayRef[AutoScalingPlans_ScalingPlan]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ScalingPlans' => {
                                   'class' => 'Paws::AutoScalingPlans::ScalingPlan',
                                   'type' => 'ArrayRef[AutoScalingPlans_ScalingPlan]'
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

Paws::AutoScalingPlans::DescribeScalingPlansResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to get the next set of results. This value is
C<null> if there are no more results to return.


=head2 ScalingPlans => ArrayRef[AutoScalingPlans_ScalingPlan]

Information about the scaling plans.


=head2 _request_id => Str


=cut

1;