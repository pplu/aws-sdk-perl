
package Paws::IoTEvents::DescribeDetectorModelResponse;
  use Moose;
  has DetectorModel => (is => 'ro', isa => 'Paws::IoTEvents::DetectorModel', traits => ['NameInRequest'], request_name => 'detectorModel');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::DescribeDetectorModelResponse

=head1 ATTRIBUTES


=head2 DetectorModel => L<Paws::IoTEvents::DetectorModel>

Information about the detector model.


=head2 _request_id => Str


=cut

