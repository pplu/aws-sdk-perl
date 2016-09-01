package Paws::CodePipeline::PipelineExecution;
  use Moose;
  has ArtifactRevisionInformations => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::ArtifactRevisionInformation]', xmlname => 'artifactRevisionInformations', request_name => 'artifactRevisionInformations', traits => ['Unwrapped','NameInRequest']);
  has PipelineExecutionId => (is => 'ro', isa => 'Str', xmlname => 'pipelineExecutionId', request_name => 'pipelineExecutionId', traits => ['Unwrapped','NameInRequest']);
  has PipelineName => (is => 'ro', isa => 'Str', xmlname => 'pipelineName', request_name => 'pipelineName', traits => ['Unwrapped','NameInRequest']);
  has PipelineVersion => (is => 'ro', isa => 'Int', xmlname => 'pipelineVersion', request_name => 'pipelineVersion', traits => ['Unwrapped','NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', request_name => 'status', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PipelineExecution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::PipelineExecution object:

  $service_obj->Method(Att1 => { ArtifactRevisionInformations => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::PipelineExecution object:

  $result = $service_obj->Method(...);
  $result->Att1->ArtifactRevisionInformations

=head1 DESCRIPTION

Represents information about an execution of a pipeline.

=head1 ATTRIBUTES


=head2 ArtifactRevisionInformations => ArrayRef[L<Paws::CodePipeline::ArtifactRevisionInformation>]

  A list of ArtifactRevisionInformation objects included in a pipeline
execution.


=head2 PipelineExecutionId => Str

  The ID of the pipeline execution.


=head2 PipelineName => Str

  The name of the pipeline that was executed.


=head2 PipelineVersion => Int

  The version number of the pipeline that was executed.


=head2 Status => Str

  The status of the pipeline execution.

=over

=item *

InProgress: The pipeline execution is currently running.

=item *

Succeeded: The pipeline execution completed successfully.

=item *

Superseded: While this pipeline execution was waiting for the next
stage to be completed, a newer pipeline execution caught up and
continued through the pipeline instead.

=item *

Failed: The pipeline did not complete successfully.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

