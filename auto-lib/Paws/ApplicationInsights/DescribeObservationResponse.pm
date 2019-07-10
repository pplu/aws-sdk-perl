
package Paws::ApplicationInsights::DescribeObservationResponse;
  use Moose;
  has Observation => (is => 'ro', isa => 'Paws::ApplicationInsights::Observation');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DescribeObservationResponse

=head1 ATTRIBUTES


=head2 Observation => L<Paws::ApplicationInsights::Observation>

Information about the observation.


=head2 _request_id => Str


=cut

1;