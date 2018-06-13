
package Paws::IoTAnalytics::ListPipelines;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPipelines');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/pipelines');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTAnalytics::ListPipelinesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::ListPipelines - Arguments for method ListPipelines on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPipelines on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method ListPipelines.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPipelines.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    my $ListPipelinesResponse = $iotanalytics->ListPipelines(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken         = $ListPipelinesResponse->NextToken;
    my $PipelineSummaries = $ListPipelinesResponse->PipelineSummaries;

    # Returns a L<Paws::IoTAnalytics::ListPipelinesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/ListPipelines>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in this request.

The default value is 100.



=head2 NextToken => Str

The token for the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPipelines in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

