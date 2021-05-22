
package Paws::LookoutMetrics::GetAnomalyGroupResponse;
  use Moose;
  has AnomalyGroup => (is => 'ro', isa => 'Paws::LookoutMetrics::AnomalyGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::GetAnomalyGroupResponse

=head1 ATTRIBUTES


=head2 AnomalyGroup => L<Paws::LookoutMetrics::AnomalyGroup>

Details about the anomaly group.


=head2 _request_id => Str


=cut

