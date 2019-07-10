
package Paws::IoTEventsData::DescribeDetectorResponse;
  use Moose;
  has Detector => (is => 'ro', isa => 'Paws::IoTEventsData::Detector', traits => ['NameInRequest'], request_name => 'detector');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::DescribeDetectorResponse

=head1 ATTRIBUTES


=head2 Detector => L<Paws::IoTEventsData::Detector>

Information about the detector (instance).


=head2 _request_id => Str


=cut

