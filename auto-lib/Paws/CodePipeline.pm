package Paws::CodePipeline;
  use Moose;
  sub service { 'codepipeline' }
  sub version { '2015-07-09' }
  sub target_prefix { 'CodePipeline_20150709' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AcknowledgeJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::AcknowledgeJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AcknowledgeThirdPartyJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::AcknowledgeThirdPartyJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCustomActionType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::CreateCustomActionType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::CreatePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCustomActionType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::DeleteCustomActionType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::DeletePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableStageTransition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::DisableStageTransition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableStageTransition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::EnableStageTransition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::GetJobDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::GetPipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPipelineExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::GetPipelineExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPipelineState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::GetPipelineState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetThirdPartyJobDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::GetThirdPartyJobDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListActionTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::ListActionTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPipelineExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::ListPipelineExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPipelines {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::ListPipelines', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PollForJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::PollForJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PollForThirdPartyJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::PollForThirdPartyJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutActionRevision {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::PutActionRevision', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutApprovalResult {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::PutApprovalResult', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutJobFailureResult {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::PutJobFailureResult', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutJobSuccessResult {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::PutJobSuccessResult', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutThirdPartyJobFailureResult {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::PutThirdPartyJobFailureResult', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutThirdPartyJobSuccessResult {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::PutThirdPartyJobSuccessResult', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RetryStageExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::RetryStageExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartPipelineExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::StartPipelineExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::UpdatePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AcknowledgeJob AcknowledgeThirdPartyJob CreateCustomActionType CreatePipeline DeleteCustomActionType DeletePipeline DisableStageTransition EnableStageTransition GetJobDetails GetPipeline GetPipelineExecution GetPipelineState GetThirdPartyJobDetails ListActionTypes ListPipelineExecutions ListPipelines PollForJobs PollForThirdPartyJobs PutActionRevision PutApprovalResult PutJobFailureResult PutJobSuccessResult PutThirdPartyJobFailureResult PutThirdPartyJobSuccessResult RetryStageExecution StartPipelineExecution UpdatePipeline / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline - Perl Interface to AWS AWS CodePipeline

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CodePipeline');
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

AWS CodePipeline

B<Overview>

This is the AWS CodePipeline API Reference. This guide provides
descriptions of the actions and data types for AWS CodePipeline. Some
functionality for your pipeline is only configurable through the API.
For additional information, see the AWS CodePipeline User Guide
(http://docs.aws.amazon.com/codepipeline/latest/userguide/welcome.html).

You can use the AWS CodePipeline API to work with pipelines, stages,
actions, gates, and transitions, as described below.

I<Pipelines> are models of automated release processes. Each pipeline
is uniquely named, and consists of actions, gates, and stages.

You can work with pipelines by calling:

=over

=item *

CreatePipeline, which creates a uniquely-named pipeline.

=item *

DeletePipeline, which deletes the specified pipeline.

=item *

GetPipeline, which returns information about the pipeline structure and
pipeline metadata, including the pipeline Amazon Resource Name (ARN).

=item *

GetPipelineExecution, which returns information about a specific
execution of a pipeline.

=item *

GetPipelineState, which returns information about the current state of
the stages and actions of a pipeline.

=item *

ListPipelines, which gets a summary of all of the pipelines associated
with your account.

=item *

ListPipelineExecutions, which gets a summary of the most recent
executions for a pipeline.

=item *

StartPipelineExecution, which runs the the most recent revision of an
artifact through the pipeline.

=item *

UpdatePipeline, which updates a pipeline with edits or changes to the
structure of the pipeline.

=back

Pipelines include I<stages>, which are logical groupings of gates and
actions. Each stage contains one or more actions that must complete
before the next stage begins. A stage will result in success or
failure. If a stage fails, then the pipeline stops at that stage and
will remain stopped until either a new version of an artifact appears
in the source location, or a user takes action to re-run the most
recent artifact through the pipeline. You can call GetPipelineState,
which displays the status of a pipeline, including the status of stages
in the pipeline, or GetPipeline, which returns the entire structure of
the pipeline, including the stages of that pipeline. For more
information about the structure of stages and actions, also refer to
the AWS CodePipeline Pipeline Structure Reference
(http://docs.aws.amazon.com/codepipeline/latest/userguide/pipeline-structure.html).

Pipeline stages include I<actions>, which are categorized into
categories such as source or build actions performed within a stage of
a pipeline. For example, you can use a source action to import
artifacts into a pipeline from a source such as Amazon S3. Like stages,
you do not work with actions directly in most cases, but you do define
and interact with actions when working with pipeline operations such as
CreatePipeline and GetPipelineState.

Pipelines also include I<transitions>, which allow the transition of
artifacts from one stage to the next in a pipeline after the actions in
one stage complete.

You can work with transitions by calling:

=over

=item *

DisableStageTransition, which prevents artifacts from transitioning to
the next stage in a pipeline.

=item *

EnableStageTransition, which enables transition of artifacts between
stages in a pipeline.

=back

B<Using the API to integrate with AWS CodePipeline>

For third-party integrators or developers who want to create their own
integrations with AWS CodePipeline, the expected sequence varies from
the standard API user. In order to integrate with AWS CodePipeline,
developers will need to work with the following items:

B<Jobs>, which are instances of an action. For example, a job for a
source action might import a revision of an artifact from a source.

You can work with jobs by calling:

=over

=item *

AcknowledgeJob, which confirms whether a job worker has received the
specified job,

=item *

GetJobDetails, which returns the details of a job,

=item *

PollForJobs, which determines whether there are any jobs to act upon,

=item *

PutJobFailureResult, which provides details of a job failure, and

=item *

PutJobSuccessResult, which provides details of a job success.

=back

B<Third party jobs>, which are instances of an action created by a
partner action and integrated into AWS CodePipeline. Partner actions
are created by members of the AWS Partner Network.

You can work with third party jobs by calling:

=over

=item *

AcknowledgeThirdPartyJob, which confirms whether a job worker has
received the specified job,

=item *

GetThirdPartyJobDetails, which requests the details of a job for a
partner action,

=item *

PollForThirdPartyJobs, which determines whether there are any jobs to
act upon,

=item *

PutThirdPartyJobFailureResult, which provides details of a job failure,
and

=item *

PutThirdPartyJobSuccessResult, which provides details of a job success.

=back


=head1 METHODS

=head2 AcknowledgeJob

=over

=item JobId => Str

=item Nonce => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::AcknowledgeJob>

Returns: a L<Paws::CodePipeline::AcknowledgeJobOutput> instance

Returns information about a specified job and whether that job has been
received by the job worker. Only used for custom actions.


=head2 AcknowledgeThirdPartyJob

=over

=item ClientToken => Str

=item JobId => Str

=item Nonce => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::AcknowledgeThirdPartyJob>

Returns: a L<Paws::CodePipeline::AcknowledgeThirdPartyJobOutput> instance

Confirms a job worker has received the specified job. Only used for
partner actions.


=head2 CreateCustomActionType

=over

=item Category => Str

=item InputArtifactDetails => L<Paws::CodePipeline::ArtifactDetails>

=item OutputArtifactDetails => L<Paws::CodePipeline::ArtifactDetails>

=item Provider => Str

=item Version => Str

=item [ConfigurationProperties => ArrayRef[L<Paws::CodePipeline::ActionConfigurationProperty>]]

=item [Settings => L<Paws::CodePipeline::ActionTypeSettings>]


=back

Each argument is described in detail in: L<Paws::CodePipeline::CreateCustomActionType>

Returns: a L<Paws::CodePipeline::CreateCustomActionTypeOutput> instance

Creates a new custom action that can be used in all pipelines
associated with the AWS account. Only used for custom actions.


=head2 CreatePipeline

=over

=item Pipeline => L<Paws::CodePipeline::PipelineDeclaration>


=back

Each argument is described in detail in: L<Paws::CodePipeline::CreatePipeline>

Returns: a L<Paws::CodePipeline::CreatePipelineOutput> instance

Creates a pipeline.


=head2 DeleteCustomActionType

=over

=item Category => Str

=item Provider => Str

=item Version => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::DeleteCustomActionType>

Returns: nothing

Marks a custom action as deleted. PollForJobs for the custom action
will fail after the action is marked for deletion. Only used for custom
actions.

You cannot recreate a custom action after it has been deleted unless
you increase the version number of the action.


=head2 DeletePipeline

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::DeletePipeline>

Returns: nothing

Deletes the specified pipeline.


=head2 DisableStageTransition

=over

=item PipelineName => Str

=item Reason => Str

=item StageName => Str

=item TransitionType => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::DisableStageTransition>

Returns: nothing

Prevents artifacts in a pipeline from transitioning to the next stage
in the pipeline.


=head2 EnableStageTransition

=over

=item PipelineName => Str

=item StageName => Str

=item TransitionType => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::EnableStageTransition>

Returns: nothing

Enables artifacts in a pipeline to transition to a stage in a pipeline.


=head2 GetJobDetails

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::GetJobDetails>

Returns: a L<Paws::CodePipeline::GetJobDetailsOutput> instance

Returns information about a job. Only used for custom actions.

When this API is called, AWS CodePipeline returns temporary credentials
for the Amazon S3 bucket used to store artifacts for the pipeline, if
the action requires access to that Amazon S3 bucket for input or output
artifacts. Additionally, this API returns any secret values defined for
the action.


=head2 GetPipeline

=over

=item Name => Str

=item [Version => Int]


=back

Each argument is described in detail in: L<Paws::CodePipeline::GetPipeline>

Returns: a L<Paws::CodePipeline::GetPipelineOutput> instance

Returns the metadata, structure, stages, and actions of a pipeline. Can
be used to return the entire structure of a pipeline in JSON format,
which can then be modified and used to update the pipeline structure
with UpdatePipeline.


=head2 GetPipelineExecution

=over

=item PipelineExecutionId => Str

=item PipelineName => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::GetPipelineExecution>

Returns: a L<Paws::CodePipeline::GetPipelineExecutionOutput> instance

Returns information about an execution of a pipeline, including details
about artifacts, the pipeline execution ID, and the name, version, and
status of the pipeline.


=head2 GetPipelineState

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::GetPipelineState>

Returns: a L<Paws::CodePipeline::GetPipelineStateOutput> instance

Returns information about the state of a pipeline, including the stages
and actions.


=head2 GetThirdPartyJobDetails

=over

=item ClientToken => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::GetThirdPartyJobDetails>

Returns: a L<Paws::CodePipeline::GetThirdPartyJobDetailsOutput> instance

Requests the details of a job for a third party action. Only used for
partner actions.

When this API is called, AWS CodePipeline returns temporary credentials
for the Amazon S3 bucket used to store artifacts for the pipeline, if
the action requires access to that Amazon S3 bucket for input or output
artifacts. Additionally, this API returns any secret values defined for
the action.


=head2 ListActionTypes

=over

=item [ActionOwnerFilter => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodePipeline::ListActionTypes>

Returns: a L<Paws::CodePipeline::ListActionTypesOutput> instance

Gets a summary of all AWS CodePipeline action types associated with
your account.


=head2 ListPipelineExecutions

=over

=item PipelineName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodePipeline::ListPipelineExecutions>

Returns: a L<Paws::CodePipeline::ListPipelineExecutionsOutput> instance

Gets a summary of the most recent executions for a pipeline.


=head2 ListPipelines

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodePipeline::ListPipelines>

Returns: a L<Paws::CodePipeline::ListPipelinesOutput> instance

Gets a summary of all of the pipelines associated with your account.


=head2 PollForJobs

=over

=item ActionTypeId => L<Paws::CodePipeline::ActionTypeId>

=item [MaxBatchSize => Int]

=item [QueryParam => L<Paws::CodePipeline::QueryParamMap>]


=back

Each argument is described in detail in: L<Paws::CodePipeline::PollForJobs>

Returns: a L<Paws::CodePipeline::PollForJobsOutput> instance

Returns information about any jobs for AWS CodePipeline to act upon.

When this API is called, AWS CodePipeline returns temporary credentials
for the Amazon S3 bucket used to store artifacts for the pipeline, if
the action requires access to that Amazon S3 bucket for input or output
artifacts. Additionally, this API returns any secret values defined for
the action.


=head2 PollForThirdPartyJobs

=over

=item ActionTypeId => L<Paws::CodePipeline::ActionTypeId>

=item [MaxBatchSize => Int]


=back

Each argument is described in detail in: L<Paws::CodePipeline::PollForThirdPartyJobs>

Returns: a L<Paws::CodePipeline::PollForThirdPartyJobsOutput> instance

Determines whether there are any third party jobs for a job worker to
act on. Only used for partner actions.

When this API is called, AWS CodePipeline returns temporary credentials
for the Amazon S3 bucket used to store artifacts for the pipeline, if
the action requires access to that Amazon S3 bucket for input or output
artifacts.


=head2 PutActionRevision

=over

=item ActionName => Str

=item ActionRevision => L<Paws::CodePipeline::ActionRevision>

=item PipelineName => Str

=item StageName => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::PutActionRevision>

Returns: a L<Paws::CodePipeline::PutActionRevisionOutput> instance

Provides information to AWS CodePipeline about new revisions to a
source.


=head2 PutApprovalResult

=over

=item ActionName => Str

=item PipelineName => Str

=item Result => L<Paws::CodePipeline::ApprovalResult>

=item StageName => Str

=item Token => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::PutApprovalResult>

Returns: a L<Paws::CodePipeline::PutApprovalResultOutput> instance

Provides the response to a manual approval request to AWS CodePipeline.
Valid responses include Approved and Rejected.


=head2 PutJobFailureResult

=over

=item FailureDetails => L<Paws::CodePipeline::FailureDetails>

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::PutJobFailureResult>

Returns: nothing

Represents the failure of a job as returned to the pipeline by a job
worker. Only used for custom actions.


=head2 PutJobSuccessResult

=over

=item JobId => Str

=item [ContinuationToken => Str]

=item [CurrentRevision => L<Paws::CodePipeline::CurrentRevision>]

=item [ExecutionDetails => L<Paws::CodePipeline::ExecutionDetails>]


=back

Each argument is described in detail in: L<Paws::CodePipeline::PutJobSuccessResult>

Returns: nothing

Represents the success of a job as returned to the pipeline by a job
worker. Only used for custom actions.


=head2 PutThirdPartyJobFailureResult

=over

=item ClientToken => Str

=item FailureDetails => L<Paws::CodePipeline::FailureDetails>

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::PutThirdPartyJobFailureResult>

Returns: nothing

Represents the failure of a third party job as returned to the pipeline
by a job worker. Only used for partner actions.


=head2 PutThirdPartyJobSuccessResult

=over

=item ClientToken => Str

=item JobId => Str

=item [ContinuationToken => Str]

=item [CurrentRevision => L<Paws::CodePipeline::CurrentRevision>]

=item [ExecutionDetails => L<Paws::CodePipeline::ExecutionDetails>]


=back

Each argument is described in detail in: L<Paws::CodePipeline::PutThirdPartyJobSuccessResult>

Returns: nothing

Represents the success of a third party job as returned to the pipeline
by a job worker. Only used for partner actions.


=head2 RetryStageExecution

=over

=item PipelineExecutionId => Str

=item PipelineName => Str

=item RetryMode => Str

=item StageName => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::RetryStageExecution>

Returns: a L<Paws::CodePipeline::RetryStageExecutionOutput> instance

Resumes the pipeline execution by retrying the last failed actions in a
stage.


=head2 StartPipelineExecution

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::StartPipelineExecution>

Returns: a L<Paws::CodePipeline::StartPipelineExecutionOutput> instance

Starts the specified pipeline. Specifically, it begins processing the
latest commit to the source location specified as part of the pipeline.


=head2 UpdatePipeline

=over

=item Pipeline => L<Paws::CodePipeline::PipelineDeclaration>


=back

Each argument is described in detail in: L<Paws::CodePipeline::UpdatePipeline>

Returns: a L<Paws::CodePipeline::UpdatePipelineOutput> instance

Updates a specified pipeline with edits or changes to its structure.
Use a JSON file with the pipeline structure in conjunction with
UpdatePipeline to provide the full structure of the pipeline. Updating
the pipeline increases the version number of the pipeline by 1.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

