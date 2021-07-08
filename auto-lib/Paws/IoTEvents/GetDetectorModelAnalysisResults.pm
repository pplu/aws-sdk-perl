
package Paws::IoTEvents::GetDetectorModelAnalysisResults;
  use Moose;
  has AnalysisId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'analysisId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDetectorModelAnalysisResults');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/analysis/detector-models/{analysisId}/results');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTEvents::GetDetectorModelAnalysisResultsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::GetDetectorModelAnalysisResults - Arguments for method GetDetectorModelAnalysisResults on L<Paws::IoTEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDetectorModelAnalysisResults on the
L<AWS IoT Events|Paws::IoTEvents> service. Use the attributes of this class
as arguments to method GetDetectorModelAnalysisResults.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDetectorModelAnalysisResults.

=head1 SYNOPSIS

    my $iotevents = Paws->service('IoTEvents');
    my $GetDetectorModelAnalysisResultsResponse =
      $iotevents->GetDetectorModelAnalysisResults(
      AnalysisId => 'MyAnalysisId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $AnalysisResults =
      $GetDetectorModelAnalysisResultsResponse->AnalysisResults;
    my $NextToken = $GetDetectorModelAnalysisResultsResponse->NextToken;

 # Returns a L<Paws::IoTEvents::GetDetectorModelAnalysisResultsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotevents/GetDetectorModelAnalysisResults>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisId => Str

The ID of the analysis result that you want to retrieve.



=head2 MaxResults => Int

The maximum number of results to be returned per request.



=head2 NextToken => Str

The token that you can use to return the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDetectorModelAnalysisResults in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

