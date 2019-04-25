
package Paws::DataPipeline::ListPipelines;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'marker' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPipelines');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataPipeline::ListPipelinesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ListPipelines - Arguments for method ListPipelines on L<Paws::DataPipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPipelines on the
L<AWS Data Pipeline|Paws::DataPipeline> service. Use the attributes of this class
as arguments to method ListPipelines.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPipelines.

=head1 SYNOPSIS

    my $datapipeline = Paws->service('DataPipeline');
    my $ListPipelinesOutput = $datapipeline->ListPipelines(
      Marker => 'Mystring',    # OPTIONAL
    );

    # Results:
    my $HasMoreResults = $ListPipelinesOutput->HasMoreResults;
    my $Marker         = $ListPipelinesOutput->Marker;
    my $PipelineIdList = $ListPipelinesOutput->PipelineIdList;

    # Returns a L<Paws::DataPipeline::ListPipelinesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datapipeline/ListPipelines>

=head1 ATTRIBUTES


=head2 Marker => Str

The starting point for the results to be returned. For the first call,
this value should be empty. As long as there are more results, continue
to call C<ListPipelines> with the marker value from the previous call
to retrieve the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPipelines in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

