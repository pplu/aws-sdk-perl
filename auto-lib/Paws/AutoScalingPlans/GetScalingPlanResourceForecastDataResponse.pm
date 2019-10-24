# Generated from json/callresult_class.tt

package Paws::AutoScalingPlans::GetScalingPlanResourceForecastDataResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AutoScalingPlans::Types qw/AutoScalingPlans_Datapoint/;
  has Datapoints => (is => 'ro', isa => ArrayRef[AutoScalingPlans_Datapoint], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Datapoints' => {
                                 'class' => 'Paws::AutoScalingPlans::Datapoint',
                                 'type' => 'ArrayRef[AutoScalingPlans_Datapoint]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Datapoints' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::GetScalingPlanResourceForecastDataResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Datapoints => ArrayRef[AutoScalingPlans_Datapoint]

The data points to return.


=head2 _request_id => Str


=cut

1;