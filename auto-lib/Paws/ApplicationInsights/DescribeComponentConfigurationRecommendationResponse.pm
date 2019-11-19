# Generated from json/callresult_class.tt

package Paws::ApplicationInsights::DescribeComponentConfigurationRecommendationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApplicationInsights::Types qw//;
  has ComponentConfiguration => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ComponentConfiguration' => {
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


### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DescribeComponentConfigurationRecommendationResponse

=head1 ATTRIBUTES


=head2 ComponentConfiguration => Str

The recommended configuration settings of the component. The value is
the escaped JSON of the configuration.


=head2 _request_id => Str


=cut

1;