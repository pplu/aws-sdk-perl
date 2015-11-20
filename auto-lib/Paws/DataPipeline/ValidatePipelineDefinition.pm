
package Paws::DataPipeline::ValidatePipelineDefinition;
  use Moose;
  has ParameterObjects => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ParameterObject]', traits => ['NameInRequest'], request_name => 'parameterObjects' );
  has ParameterValues => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ParameterValue]', traits => ['NameInRequest'], request_name => 'parameterValues' );
  has PipelineId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineId' , required => 1);
  has PipelineObjects => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::PipelineObject]', traits => ['NameInRequest'], request_name => 'pipelineObjects' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ValidatePipelineDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataPipeline::ValidatePipelineDefinitionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ValidatePipelineDefinition - Arguments for method ValidatePipelineDefinition on Paws::DataPipeline

=head1 DESCRIPTION

This class represents the parameters used for calling the method ValidatePipelineDefinition on the 
AWS Data Pipeline service. Use the attributes of this class
as arguments to method ValidatePipelineDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ValidatePipelineDefinition.

As an example:

  $service_obj->ValidatePipelineDefinition(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ParameterObjects => ArrayRef[L<Paws::DataPipeline::ParameterObject>]

  The parameter objects used with the pipeline.


=head2 ParameterValues => ArrayRef[L<Paws::DataPipeline::ParameterValue>]

  The parameter values used with the pipeline.


=head2 B<REQUIRED> PipelineId => Str

  The ID of the pipeline.


=head2 B<REQUIRED> PipelineObjects => ArrayRef[L<Paws::DataPipeline::PipelineObject>]

  The objects that define the pipeline changes to validate against the
pipeline.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ValidatePipelineDefinition in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

