
package Paws::IoTEvents::StartDetectorModelAnalysisResponse;
  use Moose;
  has AnalysisId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'analysisId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::StartDetectorModelAnalysisResponse

=head1 ATTRIBUTES


=head2 AnalysisId => Str

The ID that you can use to retrieve the analysis result.


=head2 _request_id => Str


=cut

