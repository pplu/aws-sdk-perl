package Paws::DataPipeline::TaskObject;
  use Moose;
  has AttemptId => (is => 'ro', isa => 'Str', request_name => 'attemptId', traits => ['NameInRequest']);
  has Objects => (is => 'ro', isa => 'Paws::DataPipeline::PipelineObjectMap', request_name => 'objects', traits => ['NameInRequest']);
  has PipelineId => (is => 'ro', isa => 'Str', request_name => 'pipelineId', traits => ['NameInRequest']);
  has TaskId => (is => 'ro', isa => 'Str', request_name => 'taskId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::TaskObject

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataPipeline::TaskObject object:

  $service_obj->Method(Att1 => { AttemptId => $value, ..., TaskId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataPipeline::TaskObject object:

  $result = $service_obj->Method(...);
  $result->Att1->AttemptId

=head1 DESCRIPTION

Contains information about a pipeline task that is assigned to a task
runner.

=head1 ATTRIBUTES


=head2 AttemptId => Str

  The ID of the pipeline task attempt object. AWS Data Pipeline uses this
value to track how many times a task is attempted.


=head2 Objects => L<Paws::DataPipeline::PipelineObjectMap>

  Connection information for the location where the task runner will
publish the output of the task.


=head2 PipelineId => Str

  The ID of the pipeline that provided the task.


=head2 TaskId => Str

  An internal identifier for the task. This ID is passed to the
SetTaskStatus and ReportTaskProgress actions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

