
package Paws::LookoutMetrics::CreateAnomalyDetectorResponse;
  use Moose;
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::CreateAnomalyDetectorResponse

=head1 ATTRIBUTES


=head2 AnomalyDetectorArn => Str

The ARN of the detector.


=head2 _request_id => Str


=cut

