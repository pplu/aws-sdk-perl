package Paws::CodePipeline::StageExecution;
  use Moose;
  has PipelineExecutionId => (is => 'ro', isa => 'Str', request_name => 'pipelineExecutionId', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::StageExecution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::StageExecution object:

  $service_obj->Method(Att1 => { PipelineExecutionId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::StageExecution object:

  $result = $service_obj->Method(...);
  $result->Att1->PipelineExecutionId

=head1 DESCRIPTION

Represents information about the run of a stage.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineExecutionId => Str

  The ID of the pipeline execution associated with the stage.


=head2 B<REQUIRED> Status => Str

  The status of the stage, or for a completed stage, the last status of
the stage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

