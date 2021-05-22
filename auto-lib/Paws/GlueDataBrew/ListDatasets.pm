
package Paws::GlueDataBrew::ListDatasets;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDatasets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::ListDatasetsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::ListDatasets - Arguments for method ListDatasets on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDatasets on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method ListDatasets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDatasets.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $ListDatasetsResponse = $databrew->ListDatasets(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Datasets  = $ListDatasetsResponse->Datasets;
    my $NextToken = $ListDatasetsResponse->NextToken;

    # Returns a L<Paws::GlueDataBrew::ListDatasetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/ListDatasets>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in this request.



=head2 NextToken => Str

The token returned by a previous call to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDatasets in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

