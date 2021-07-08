
package Paws::LookoutMetrics::UpdateAnomalyDetectorResponse;
  use Moose;
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::UpdateAnomalyDetectorResponse

=head1 ATTRIBUTES


=head2 AnomalyDetectorArn => Str

The ARN of the updated detector.


=head2 _request_id => Str


=cut

