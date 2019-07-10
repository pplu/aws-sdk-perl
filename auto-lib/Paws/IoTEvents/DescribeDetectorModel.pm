
package Paws::IoTEvents::DescribeDetectorModel;
  use Moose;
  has DetectorModelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorModelName', required => 1);
  has DetectorModelVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'version');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDetectorModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector-models/{detectorModelName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTEvents::DescribeDetectorModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::DescribeDetectorModel - Arguments for method DescribeDetectorModel on L<Paws::IoTEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDetectorModel on the
L<AWS IoT Events|Paws::IoTEvents> service. Use the attributes of this class
as arguments to method DescribeDetectorModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDetectorModel.

=head1 SYNOPSIS

    my $iotevents = Paws->service('IoTEvents');
    my $DescribeDetectorModelResponse = $iotevents->DescribeDetectorModel(
      DetectorModelName    => 'MyDetectorModelName',
      DetectorModelVersion => 'MyDetectorModelVersion',    # OPTIONAL
    );

    # Results:
    my $DetectorModel = $DescribeDetectorModelResponse->DetectorModel;

    # Returns a L<Paws::IoTEvents::DescribeDetectorModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotevents/DescribeDetectorModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorModelName => Str

The name of the detector model.



=head2 DetectorModelVersion => Str

The version of the detector model.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDetectorModel in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

