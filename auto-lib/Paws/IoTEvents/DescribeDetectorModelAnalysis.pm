
package Paws::IoTEvents::DescribeDetectorModelAnalysis;
  use Moose;
  has AnalysisId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'analysisId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDetectorModelAnalysis');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/analysis/detector-models/{analysisId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTEvents::DescribeDetectorModelAnalysisResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::DescribeDetectorModelAnalysis - Arguments for method DescribeDetectorModelAnalysis on L<Paws::IoTEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDetectorModelAnalysis on the
L<AWS IoT Events|Paws::IoTEvents> service. Use the attributes of this class
as arguments to method DescribeDetectorModelAnalysis.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDetectorModelAnalysis.

=head1 SYNOPSIS

    my $iotevents = Paws->service('IoTEvents');
    my $DescribeDetectorModelAnalysisResponse =
      $iotevents->DescribeDetectorModelAnalysis(
      AnalysisId => 'MyAnalysisId',

      );

    # Results:
    my $Status = $DescribeDetectorModelAnalysisResponse->Status;

   # Returns a L<Paws::IoTEvents::DescribeDetectorModelAnalysisResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotevents/DescribeDetectorModelAnalysis>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisId => Str

The ID of the analysis result that you want to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDetectorModelAnalysis in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

