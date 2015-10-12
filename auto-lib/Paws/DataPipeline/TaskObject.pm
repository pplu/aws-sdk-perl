package Paws::DataPipeline::TaskObject;
  use Moose;
  has attemptId => (is => 'ro', isa => 'Str');
  has objects => (is => 'ro', isa => 'Paws::DataPipeline::PipelineObjectMap');
  has pipelineId => (is => 'ro', isa => 'Str');
  has taskId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::TaskObject

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataPipeline::TaskObject object:

  $service_obj->Method(Att1 => { attemptId => $value, ..., taskId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataPipeline::TaskObject object:

  $result = $service_obj->Method(...);
  $result->Att1->attemptId

=head1 ATTRIBUTES

=head2 attemptId => Str

  

The ID of the pipeline task attempt object. AWS Data Pipeline uses this
value to track how many times a task is attempted.










=head2 objects => Paws::DataPipeline::PipelineObjectMap

  

Connection information for the location where the task runner will
publish the output of the task.










=head2 pipelineId => Str

  

The ID of the pipeline that provided the task.










=head2 taskId => Str

  

An internal identifier for the task. This ID is passed to the
SetTaskStatus and ReportTaskProgress actions.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

