# Generated from json/callresult_class.tt

package Paws::ApplicationInsights::DescribeObservationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApplicationInsights::Types qw/ApplicationInsights_Observation/;
  has Observation => (is => 'ro', isa => ApplicationInsights_Observation);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Observation' => {
                                  'class' => 'Paws::ApplicationInsights::Observation',
                                  'type' => 'ApplicationInsights_Observation'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DescribeObservationResponse

=head1 ATTRIBUTES


=head2 Observation => ApplicationInsights_Observation

Information about the observation.


=head2 _request_id => Str


=cut

1;