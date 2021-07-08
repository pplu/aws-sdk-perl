
package Paws::SageMaker::ListPipelines;
  use Moose;
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PipelineNamePrefix => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPipelines');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListPipelinesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListPipelines - Arguments for method ListPipelines on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPipelines on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListPipelines.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPipelines.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListPipelinesResponse = $api . sagemaker->ListPipelines(
      CreatedAfter       => '1970-01-01T01:00:00',    # OPTIONAL
      CreatedBefore      => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults         => 1,                        # OPTIONAL
      NextToken          => 'MyNextToken',            # OPTIONAL
      PipelineNamePrefix => 'MyPipelineName',         # OPTIONAL
      SortBy             => 'Name',                   # OPTIONAL
      SortOrder          => 'Ascending',              # OPTIONAL
    );

    # Results:
    my $NextToken         = $ListPipelinesResponse->NextToken;
    my $PipelineSummaries = $ListPipelinesResponse->PipelineSummaries;

    # Returns a L<Paws::SageMaker::ListPipelinesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListPipelines>

=head1 ATTRIBUTES


=head2 CreatedAfter => Str

A filter that returns the pipelines that were created after a specified
time.



=head2 CreatedBefore => Str

A filter that returns the pipelines that were created before a
specified time.



=head2 MaxResults => Int

The maximum number of pipelines to return in the response.



=head2 NextToken => Str

If the result of the previous C<ListPipelines> request was truncated,
the response includes a C<NextToken>. To retrieve the next set of
pipelines, use the token in the next request.



=head2 PipelineNamePrefix => Str

The prefix of the pipeline name.



=head2 SortBy => Str

The field by which to sort results. The default is C<CreatedTime>.

Valid values are: C<"Name">, C<"CreationTime">

=head2 SortOrder => Str

The sort order for results.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPipelines in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

