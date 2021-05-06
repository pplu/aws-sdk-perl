
package Paws::IoTEvents::CreateDetectorModelResponse;
  use Moose;
  has DetectorModelConfiguration => (is => 'ro', isa => 'Paws::IoTEvents::DetectorModelConfiguration', traits => ['NameInRequest'], request_name => 'detectorModelConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::CreateDetectorModelResponse

=head1 ATTRIBUTES


=head2 DetectorModelConfiguration => L<Paws::IoTEvents::DetectorModelConfiguration>

Information about how the detector model is configured.


=head2 _request_id => Str


=cut

