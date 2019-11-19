# Generated from json/callresult_class.tt

package Paws::AutoScalingPlans::CreateScalingPlanResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::AutoScalingPlans::Types qw//;
  has ScalingPlanVersion => (is => 'ro', isa => Int, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ScalingPlanVersion' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ScalingPlanVersion' => {
                                         'type' => 'Int'
                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::CreateScalingPlanResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScalingPlanVersion => Int

The version number of the scaling plan. This value is always 1.

Currently, you cannot specify multiple scaling plan versions.


=head2 _request_id => Str


=cut

1;