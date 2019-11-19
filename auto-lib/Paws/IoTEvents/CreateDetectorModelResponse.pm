
package Paws::IoTEvents::CreateDetectorModelResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEvents::Types qw/IoTEvents_DetectorModelConfiguration/;
  has DetectorModelConfiguration => (is => 'ro', isa => IoTEvents_DetectorModelConfiguration);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DetectorModelConfiguration' => 'detectorModelConfiguration'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DetectorModelConfiguration' => {
                                                 'class' => 'Paws::IoTEvents::DetectorModelConfiguration',
                                                 'type' => 'IoTEvents_DetectorModelConfiguration'
                                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::CreateDetectorModelResponse

=head1 ATTRIBUTES


=head2 DetectorModelConfiguration => IoTEvents_DetectorModelConfiguration

Information about how the detector model is configured.


=head2 _request_id => Str


=cut

