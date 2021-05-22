
package Paws::CostExplorer::ProvideAnomalyFeedbackResponse;
  use Moose;
  has AnomalyId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ProvideAnomalyFeedbackResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalyId => Str

The ID of the modified cost anomaly.


=head2 _request_id => Str


=cut

1;