package Paws::CodePipeline;
  use Moose;
  sub service { 'codepipeline' }
  sub signing_name { 'codepipeline' }
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
  sub DeleteWebhook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::DeleteWebhook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterWebhookWithThirdParty {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::DeregisterWebhookWithThirdParty', @_);
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
  sub ListWebhooks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::ListWebhooks', @_);
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
  sub PutWebhook {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::PutWebhook', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterWebhookWithThirdParty {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::RegisterWebhookWithThirdParty', @_);
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
  
  sub ListAllActionTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListActionTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListActionTypes(@_, nextToken => $next_result->nextToken);
        push @{ $result->actionTypes }, @{ $next_result->actionTypes };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'actionTypes') foreach (@{ $result->actionTypes });
        $result = $self->ListActionTypes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'actionTypes') foreach (@{ $result->actionTypes });
    }

    return undef
  }
  sub ListAllPipelineExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPipelineExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPipelineExecutions(@_, nextToken => $next_result->nextToken);
        push @{ $result->pipelineExecutionSummaries }, @{ $next_result->pipelineExecutionSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'pipelineExecutionSummaries') foreach (@{ $result->pipelineExecutionSummaries });
        $result = $self->ListPipelineExecutions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'pipelineExecutionSummaries') foreach (@{ $result->pipelineExecutionSummaries });
    }

    return undef
  }
  sub ListAllPipelines {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPipelines(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPipelines(@_, nextToken => $next_result->nextToken);
        push @{ $result->pipelines }, @{ $next_result->pipelines };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'pipelines') foreach (@{ $result->pipelines });
        $result = $self->ListPipelines(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'pipelines') foreach (@{ $result->pipelines });
    }

    return undef
  }
  sub ListAllWebhooks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWebhooks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListWebhooks(@_, NextToken => $next_result->NextToken);
        push @{ $result->webhooks }, @{ $next_result->webhooks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'webhooks') foreach (@{ $result->webhooks });
        $result = $self->ListWebhooks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'webhooks') foreach (@{ $result->webhooks });
    }

    return undef
  }


  sub operations { qw/AcknowledgeJob AcknowledgeThirdPartyJob CreateCustomActionType CreatePipeline DeleteCustomActionType DeletePipeline DeleteWebhook DeregisterWebhookWithThirdParty DisableStageTransition EnableStageTransition GetJobDetails GetPipeline GetPipelineExecution GetPipelineState GetThirdPartyJobDetails ListActionTypes ListPipelineExecutions ListPipelines ListWebhooks PollForJobs PollForThirdPartyJobs PutActionRevision PutApprovalResult PutJobFailureResult PutJobSuccessResult PutThirdPartyJobFailureResult PutThirdPartyJobSuccessResult PutWebhook RegisterWebhookWithThirdParty RetryStageExecution StartPipelineExecution UpdatePipeline / }

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
actions, and transitions, as described below.

I<Pipelines> are models of automated release processes. Each pipeline
is uniquely named, and consists of stages, actions, and transitions.

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

Pipelines include I<stages>. Each stage contains one or more actions
that must complete before the next stage begins. A stage will result in
success or failure. If a stage fails, then the pipeline stops at that
stage and will remain stopped until either a new version of an artifact
appears in the source location, or a user takes action to re-run the
most recent artifact through the pipeline. You can call
GetPipelineState, which displays the status of a pipeline, including
the status of stages in the pipeline, or GetPipeline, which returns the
entire structure of the pipeline, including the stages of that
pipeline. For more information about the structure of stages and
actions, also refer to the AWS CodePipeline Pipeline Structure
Reference
(http://docs.aws.amazon.com/codepipeline/latest/userguide/pipeline-structure.html).

Pipeline stages include I<actions>, which are categorized into
categories such as source or build actions performed within a stage of
a pipeline. For example, you can use a source action to import
artifacts into a pipeline from a source such as Amazon S3. Like stages,
you do not work with actions directly in most cases, but you do define
and interact with actions when working with pipeline operations such as
CreatePipeline and GetPipelineState. Valid action categories are:

=over

=item *

Source

=item *

Build

=item *

Test

=item *

Deploy

=item *

Approval

=item *

Invoke

=back

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


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline-2015-07-09>


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

To re-create a custom action after it has been deleted you must use a
string in the version field that has never been used before. This
string can be an incremented version number, for example. To restore a
deleted custom action, use a JSON file that is identical to the deleted
action, including the original string in the version field.


=head2 DeletePipeline

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::DeletePipeline>

Returns: nothing

Deletes the specified pipeline.


=head2 DeleteWebhook

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::DeleteWebhook>

Returns: a L<Paws::CodePipeline::DeleteWebhookOutput> instance

Deletes a previously created webhook by name. Deleting the webhook
stops AWS CodePipeline from starting a pipeline every time an external
event occurs. The API will return successfully when trying to delete a
webhook that is already deleted. If a deleted webhook is re-created by
calling PutWebhook with the same name, it will have a different URL.


=head2 DeregisterWebhookWithThirdParty

=over

=item [WebhookName => Str]


=back

Each argument is described in detail in: L<Paws::CodePipeline::DeregisterWebhookWithThirdParty>

Returns: a L<Paws::CodePipeline::DeregisterWebhookWithThirdPartyOutput> instance

Removes the connection between the webhook that was created by
CodePipeline and the external tool with events to be detected.
Currently only supported for webhooks that target an action type of
GitHub.


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


=head2 ListWebhooks

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodePipeline::ListWebhooks>

Returns: a L<Paws::CodePipeline::ListWebhooksOutput> instance

Gets a listing of all the webhooks in this region for this account. The
output lists all webhooks and includes the webhook URL and ARN, as well
the configuration for each webhook.


=head2 PollForJobs

=over

=item ActionTypeId => L<Paws::CodePipeline::ActionTypeId>

=item [MaxBatchSize => Int]

=item [QueryParam => L<Paws::CodePipeline::QueryParamMap>]


=back

Each argument is described in detail in: L<Paws::CodePipeline::PollForJobs>

Returns: a L<Paws::CodePipeline::PollForJobsOutput> instance

Returns information about any jobs for AWS CodePipeline to act upon.
PollForJobs is only valid for action types with "Custom" in the owner
field. If the action type contains "AWS" or "ThirdParty" in the owner
field, the PollForJobs action returns an error.

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


=head2 PutWebhook

=over

=item Webhook => L<Paws::CodePipeline::WebhookDefinition>


=back

Each argument is described in detail in: L<Paws::CodePipeline::PutWebhook>

Returns: a L<Paws::CodePipeline::PutWebhookOutput> instance

Defines a webhook and returns a unique webhook URL generated by
CodePipeline. This URL can be supplied to third party source hosting
providers to call every time there's a code change. When CodePipeline
receives a POST request on this URL, the pipeline defined in the
webhook is started as long as the POST request satisfied the
authentication and filtering requirements supplied when defining the
webhook. RegisterWebhookWithThirdParty and
DeregisterWebhookWithThirdParty APIs can be used to automatically
configure supported third parties to call the generated webhook URL.


=head2 RegisterWebhookWithThirdParty

=over

=item [WebhookName => Str]


=back

Each argument is described in detail in: L<Paws::CodePipeline::RegisterWebhookWithThirdParty>

Returns: a L<Paws::CodePipeline::RegisterWebhookWithThirdPartyOutput> instance

Configures a connection between the webhook that was created and the
external tool with events to be detected.


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

=item [ClientRequestToken => Str]


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

=head2 ListAllActionTypes(sub { },[ActionOwnerFilter => Str, NextToken => Str])

=head2 ListAllActionTypes([ActionOwnerFilter => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - actionTypes, passing the object as the first parameter, and the string 'actionTypes' as the second parameter 

If not, it will return a a L<Paws::CodePipeline::ListActionTypesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPipelineExecutions(sub { },PipelineName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPipelineExecutions(PipelineName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - pipelineExecutionSummaries, passing the object as the first parameter, and the string 'pipelineExecutionSummaries' as the second parameter 

If not, it will return a a L<Paws::CodePipeline::ListPipelineExecutionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPipelines(sub { },[NextToken => Str])

=head2 ListAllPipelines([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - pipelines, passing the object as the first parameter, and the string 'pipelines' as the second parameter 

If not, it will return a a L<Paws::CodePipeline::ListPipelinesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWebhooks(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllWebhooks([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - webhooks, passing the object as the first parameter, and the string 'webhooks' as the second parameter 

If not, it will return a a L<Paws::CodePipeline::ListWebhooksOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

