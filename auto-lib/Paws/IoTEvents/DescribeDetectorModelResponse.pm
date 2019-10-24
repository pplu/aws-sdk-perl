
package Paws::IoTEvents::DescribeDetectorModelResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEvents::Types qw/IoTEvents_DetectorModel/;
  has DetectorModel => (is => 'ro', isa => IoTEvents_DetectorModel);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DetectorModel' => {
                                    'class' => 'Paws::IoTEvents::DetectorModel',
                                    'type' => 'IoTEvents_DetectorModel'
                                  }
             },
  'NameInRequest' => {
                       'DetectorModel' => 'detectorModel'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::DescribeDetectorModelResponse

=head1 ATTRIBUTES


=head2 DetectorModel => IoTEvents_DetectorModel

Information about the detector model.


=head2 _request_id => Str


=cut

