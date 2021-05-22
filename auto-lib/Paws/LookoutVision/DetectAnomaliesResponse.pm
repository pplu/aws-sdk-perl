
package Paws::LookoutVision::DetectAnomaliesResponse;
  use Moose;
  has DetectAnomalyResult => (is => 'ro', isa => 'Paws::LookoutVision::DetectAnomalyResult');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::DetectAnomaliesResponse

=head1 ATTRIBUTES


=head2 DetectAnomalyResult => L<Paws::LookoutVision::DetectAnomalyResult>

The results of the C<DetectAnomalies> operation.


=head2 _request_id => Str


=cut

