# Generated from json/callresult_class.tt

package Paws::ApplicationInsights::DescribeProblemObservationsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApplicationInsights::Types qw/ApplicationInsights_RelatedObservations/;
  has RelatedObservations => (is => 'ro', isa => ApplicationInsights_RelatedObservations);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RelatedObservations' => {
                                          'class' => 'Paws::ApplicationInsights::RelatedObservations',
                                          'type' => 'ApplicationInsights_RelatedObservations'
                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DescribeProblemObservationsResponse

=head1 ATTRIBUTES


=head2 RelatedObservations => ApplicationInsights_RelatedObservations

Observations related to the problem.


=head2 _request_id => Str


=cut

1;