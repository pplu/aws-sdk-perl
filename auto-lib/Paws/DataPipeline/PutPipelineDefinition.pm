# Generated from json/callargs_class.tt

package Paws::DataPipeline::PutPipelineDefinition;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DataPipeline::Types qw/DataPipeline_ParameterValue DataPipeline_ParameterObject DataPipeline_PipelineObject/;
  has ParameterObjects => (is => 'ro', isa => ArrayRef[DataPipeline_ParameterObject], predicate => 1);
  has ParameterValues => (is => 'ro', isa => ArrayRef[DataPipeline_ParameterValue], predicate => 1);
  has PipelineId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PipelineObjects => (is => 'ro', isa => ArrayRef[DataPipeline_PipelineObject], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutPipelineDefinition');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DataPipeline::PutPipelineDefinitionOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ParameterObjects' => {
                                       'class' => 'Paws::DataPipeline::ParameterObject',
                                       'type' => 'ArrayRef[DataPipeline_ParameterObject]'
                                     },
               'ParameterValues' => {
                                      'class' => 'Paws::DataPipeline::ParameterValue',
                                      'type' => 'ArrayRef[DataPipeline_ParameterValue]'
                                    },
               'PipelineObjects' => {
                                      'class' => 'Paws::DataPipeline::PipelineObject',
                                      'type' => 'ArrayRef[DataPipeline_PipelineObject]'
                                    },
               'PipelineId' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'ParameterObjects' => 'parameterObjects',
                       'ParameterValues' => 'parameterValues',
                       'PipelineObjects' => 'pipelineObjects',
                       'PipelineId' => 'pipelineId'
                     },
  'IsRequired' => {
                    'PipelineObjects' => 1,
                    'PipelineId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::PutPipelineDefinition - Arguments for method PutPipelineDefinition on L<Paws::DataPipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutPipelineDefinition on the
L<AWS Data Pipeline|Paws::DataPipeline> service. Use the attributes of this class
as arguments to method PutPipelineDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutPipelineDefinition.

=head1 SYNOPSIS

    my $datapipeline = Paws->service('DataPipeline');
    my $PutPipelineDefinitionOutput = $datapipeline->PutPipelineDefinition(
      PipelineId      => 'Myid',
      PipelineObjects => [
        {
          Fields => [
            {
              Key         => 'MyfieldNameString',     # min: 1, max: 256
              RefValue    => 'MyfieldNameString',     # min: 1, max: 256
              StringValue => 'MyfieldStringValue',    # max: 10240; OPTIONAL
            },
            ...
          ],
          Id   => 'Myid',                             # min: 1, max: 1024
          Name => 'Myid',                             # min: 1, max: 1024

        },
        ...
      ],
      ParameterObjects => [
        {
          Attributes => [
            {
              Key         => 'MyattributeNameString',     # min: 1, max: 256
              StringValue => 'MyattributeValueString',    # max: 10240

            },
            ...
          ],
          Id => 'MyfieldNameString',                      # min: 1, max: 256

        },
        ...
      ],                                                  # OPTIONAL
      ParameterValues => [
        {
          Id          => 'MyfieldNameString',             # min: 1, max: 256
          StringValue => 'MyfieldStringValue',            # max: 10240; OPTIONAL

        },
        ...
      ],                                                  # OPTIONAL
    );

    # Results:
    my $Errored            = $PutPipelineDefinitionOutput->Errored;
    my $ValidationErrors   = $PutPipelineDefinitionOutput->ValidationErrors;
    my $ValidationWarnings = $PutPipelineDefinitionOutput->ValidationWarnings;

    # Returns a L<Paws::DataPipeline::PutPipelineDefinitionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datapipeline/PutPipelineDefinition>

=head1 ATTRIBUTES


=head2 ParameterObjects => ArrayRef[DataPipeline_ParameterObject]

The parameter objects used with the pipeline.



=head2 ParameterValues => ArrayRef[DataPipeline_ParameterValue]

The parameter values used with the pipeline.



=head2 B<REQUIRED> PipelineId => Str

The ID of the pipeline.



=head2 B<REQUIRED> PipelineObjects => ArrayRef[DataPipeline_PipelineObject]

The objects that define the pipeline. These objects overwrite the
existing pipeline definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutPipelineDefinition in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

