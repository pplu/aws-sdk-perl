
use Paws::API;


package Paws::DataPipeline {
  use Moose;
  sub service { 'datapipeline' }
  sub version { '2012-10-29' }
  sub target_prefix { 'DataPipeline' }
  sub json_version { "1.1" }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub ActivatePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataPipeline::ActivatePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataPipeline::AddTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataPipeline::CreatePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeactivatePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataPipeline::DeactivatePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataPipeline::DeletePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeObjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataPipeline::DescribeObjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePipelines {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataPipeline::DescribePipelines', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EvaluateExpression {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataPipeline::EvaluateExpression', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPipelineDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataPipeline::GetPipelineDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPipelines {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataPipeline::ListPipelines', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PollForTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataPipeline::PollForTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPipelineDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataPipeline::PutPipelineDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub QueryObjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataPipeline::QueryObjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataPipeline::RemoveTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReportTaskProgress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataPipeline::ReportTaskProgress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReportTaskRunnerHeartbeat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataPipeline::ReportTaskRunnerHeartbeat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataPipeline::SetStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetTaskStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataPipeline::SetTaskStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ValidatePipelineDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DataPipeline::ValidatePipelineDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline - Perl Interface to AWS AWS Data Pipeline

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



AWS Data Pipeline configures and manages a data-driven workflow called
a pipeline. AWS Data Pipeline handles the details of scheduling and
ensuring that data dependencies are met so that your application can
focus on processing the data.

AWS Data Pipeline provides a JAR implementation of a task runner called
AWS Data Pipeline Task Runner. AWS Data Pipeline Task Runner provides
logic for common data management scenarios, such as performing database
queries and running data analysis using Amazon Elastic MapReduce
(Amazon EMR). You can use AWS Data Pipeline Task Runner as your task
runner, or you can write your own task runner to provide custom data
management.

AWS Data Pipeline implements two main sets of functionality. Use the
first set to create a pipeline and define data sources, schedules,
dependencies, and the transforms to be performed on the data. Use the
second set in your task runner application to receive the next task
ready for processing. The logic for performing the task, such as
querying the data, running data analysis, or converting the data from
one format to another, is contained within the task runner. The task
runner performs the task assigned to it by the web service, reporting
progress to the web service as it does so. When the task is done, the
task runner reports the final success or failure of the task to the web
service.










=head1 METHODS

=head2 ActivatePipeline()

  Arguments described in: L<Paws::DataPipeline::ActivatePipeline>

  Returns: L<Paws::DataPipeline::ActivatePipelineOutput>

  

Validates the specified pipeline and starts processing pipeline tasks.
If the pipeline does not pass validation, activation fails.

If you need to pause the pipeline to investigate an issue with a
component, such as a data source or script, call DeactivatePipeline.

To activate a finished pipeline, modify the end date for the pipeline
and then activate it.











=head2 AddTags()

  Arguments described in: L<Paws::DataPipeline::AddTags>

  Returns: L<Paws::DataPipeline::AddTagsOutput>

  

Adds or modifies tags for the specified pipeline.











=head2 CreatePipeline()

  Arguments described in: L<Paws::DataPipeline::CreatePipeline>

  Returns: L<Paws::DataPipeline::CreatePipelineOutput>

  

Creates a new, empty pipeline. Use PutPipelineDefinition to populate
the pipeline.











=head2 DeactivatePipeline()

  Arguments described in: L<Paws::DataPipeline::DeactivatePipeline>

  Returns: L<Paws::DataPipeline::DeactivatePipelineOutput>

  

Deactivates the specified running pipeline. The pipeline is set to the
C<DEACTIVATING> state until the deactivation process completes.

To resume a deactivated pipeline, use ActivatePipeline. By default, the
pipeline resumes from the last completed execution. Optionally, you can
specify the date and time to resume the pipeline.











=head2 DeletePipeline()

  Arguments described in: L<Paws::DataPipeline::DeletePipeline>

  Returns: nothing

  

Deletes a pipeline, its pipeline definition, and its run history. AWS
Data Pipeline attempts to cancel instances associated with the pipeline
that are currently being processed by task runners.

Deleting a pipeline cannot be undone. You cannot query or restore a
deleted pipeline. To temporarily pause a pipeline instead of deleting
it, call SetStatus with the status set to C<PAUSE> on individual
components. Components that are paused by SetStatus can be resumed.











=head2 DescribeObjects()

  Arguments described in: L<Paws::DataPipeline::DescribeObjects>

  Returns: L<Paws::DataPipeline::DescribeObjectsOutput>

  

Gets the object definitions for a set of objects associated with the
pipeline. Object definitions are composed of a set of fields that
define the properties of the object.











=head2 DescribePipelines()

  Arguments described in: L<Paws::DataPipeline::DescribePipelines>

  Returns: L<Paws::DataPipeline::DescribePipelinesOutput>

  

Retrieves metadata about one or more pipelines. The information
retrieved includes the name of the pipeline, the pipeline identifier,
its current state, and the user account that owns the pipeline. Using
account credentials, you can retrieve metadata about pipelines that you
or your IAM users have created. If you are using an IAM user account,
you can retrieve metadata about only those pipelines for which you have
read permissions.

To retrieve the full pipeline definition instead of metadata about the
pipeline, call GetPipelineDefinition.











=head2 EvaluateExpression()

  Arguments described in: L<Paws::DataPipeline::EvaluateExpression>

  Returns: L<Paws::DataPipeline::EvaluateExpressionOutput>

  

Task runners call C<EvaluateExpression> to evaluate a string in the
context of the specified object. For example, a task runner can
evaluate SQL queries stored in Amazon S3.











=head2 GetPipelineDefinition()

  Arguments described in: L<Paws::DataPipeline::GetPipelineDefinition>

  Returns: L<Paws::DataPipeline::GetPipelineDefinitionOutput>

  

Gets the definition of the specified pipeline. You can call
C<GetPipelineDefinition> to retrieve the pipeline definition that you
provided using PutPipelineDefinition.











=head2 ListPipelines()

  Arguments described in: L<Paws::DataPipeline::ListPipelines>

  Returns: L<Paws::DataPipeline::ListPipelinesOutput>

  

Lists the pipeline identifiers for all active pipelines that you have
permission to access.











=head2 PollForTask()

  Arguments described in: L<Paws::DataPipeline::PollForTask>

  Returns: L<Paws::DataPipeline::PollForTaskOutput>

  

Task runners call C<PollForTask> to receive a task to perform from AWS
Data Pipeline. The task runner specifies which tasks it can perform by
setting a value for the C<workerGroup> parameter. The task returned can
come from any of the pipelines that match the C<workerGroup> value
passed in by the task runner and that was launched using the IAM user
credentials specified by the task runner.

If tasks are ready in the work queue, C<PollForTask> returns a response
immediately. If no tasks are available in the queue, C<PollForTask>
uses long-polling and holds on to a poll connection for up to a 90
seconds, during which time the first newly scheduled task is handed to
the task runner. To accomodate this, set the socket timeout in your
task runner to 90 seconds. The task runner should not call
C<PollForTask> again on the same C<workerGroup> until it receives a
response, and this can take up to 90 seconds.











=head2 PutPipelineDefinition()

  Arguments described in: L<Paws::DataPipeline::PutPipelineDefinition>

  Returns: L<Paws::DataPipeline::PutPipelineDefinitionOutput>

  

Adds tasks, schedules, and preconditions to the specified pipeline. You
can use C<PutPipelineDefinition> to populate a new pipeline.

C<PutPipelineDefinition> also validates the configuration as it adds it
to the pipeline. Changes to the pipeline are saved unless one of the
following three validation errors exists in the pipeline.

=over

=item 1. An object is missing a name or identifier field.

=item 2. A string or reference field is empty.

=item 3. The number of objects in the pipeline exceeds the maximum
allowed objects.

=item 4. The pipeline is in a FINISHED state.

=back

Pipeline object definitions are passed to the C<PutPipelineDefinition>
action and returned by the GetPipelineDefinition action.











=head2 QueryObjects()

  Arguments described in: L<Paws::DataPipeline::QueryObjects>

  Returns: L<Paws::DataPipeline::QueryObjectsOutput>

  

Queries the specified pipeline for the names of objects that match the
specified set of conditions.











=head2 RemoveTags()

  Arguments described in: L<Paws::DataPipeline::RemoveTags>

  Returns: L<Paws::DataPipeline::RemoveTagsOutput>

  

Removes existing tags from the specified pipeline.











=head2 ReportTaskProgress()

  Arguments described in: L<Paws::DataPipeline::ReportTaskProgress>

  Returns: L<Paws::DataPipeline::ReportTaskProgressOutput>

  

Task runners call C<ReportTaskProgress> when assigned a task to
acknowledge that it has the task. If the web service does not receive
this acknowledgement within 2 minutes, it assigns the task in a
subsequent PollForTask call. After this initial acknowledgement, the
task runner only needs to report progress every 15 minutes to maintain
its ownership of the task. You can change this reporting time from 15
minutes by specifying a C<reportProgressTimeout> field in your
pipeline.

If a task runner does not report its status after 5 minutes, AWS Data
Pipeline assumes that the task runner is unable to process the task and
reassigns the task in a subsequent response to PollForTask. Task
runners should call C<ReportTaskProgress> every 60 seconds.











=head2 ReportTaskRunnerHeartbeat()

  Arguments described in: L<Paws::DataPipeline::ReportTaskRunnerHeartbeat>

  Returns: L<Paws::DataPipeline::ReportTaskRunnerHeartbeatOutput>

  

Task runners call C<ReportTaskRunnerHeartbeat> every 15 minutes to
indicate that they are operational. If the AWS Data Pipeline Task
Runner is launched on a resource managed by AWS Data Pipeline, the web
service can use this call to detect when the task runner application
has failed and restart a new instance.











=head2 SetStatus()

  Arguments described in: L<Paws::DataPipeline::SetStatus>

  Returns: nothing

  

Requests that the status of the specified physical or logical pipeline
objects be updated in the specified pipeline. This update might not
occur immediately, but is eventually consistent. The status that can be
set depends on the type of object (for example, DataNode or Activity).
You cannot perform this operation on C<FINISHED> pipelines and
attempting to do so returns C<InvalidRequestException>.











=head2 SetTaskStatus()

  Arguments described in: L<Paws::DataPipeline::SetTaskStatus>

  Returns: L<Paws::DataPipeline::SetTaskStatusOutput>

  

Task runners call C<SetTaskStatus> to notify AWS Data Pipeline that a
task is completed and provide information about the final status. A
task runner makes this call regardless of whether the task was
sucessful. A task runner does not need to call C<SetTaskStatus> for
tasks that are canceled by the web service during a call to
ReportTaskProgress.











=head2 ValidatePipelineDefinition()

  Arguments described in: L<Paws::DataPipeline::ValidatePipelineDefinition>

  Returns: L<Paws::DataPipeline::ValidatePipelineDefinitionOutput>

  

Validates the specified pipeline definition to ensure that it is well
formed and can be run without error.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

