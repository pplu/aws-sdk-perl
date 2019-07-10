
package Paws::ApplicationInsights::DescribeProblemObservationsResponse;
  use Moose;
  has RelatedObservations => (is => 'ro', isa => 'Paws::ApplicationInsights::RelatedObservations');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DescribeProblemObservationsResponse

=head1 ATTRIBUTES


=head2 RelatedObservations => L<Paws::ApplicationInsights::RelatedObservations>

Observations related to the problem.


=head2 _request_id => Str


=cut

1;