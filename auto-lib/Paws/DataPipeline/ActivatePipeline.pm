
package Paws::DataPipeline::ActivatePipeline;
  use Moose;
  has ParameterValues => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ParameterValue]', traits => ['NameInRequest'], request_name => 'parameterValues' );
  has PipelineId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineId' , required => 1);
  has StartTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTimestamp' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ActivatePipeline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataPipeline::ActivatePipelineOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ActivatePipeline - Arguments for method ActivatePipeline on L<Paws::DataPipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ActivatePipeline on the
L<AWS Data Pipeline|Paws::DataPipeline> service. Use the attributes of this class
as arguments to method ActivatePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ActivatePipeline.

=head1 SYNOPSIS

    my $datapipeline = Paws->service('DataPipeline');
    my $ActivatePipelineOutput = $datapipeline->ActivatePipeline(
      PipelineId      => 'Myid',
      ParameterValues => [
        {
          Id          => 'MyfieldNameString',     # min: 1, max: 256
          StringValue => 'MyfieldStringValue',    # max: 10240

        },
        ...
      ],                                          # OPTIONAL
      StartTimestamp => '1970-01-01T01:00:00',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datapipeline/ActivatePipeline>

=head1 ATTRIBUTES


=head2 ParameterValues => ArrayRef[L<Paws::DataPipeline::ParameterValue>]

A list of parameter values to pass to the pipeline at activation.



=head2 B<REQUIRED> PipelineId => Str

The ID of the pipeline.



=head2 StartTimestamp => Str

The date and time to resume the pipeline. By default, the pipeline
resumes from the last completed execution.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ActivatePipeline in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

