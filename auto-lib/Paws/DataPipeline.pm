package Paws::DataPipeline;
  use Moose;
  sub service { 'datapipeline' }
  sub signing_name { 'datapipeline' }
  sub version { '2012-10-29' }
  sub target_prefix { 'DataPipeline' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
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
  
  sub DescribeAllObjects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeObjects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->hasMoreResults) {
        $next_result = $self->DescribeObjects(@_, marker => $next_result->marker);
        push @{ $result->pipelineObjects }, @{ $next_result->pipelineObjects };
      }
      return $result;
    } else {
      while ($result->hasMoreResults) {
        $callback->($_ => 'pipelineObjects') foreach (@{ $result->pipelineObjects });
        $result = $self->DescribeObjects(@_, marker => $result->marker);
      }
      $callback->($_ => 'pipelineObjects') foreach (@{ $result->pipelineObjects });
    }

    return undef
  }
  sub ListAllPipelines {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPipelines(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->hasMoreResults) {
        $next_result = $self->ListPipelines(@_, marker => $next_result->marker);
        push @{ $result->pipelineIdList }, @{ $next_result->pipelineIdList };
      }
      return $result;
    } else {
      while ($result->hasMoreResults) {
        $callback->($_ => 'pipelineIdList') foreach (@{ $result->pipelineIdList });
        $result = $self->ListPipelines(@_, marker => $result->marker);
      }
      $callback->($_ => 'pipelineIdList') foreach (@{ $result->pipelineIdList });
    }

    return undef
  }
  sub QueryAllObjects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->QueryObjects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->hasMoreResults) {
        $next_result = $self->QueryObjects(@_, marker => $next_result->marker);
        push @{ $result->ids }, @{ $next_result->ids };
      }
      return $result;
    } else {
      while ($result->hasMoreResults) {
        $callback->($_ => 'ids') foreach (@{ $result->ids });
        $result = $self->QueryObjects(@_, marker => $result->marker);
      }
      $callback->($_ => 'ids') foreach (@{ $result->ids });
    }

    return undef
  }


  sub operations { qw/ActivatePipeline AddTags CreatePipeline DeactivatePipeline DeletePipeline DescribeObjects DescribePipelines EvaluateExpression GetPipelineDefinition ListPipelines PollForTask PutPipelineDefinition QueryObjects RemoveTags ReportTaskProgress ReportTaskRunnerHeartbeat SetStatus SetTaskStatus ValidatePipelineDefinition / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline - Perl Interface to AWS AWS Data Pipeline

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('DataPipeline');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

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

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datapipeline-2012-10-29>


=head1 METHODS

=head2 ActivatePipeline

=over

=item PipelineId => Str

=item [ParameterValues => ArrayRef[L<Paws::DataPipeline::ParameterValue>]]

=item [StartTimestamp => Str]


=back

Each argument is described in detail in: L<Paws::DataPipeline::ActivatePipeline>

Returns: a L<Paws::DataPipeline::ActivatePipelineOutput> instance

Validates the specified pipeline and starts processing pipeline tasks.
If the pipeline does not pass validation, activation fails.

If you need to pause the pipeline to investigate an issue with a
component, such as a data source or script, call DeactivatePipeline.

To activate a finished pipeline, modify the end date for the pipeline
and then activate it.


=head2 AddTags

=over

=item PipelineId => Str

=item Tags => ArrayRef[L<Paws::DataPipeline::Tag>]


=back

Each argument is described in detail in: L<Paws::DataPipeline::AddTags>

Returns: a L<Paws::DataPipeline::AddTagsOutput> instance

Adds or modifies tags for the specified pipeline.


=head2 CreatePipeline

=over

=item Name => Str

=item UniqueId => Str

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::DataPipeline::Tag>]]


=back

Each argument is described in detail in: L<Paws::DataPipeline::CreatePipeline>

Returns: a L<Paws::DataPipeline::CreatePipelineOutput> instance

Creates a new, empty pipeline. Use PutPipelineDefinition to populate
the pipeline.


=head2 DeactivatePipeline

=over

=item PipelineId => Str

=item [CancelActive => Bool]


=back

Each argument is described in detail in: L<Paws::DataPipeline::DeactivatePipeline>

Returns: a L<Paws::DataPipeline::DeactivatePipelineOutput> instance

Deactivates the specified running pipeline. The pipeline is set to the
C<DEACTIVATING> state until the deactivation process completes.

To resume a deactivated pipeline, use ActivatePipeline. By default, the
pipeline resumes from the last completed execution. Optionally, you can
specify the date and time to resume the pipeline.


=head2 DeletePipeline

=over

=item PipelineId => Str


=back

Each argument is described in detail in: L<Paws::DataPipeline::DeletePipeline>

Returns: nothing

Deletes a pipeline, its pipeline definition, and its run history. AWS
Data Pipeline attempts to cancel instances associated with the pipeline
that are currently being processed by task runners.

Deleting a pipeline cannot be undone. You cannot query or restore a
deleted pipeline. To temporarily pause a pipeline instead of deleting
it, call SetStatus with the status set to C<PAUSE> on individual
components. Components that are paused by SetStatus can be resumed.


=head2 DescribeObjects

=over

=item ObjectIds => ArrayRef[Str|Undef]

=item PipelineId => Str

=item [EvaluateExpressions => Bool]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::DataPipeline::DescribeObjects>

Returns: a L<Paws::DataPipeline::DescribeObjectsOutput> instance

Gets the object definitions for a set of objects associated with the
pipeline. Object definitions are composed of a set of fields that
define the properties of the object.


=head2 DescribePipelines

=over

=item PipelineIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::DataPipeline::DescribePipelines>

Returns: a L<Paws::DataPipeline::DescribePipelinesOutput> instance

Retrieves metadata about one or more pipelines. The information
retrieved includes the name of the pipeline, the pipeline identifier,
its current state, and the user account that owns the pipeline. Using
account credentials, you can retrieve metadata about pipelines that you
or your IAM users have created. If you are using an IAM user account,
you can retrieve metadata about only those pipelines for which you have
read permissions.

To retrieve the full pipeline definition instead of metadata about the
pipeline, call GetPipelineDefinition.


=head2 EvaluateExpression

=over

=item Expression => Str

=item ObjectId => Str

=item PipelineId => Str


=back

Each argument is described in detail in: L<Paws::DataPipeline::EvaluateExpression>

Returns: a L<Paws::DataPipeline::EvaluateExpressionOutput> instance

Task runners call C<EvaluateExpression> to evaluate a string in the
context of the specified object. For example, a task runner can
evaluate SQL queries stored in Amazon S3.


=head2 GetPipelineDefinition

=over

=item PipelineId => Str

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::DataPipeline::GetPipelineDefinition>

Returns: a L<Paws::DataPipeline::GetPipelineDefinitionOutput> instance

Gets the definition of the specified pipeline. You can call
C<GetPipelineDefinition> to retrieve the pipeline definition that you
provided using PutPipelineDefinition.


=head2 ListPipelines

=over

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::DataPipeline::ListPipelines>

Returns: a L<Paws::DataPipeline::ListPipelinesOutput> instance

Lists the pipeline identifiers for all active pipelines that you have
permission to access.


=head2 PollForTask

=over

=item WorkerGroup => Str

=item [Hostname => Str]

=item [InstanceIdentity => L<Paws::DataPipeline::InstanceIdentity>]


=back

Each argument is described in detail in: L<Paws::DataPipeline::PollForTask>

Returns: a L<Paws::DataPipeline::PollForTaskOutput> instance

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


=head2 PutPipelineDefinition

=over

=item PipelineId => Str

=item PipelineObjects => ArrayRef[L<Paws::DataPipeline::PipelineObject>]

=item [ParameterObjects => ArrayRef[L<Paws::DataPipeline::ParameterObject>]]

=item [ParameterValues => ArrayRef[L<Paws::DataPipeline::ParameterValue>]]


=back

Each argument is described in detail in: L<Paws::DataPipeline::PutPipelineDefinition>

Returns: a L<Paws::DataPipeline::PutPipelineDefinitionOutput> instance

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


=head2 QueryObjects

=over

=item PipelineId => Str

=item Sphere => Str

=item [Limit => Int]

=item [Marker => Str]

=item [Query => L<Paws::DataPipeline::Query>]


=back

Each argument is described in detail in: L<Paws::DataPipeline::QueryObjects>

Returns: a L<Paws::DataPipeline::QueryObjectsOutput> instance

Queries the specified pipeline for the names of objects that match the
specified set of conditions.


=head2 RemoveTags

=over

=item PipelineId => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::DataPipeline::RemoveTags>

Returns: a L<Paws::DataPipeline::RemoveTagsOutput> instance

Removes existing tags from the specified pipeline.


=head2 ReportTaskProgress

=over

=item TaskId => Str

=item [Fields => ArrayRef[L<Paws::DataPipeline::Field>]]


=back

Each argument is described in detail in: L<Paws::DataPipeline::ReportTaskProgress>

Returns: a L<Paws::DataPipeline::ReportTaskProgressOutput> instance

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


=head2 ReportTaskRunnerHeartbeat

=over

=item TaskrunnerId => Str

=item [Hostname => Str]

=item [WorkerGroup => Str]


=back

Each argument is described in detail in: L<Paws::DataPipeline::ReportTaskRunnerHeartbeat>

Returns: a L<Paws::DataPipeline::ReportTaskRunnerHeartbeatOutput> instance

Task runners call C<ReportTaskRunnerHeartbeat> every 15 minutes to
indicate that they are operational. If the AWS Data Pipeline Task
Runner is launched on a resource managed by AWS Data Pipeline, the web
service can use this call to detect when the task runner application
has failed and restart a new instance.


=head2 SetStatus

=over

=item ObjectIds => ArrayRef[Str|Undef]

=item PipelineId => Str

=item Status => Str


=back

Each argument is described in detail in: L<Paws::DataPipeline::SetStatus>

Returns: nothing

Requests that the status of the specified physical or logical pipeline
objects be updated in the specified pipeline. This update might not
occur immediately, but is eventually consistent. The status that can be
set depends on the type of object (for example, DataNode or Activity).
You cannot perform this operation on C<FINISHED> pipelines and
attempting to do so returns C<InvalidRequestException>.


=head2 SetTaskStatus

=over

=item TaskId => Str

=item TaskStatus => Str

=item [ErrorId => Str]

=item [ErrorMessage => Str]

=item [ErrorStackTrace => Str]


=back

Each argument is described in detail in: L<Paws::DataPipeline::SetTaskStatus>

Returns: a L<Paws::DataPipeline::SetTaskStatusOutput> instance

Task runners call C<SetTaskStatus> to notify AWS Data Pipeline that a
task is completed and provide information about the final status. A
task runner makes this call regardless of whether the task was
sucessful. A task runner does not need to call C<SetTaskStatus> for
tasks that are canceled by the web service during a call to
ReportTaskProgress.


=head2 ValidatePipelineDefinition

=over

=item PipelineId => Str

=item PipelineObjects => ArrayRef[L<Paws::DataPipeline::PipelineObject>]

=item [ParameterObjects => ArrayRef[L<Paws::DataPipeline::ParameterObject>]]

=item [ParameterValues => ArrayRef[L<Paws::DataPipeline::ParameterValue>]]


=back

Each argument is described in detail in: L<Paws::DataPipeline::ValidatePipelineDefinition>

Returns: a L<Paws::DataPipeline::ValidatePipelineDefinitionOutput> instance

Validates the specified pipeline definition to ensure that it is well
formed and can be run without error.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllObjects(sub { },ObjectIds => ArrayRef[Str|Undef], PipelineId => Str, [EvaluateExpressions => Bool, Marker => Str])

=head2 DescribeAllObjects(ObjectIds => ArrayRef[Str|Undef], PipelineId => Str, [EvaluateExpressions => Bool, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - pipelineObjects, passing the object as the first parameter, and the string 'pipelineObjects' as the second parameter 

If not, it will return a a L<Paws::DataPipeline::DescribeObjectsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPipelines(sub { },[Marker => Str])

=head2 ListAllPipelines([Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - pipelineIdList, passing the object as the first parameter, and the string 'pipelineIdList' as the second parameter 

If not, it will return a a L<Paws::DataPipeline::ListPipelinesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 QueryAllObjects(sub { },PipelineId => Str, Sphere => Str, [Limit => Int, Marker => Str, Query => L<Paws::DataPipeline::Query>])

=head2 QueryAllObjects(PipelineId => Str, Sphere => Str, [Limit => Int, Marker => Str, Query => L<Paws::DataPipeline::Query>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ids, passing the object as the first parameter, and the string 'ids' as the second parameter 

If not, it will return a a L<Paws::DataPipeline::QueryObjectsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

