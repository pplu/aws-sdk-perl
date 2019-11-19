# Generated from json/callresult_class.tt

package Paws::ApplicationInsights::DescribeProblemResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApplicationInsights::Types qw/ApplicationInsights_Problem/;
  has Problem => (is => 'ro', isa => ApplicationInsights_Problem);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Problem' => {
                              'type' => 'ApplicationInsights_Problem',
                              'class' => 'Paws::ApplicationInsights::Problem'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DescribeProblemResponse

=head1 ATTRIBUTES


=head2 Problem => ApplicationInsights_Problem

Information about the problem.


=head2 _request_id => Str


=cut

1;