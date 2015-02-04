
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
    return $self->caller->do_call('Paws::DataPipeline::ActivatePipeline', @_);
  }
  sub CreatePipeline {
    my $self = shift;
    return $self->caller->do_call('Paws::DataPipeline::CreatePipeline', @_);
  }
  sub DeletePipeline {
    my $self = shift;
    return $self->caller->do_call('Paws::DataPipeline::DeletePipeline', @_);
  }
  sub DescribeObjects {
    my $self = shift;
    return $self->caller->do_call('Paws::DataPipeline::DescribeObjects', @_);
  }
  sub DescribePipelines {
    my $self = shift;
    return $self->caller->do_call('Paws::DataPipeline::DescribePipelines', @_);
  }
  sub EvaluateExpression {
    my $self = shift;
    return $self->caller->do_call('Paws::DataPipeline::EvaluateExpression', @_);
  }
  sub GetPipelineDefinition {
    my $self = shift;
    return $self->caller->do_call('Paws::DataPipeline::GetPipelineDefinition', @_);
  }
  sub ListPipelines {
    my $self = shift;
    return $self->caller->do_call('Paws::DataPipeline::ListPipelines', @_);
  }
  sub PollForTask {
    my $self = shift;
    return $self->caller->do_call('Paws::DataPipeline::PollForTask', @_);
  }
  sub PutPipelineDefinition {
    my $self = shift;
    return $self->caller->do_call('Paws::DataPipeline::PutPipelineDefinition', @_);
  }
  sub QueryObjects {
    my $self = shift;
    return $self->caller->do_call('Paws::DataPipeline::QueryObjects', @_);
  }
  sub ReportTaskProgress {
    my $self = shift;
    return $self->caller->do_call('Paws::DataPipeline::ReportTaskProgress', @_);
  }
  sub ReportTaskRunnerHeartbeat {
    my $self = shift;
    return $self->caller->do_call('Paws::DataPipeline::ReportTaskRunnerHeartbeat', @_);
  }
  sub SetStatus {
    my $self = shift;
    return $self->caller->do_call('Paws::DataPipeline::SetStatus', @_);
  }
  sub SetTaskStatus {
    my $self = shift;
    return $self->caller->do_call('Paws::DataPipeline::SetTaskStatus', @_);
  }
  sub ValidatePipelineDefinition {
    my $self = shift;
    return $self->caller->do_call('Paws::DataPipeline::ValidatePipelineDefinition', @_);
  }
  sub DescribeAllObjects {
    my $self = shift;

    my $result = $self->DescribeObjects(@_);
    my $array = [];
    push @$array, @{ $result->pipelineObjects };

    while ($result->marker) {
      $result = $self->DescribeObjects(@_, marker => $result->marker);
      push @$array, @{ $result->pipelineObjects };
    }

    return 'Paws::DataPipeline::DescribeObjects'->_returns->new(pipelineObjects => $array);
  }
  sub ListAllPipelines {
    my $self = shift;

    my $result = $self->ListPipelines(@_);
    my $array = [];
    push @$array, @{ $result->pipelineIdList };

    while ($result->marker) {
      $result = $self->ListPipelines(@_, marker => $result->marker);
      push @$array, @{ $result->pipelineIdList };
    }

    return 'Paws::DataPipeline::ListPipelines'->_returns->new(pipelineIdList => $array);
  }
  sub QueryAllObjects {
    my $self = shift;

    my $result = $self->QueryObjects(@_);
    my $array = [];
    push @$array, @{ $result->ids };

    while ($result->marker) {
      $result = $self->QueryObjects(@_, marker => $result->marker);
      push @$array, @{ $result->ids };
    }

    return 'Paws::DataPipeline::QueryObjects'->_returns->new(ids => $array);
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



AWS Data Pipeline is a web service that configures and manages a
data-driven workflow called a pipeline. AWS Data Pipeline handles the
details of scheduling and ensuring that data dependencies are met so
your application can focus on processing the data.

The AWS Data Pipeline SDKs and CLI implements two main sets of
functionality. The first set of actions configure the pipeline in the
web service. You perform these actions to create a pipeline and define
data sources, schedules, dependencies, and the transforms to be
performed on the data.

The second set of actions are used by a task runner application that
calls the AWS Data Pipeline API to receive the next task ready for
processing. The logic for performing the task, such as querying the
data, running data analysis, or converting the data from one format to
another, is contained within the task runner. The task runner performs
the task assigned to it by the web service, reporting progress to the
web service as it does so. When the task is done, the task runner
reports the final success or failure of the task to the web service.

AWS Data Pipeline provides a JAR implementation of a task runner called
AWS Data Pipeline Task Runner. AWS Data Pipeline Task Runner provides
logic for common data management scenarios, such as performing database
queries and running data analysis using Amazon Elastic MapReduce
(Amazon EMR). You can use AWS Data Pipeline Task Runner as your task
runner, or you can write your own task runner to provide custom data
management.










=head1 METHODS

=head2 ActivatePipeline()

  Arguments described in: L<Paws::DataPipeline::ActivatePipeline>

  Returns: L<Paws::DataPipeline::ActivatePipelineOutput>

  

Validates a pipeline and initiates processing. If the pipeline does not
pass validation, activation fails. You cannot perform this operation on
FINISHED pipelines and attempting to do so will return an
InvalidRequestException.

Call this action to start processing pipeline tasks of a pipeline
you've created using the CreatePipeline and PutPipelineDefinition
actions. A pipeline cannot be modified after it has been successfully
activated.











=head2 CreatePipeline()

  Arguments described in: L<Paws::DataPipeline::CreatePipeline>

  Returns: L<Paws::DataPipeline::CreatePipelineOutput>

  

Creates a new empty pipeline. When this action succeeds, you can then
use the PutPipelineDefinition action to populate the pipeline.











=head2 DeletePipeline()

  Arguments described in: L<Paws::DataPipeline::DeletePipeline>

  Returns: nothing

  

Permanently deletes a pipeline, its pipeline definition and its run
history. You cannot query or restore a deleted pipeline. AWS Data
Pipeline will attempt to cancel instances associated with the pipeline
that are currently being processed by task runners. Deleting a pipeline
cannot be undone.

To temporarily pause a pipeline instead of deleting it, call SetStatus
with the status set to Pause on individual components. Components that
are paused by SetStatus can be resumed.











=head2 DescribeObjects()

  Arguments described in: L<Paws::DataPipeline::DescribeObjects>

  Returns: L<Paws::DataPipeline::DescribeObjectsOutput>

  

Returns the object definitions for a set of objects associated with the
pipeline. Object definitions are composed of a set of fields that
define the properties of the object.











=head2 DescribePipelines()

  Arguments described in: L<Paws::DataPipeline::DescribePipelines>

  Returns: L<Paws::DataPipeline::DescribePipelinesOutput>

  

Retrieve metadata about one or more pipelines. The information
retrieved includes the name of the pipeline, the pipeline identifier,
its current state, and the user account that owns the pipeline. Using
account credentials, you can retrieve metadata about pipelines that you
or your IAM users have created. If you are using an IAM user account,
you can retrieve metadata about only those pipelines you have read
permission for.

To retrieve the full pipeline definition instead of metadata about the
pipeline, call the GetPipelineDefinition action.











=head2 EvaluateExpression()

  Arguments described in: L<Paws::DataPipeline::EvaluateExpression>

  Returns: L<Paws::DataPipeline::EvaluateExpressionOutput>

  

Evaluates a string in the context of a specified object. A task runner
can use this action to evaluate SQL queries stored in Amazon S3.











=head2 GetPipelineDefinition()

  Arguments described in: L<Paws::DataPipeline::GetPipelineDefinition>

  Returns: L<Paws::DataPipeline::GetPipelineDefinitionOutput>

  

Returns the definition of the specified pipeline. You can call
GetPipelineDefinition to retrieve the pipeline definition you provided
using PutPipelineDefinition.











=head2 ListPipelines()

  Arguments described in: L<Paws::DataPipeline::ListPipelines>

  Returns: L<Paws::DataPipeline::ListPipelinesOutput>

  

Returns a list of pipeline identifiers for all active pipelines.
Identifiers are returned only for pipelines you have permission to
access.











=head2 PollForTask()

  Arguments described in: L<Paws::DataPipeline::PollForTask>

  Returns: L<Paws::DataPipeline::PollForTaskOutput>

  

Task runners call this action to receive a task to perform from AWS
Data Pipeline. The task runner specifies which tasks it can perform by
setting a value for the workerGroup parameter of the PollForTask call.
The task returned by PollForTask may come from any of the pipelines
that match the workerGroup value passed in by the task runner and that
was launched using the IAM user credentials specified by the task
runner.

If tasks are ready in the work queue, PollForTask returns a response
immediately. If no tasks are available in the queue, PollForTask uses
long-polling and holds on to a poll connection for up to a 90 seconds
during which time the first newly scheduled task is handed to the task
runner. To accomodate this, set the socket timeout in your task runner
to 90 seconds. The task runner should not call PollForTask again on the
same C<workerGroup> until it receives a response, and this may take up
to 90 seconds.











=head2 PutPipelineDefinition()

  Arguments described in: L<Paws::DataPipeline::PutPipelineDefinition>

  Returns: L<Paws::DataPipeline::PutPipelineDefinitionOutput>

  

Adds tasks, schedules, and preconditions that control the behavior of
the pipeline. You can use PutPipelineDefinition to populate a new
pipeline.

PutPipelineDefinition also validates the configuration as it adds it to
the pipeline. Changes to the pipeline are saved unless one of the
following three validation errors exists in the pipeline.

=over

=item 1. An object is missing a name or identifier field.

=item 2. A string or reference field is empty.

=item 3. The number of objects in the pipeline exceeds the maximum
allowed objects.

=item 4. The pipeline is in a FINISHED state.

=back

Pipeline object definitions are passed to the PutPipelineDefinition
action and returned by the GetPipelineDefinition action.











=head2 QueryObjects()

  Arguments described in: L<Paws::DataPipeline::QueryObjects>

  Returns: L<Paws::DataPipeline::QueryObjectsOutput>

  

Queries a pipeline for the names of objects that match a specified set
of conditions.

The objects returned by QueryObjects are paginated and then filtered by
the value you set for query. This means the action may return an empty
result set with a value set for marker. If C<HasMoreResults> is set to
C<True>, you should continue to call QueryObjects, passing in the
returned value for marker, until C<HasMoreResults> returns C<False>.











=head2 ReportTaskProgress()

  Arguments described in: L<Paws::DataPipeline::ReportTaskProgress>

  Returns: L<Paws::DataPipeline::ReportTaskProgressOutput>

  

Updates the AWS Data Pipeline service on the progress of the calling
task runner. When the task runner is assigned a task, it should call
ReportTaskProgress to acknowledge that it has the task within 2
minutes. If the web service does not recieve this acknowledgement
within the 2 minute window, it will assign the task in a subsequent
PollForTask call. After this initial acknowledgement, the task runner
only needs to report progress every 15 minutes to maintain its
ownership of the task. You can change this reporting time from 15
minutes by specifying a C<reportProgressTimeout> field in your
pipeline. If a task runner does not report its status after 5 minutes,
AWS Data Pipeline will assume that the task runner is unable to process
the task and will reassign the task in a subsequent response to
PollForTask. task runners should call ReportTaskProgress every 60
seconds.











=head2 ReportTaskRunnerHeartbeat()

  Arguments described in: L<Paws::DataPipeline::ReportTaskRunnerHeartbeat>

  Returns: L<Paws::DataPipeline::ReportTaskRunnerHeartbeatOutput>

  

Task runners call ReportTaskRunnerHeartbeat every 15 minutes to
indicate that they are operational. In the case of AWS Data Pipeline
Task Runner launched on a resource managed by AWS Data Pipeline, the
web service can use this call to detect when the task runner
application has failed and restart a new instance.











=head2 SetStatus()

  Arguments described in: L<Paws::DataPipeline::SetStatus>

  Returns: nothing

  

Requests that the status of an array of physical or logical pipeline
objects be updated in the pipeline. This update may not occur
immediately, but is eventually consistent. The status that can be set
depends on the type of object, e.g. DataNode or Activity. You cannot
perform this operation on FINISHED pipelines and attempting to do so
will return an InvalidRequestException.











=head2 SetTaskStatus()

  Arguments described in: L<Paws::DataPipeline::SetTaskStatus>

  Returns: L<Paws::DataPipeline::SetTaskStatusOutput>

  

Notifies AWS Data Pipeline that a task is completed and provides
information about the final status. The task runner calls this action
regardless of whether the task was sucessful. The task runner does not
need to call SetTaskStatus for tasks that are canceled by the web
service during a call to ReportTaskProgress.











=head2 ValidatePipelineDefinition()

  Arguments described in: L<Paws::DataPipeline::ValidatePipelineDefinition>

  Returns: L<Paws::DataPipeline::ValidatePipelineDefinitionOutput>

  

Tests the pipeline definition with a set of validation checks to ensure
that it is well formed and can run without error.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

