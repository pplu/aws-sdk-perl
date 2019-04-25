
package Paws::DataPipeline::DescribePipelines;
  use Moose;
  has PipelineIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'pipelineIds' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePipelines');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataPipeline::DescribePipelinesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::DescribePipelines - Arguments for method DescribePipelines on L<Paws::DataPipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePipelines on the
L<AWS Data Pipeline|Paws::DataPipeline> service. Use the attributes of this class
as arguments to method DescribePipelines.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePipelines.

=head1 SYNOPSIS

    my $datapipeline = Paws->service('DataPipeline');
    my $DescribePipelinesOutput = $datapipeline->DescribePipelines(
      PipelineIds => [
        'Myid', ...    # min: 1, max: 1024
      ],

    );

    # Results:
    my $PipelineDescriptionList =
      $DescribePipelinesOutput->PipelineDescriptionList;

    # Returns a L<Paws::DataPipeline::DescribePipelinesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datapipeline/DescribePipelines>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineIds => ArrayRef[Str|Undef]

The IDs of the pipelines to describe. You can pass as many as 25
identifiers in a single call. To obtain pipeline IDs, call
ListPipelines.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePipelines in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

