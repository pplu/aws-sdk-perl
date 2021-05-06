
package Paws::ApplicationInsights::DescribeComponentConfigurationRecommendationResponse;
  use Moose;
  has ComponentConfiguration => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

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