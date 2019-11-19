
package Paws::IoTEventsData::DescribeDetector;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEventsData::Types qw//;
  has DetectorModelName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has KeyValue => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeDetector');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/detectors/{detectorModelName}/keyValues/');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTEventsData::DescribeDetectorResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'DetectorModelName' => 'detectorModelName'
                  },
  'IsRequired' => {
                    'DetectorModelName' => 1
                  },
  'ParamInQuery' => {
                      'KeyValue' => 'keyValue'
                    },
  'types' => {
               'KeyValue' => {
                               'type' => 'Str'
                             },
               'DetectorModelName' => {
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

Paws::IoTEventsData::DescribeDetector - Arguments for method DescribeDetector on L<Paws::IoTEventsData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDetector on the
L<AWS IoT Events Data|Paws::IoTEventsData> service. Use the attributes of this class
as arguments to method DescribeDetector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDetector.

=head1 SYNOPSIS

    my $data.iotevents = Paws->service('IoTEventsData');
    my $DescribeDetectorResponse = $data . iotevents->DescribeDetector(
      DetectorModelName => 'MyDetectorModelName',
      KeyValue          => 'MyKeyValue',            # OPTIONAL
    );

    # Results:
    my $Detector = $DescribeDetectorResponse->Detector;

    # Returns a L<Paws::IoTEventsData::DescribeDetectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.iotevents/DescribeDetector>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorModelName => Str

The name of the detector model whose detectors (instances) you want
information about.



=head2 KeyValue => Str

A filter used to limit results to detectors (instances) created because
of the given key ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDetector in L<Paws::IoTEventsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

