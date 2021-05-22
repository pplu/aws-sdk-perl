
package Paws::SageMaker::ListPipelineExecutions;
  use Moose;
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PipelineName => (is => 'ro', isa => 'Str', required => 1);
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPipelineExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListPipelineExecutionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListPipelineExecutions - Arguments for method ListPipelineExecutions on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPipelineExecutions on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListPipelineExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPipelineExecutions.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListPipelineExecutionsResponse =
      $api . sagemaker->ListPipelineExecutions(
      PipelineName  => 'MyPipelineName',
      CreatedAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      CreatedBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults    => 1,                        # OPTIONAL
      NextToken     => 'MyNextToken',            # OPTIONAL
      SortBy        => 'CreationTime',           # OPTIONAL
      SortOrder     => 'Ascending',              # OPTIONAL
      );

    # Results:
    my $NextToken = $ListPipelineExecutionsResponse->NextToken;
    my $PipelineExecutionSummaries =
      $ListPipelineExecutionsResponse->PipelineExecutionSummaries;

    # Returns a L<Paws::SageMaker::ListPipelineExecutionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListPipelineExecutions>

=head1 ATTRIBUTES


=head2 CreatedAfter => Str

A filter that returns the pipeline executions that were created after a
specified time.



=head2 CreatedBefore => Str

A filter that returns the pipeline executions that were created before
a specified time.



=head2 MaxResults => Int

The maximum number of pipeline executions to return in the response.



=head2 NextToken => Str

If the result of the previous C<ListPipelineExecutions> request was
truncated, the response includes a C<NextToken>. To retrieve the next
set of pipeline executions, use the token in the next request.



=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline.



=head2 SortBy => Str

The field by which to sort results. The default is C<CreatedTime>.

Valid values are: C<"CreationTime">, C<"PipelineExecutionArn">

=head2 SortOrder => Str

The sort order for results.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPipelineExecutions in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

