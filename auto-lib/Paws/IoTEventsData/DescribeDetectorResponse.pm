
package Paws::IoTEventsData::DescribeDetectorResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEventsData::Types qw/IoTEventsData_Detector/;
  has Detector => (is => 'ro', isa => IoTEventsData_Detector);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Detector' => 'detector'
                     },
  'types' => {
               'Detector' => {
                               'type' => 'IoTEventsData_Detector',
                               'class' => 'Paws::IoTEventsData::Detector'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::DescribeDetectorResponse

=head1 ATTRIBUTES


=head2 Detector => IoTEventsData_Detector

Information about the detector (instance).


=head2 _request_id => Str


=cut

