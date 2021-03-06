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
  sub GetActionType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::GetActionType', @_);
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
  sub ListActionExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::ListActionExecutions', @_);
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
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::ListTagsForResource', @_);
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
  sub StopPipelineExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::StopPipelineExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateActionType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::UpdateActionType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodePipeline::UpdatePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllActionExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListActionExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListActionExecutions(@_, nextToken => $next_result->nextToken);
        push @{ $result->actionExecutionDetails }, @{ $next_result->actionExecutionDetails };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'actionExecutionDetails') foreach (@{ $result->actionExecutionDetails });
        $result = $self->ListActionExecutions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'actionExecutionDetails') foreach (@{ $result->actionExecutionDetails });
    }

    return undef
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
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTagsForResource(@_, nextToken => $next_result->nextToken);
        push @{ $result->tags }, @{ $next_result->tags };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'tags') foreach (@{ $result->tags });
        $result = $self->ListTagsForResource(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'tags') foreach (@{ $result->tags });
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


  sub operations { qw/AcknowledgeJob AcknowledgeThirdPartyJob CreateCustomActionType CreatePipeline DeleteCustomActionType DeletePipeline DeleteWebhook DeregisterWebhookWithThirdParty DisableStageTransition EnableStageTransition GetActionType GetJobDetails GetPipeline GetPipelineExecution GetPipelineState GetThirdPartyJobDetails ListActionExecutions ListActionTypes ListPipelineExecutions ListPipelines ListTagsForResource ListWebhooks PollForJobs PollForThirdPartyJobs PutActionRevision PutApprovalResult PutJobFailureResult PutJobSuccessResult PutThirdPartyJobFailureResult PutThirdPartyJobSuccessResult PutWebhook RegisterWebhookWithThirdParty RetryStageExecution StartPipelineExecution StopPipelineExecution TagResource UntagResource UpdateActionType UpdatePipeline / }

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
functionality for your pipeline can only be configured through the API.
For more information, see the AWS CodePipeline User Guide
(https://docs.aws.amazon.com/codepipeline/latest/userguide/welcome.html).

You can use the AWS CodePipeline API to work with pipelines, stages,
actions, and transitions.

I<Pipelines> are models of automated release processes. Each pipeline
is uniquely named, and consists of stages, actions, and transitions.

You can work with pipelines by calling:

=over

=item *

CreatePipeline, which creates a uniquely named pipeline.

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

ListActionExecutions, which returns action-level details for past
executions. The details include full stage and action-level details,
including individual action duration, status, any errors that occurred
during the execution, and input and output artifact location details.

=item *

ListPipelines, which gets a summary of all of the pipelines associated
with your account.

=item *

ListPipelineExecutions, which gets a summary of the most recent
executions for a pipeline.

=item *

StartPipelineExecution, which runs the most recent revision of an
artifact through the pipeline.

=item *

StopPipelineExecution, which stops the specified pipeline execution
from continuing through the pipeline.

=item *

UpdatePipeline, which updates a pipeline with edits or changes to the
structure of the pipeline.

=back

Pipelines include I<stages>. Each stage contains one or more actions
that must complete before the next stage begins. A stage results in
success or failure. If a stage fails, the pipeline stops at that stage
and remains stopped until either a new version of an artifact appears
in the source location, or a user takes action to rerun the most recent
artifact through the pipeline. You can call GetPipelineState, which
displays the status of a pipeline, including the status of stages in
the pipeline, or GetPipeline, which returns the entire structure of the
pipeline, including the stages of that pipeline. For more information
about the structure of stages and actions, see AWS CodePipeline
Pipeline Structure Reference
(https://docs.aws.amazon.com/codepipeline/latest/userguide/pipeline-structure.html).

Pipeline stages include I<actions> that are categorized into categories
such as source or build actions performed in a stage of a pipeline. For
example, you can use a source action to import artifacts into a
pipeline from a source such as Amazon S3. Like stages, you do not work
with actions directly in most cases, but you do define and interact
with actions when working with pipeline operations such as
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
the standard API user. To integrate with AWS CodePipeline, developers
need to work with the following items:

B<Jobs>, which are instances of an action. For example, a job for a
source action might import a revision of an artifact from a source.

You can work with jobs by calling:

=over

=item *

AcknowledgeJob, which confirms whether a job worker has received the
specified job.

=item *

GetJobDetails, which returns the details of a job.

=item *

PollForJobs, which determines whether there are any jobs to act on.

=item *

PutJobFailureResult, which provides details of a job failure.

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
received the specified job.

=item *

GetThirdPartyJobDetails, which requests the details of a job for a
partner action.

=item *

PollForThirdPartyJobs, which determines whether there are any jobs to
act on.

=item *

PutThirdPartyJobFailureResult, which provides details of a job failure.

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
received by the job worker. Used for custom actions only.


=head2 AcknowledgeThirdPartyJob

=over

=item ClientToken => Str

=item JobId => Str

=item Nonce => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::AcknowledgeThirdPartyJob>

Returns: a L<Paws::CodePipeline::AcknowledgeThirdPartyJobOutput> instance

Confirms a job worker has received the specified job. Used for partner
actions only.


=head2 CreateCustomActionType

=over

=item Category => Str

=item InputArtifactDetails => L<Paws::CodePipeline::ArtifactDetails>

=item OutputArtifactDetails => L<Paws::CodePipeline::ArtifactDetails>

=item Provider => Str

=item Version => Str

=item [ConfigurationProperties => ArrayRef[L<Paws::CodePipeline::ActionConfigurationProperty>]]

=item [Settings => L<Paws::CodePipeline::ActionTypeSettings>]

=item [Tags => ArrayRef[L<Paws::CodePipeline::Tag>]]


=back

Each argument is described in detail in: L<Paws::CodePipeline::CreateCustomActionType>

Returns: a L<Paws::CodePipeline::CreateCustomActionTypeOutput> instance

Creates a new custom action that can be used in all pipelines
associated with the AWS account. Only used for custom actions.


=head2 CreatePipeline

=over

=item Pipeline => L<Paws::CodePipeline::PipelineDeclaration>

=item [Tags => ArrayRef[L<Paws::CodePipeline::Tag>]]


=back

Each argument is described in detail in: L<Paws::CodePipeline::CreatePipeline>

Returns: a L<Paws::CodePipeline::CreatePipelineOutput> instance

Creates a pipeline.

In the pipeline structure, you must include either C<artifactStore> or
C<artifactStores> in your pipeline, but you cannot use both. If you
create a cross-region action in your pipeline, you must use
C<artifactStores>.


=head2 DeleteCustomActionType

=over

=item Category => Str

=item Provider => Str

=item Version => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::DeleteCustomActionType>

Returns: nothing

Marks a custom action as deleted. C<PollForJobs> for the custom action
fails after the action is marked for deletion. Used for custom actions
only.

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
event occurs. The API returns successfully when trying to delete a
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
Currently supported only for webhooks that target an action type of
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


=head2 GetActionType

=over

=item Category => Str

=item Owner => Str

=item Provider => Str

=item Version => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::GetActionType>

Returns: a L<Paws::CodePipeline::GetActionTypeOutput> instance

Returns information about an action type created for an external
provider, where the action is to be used by customers of the external
provider. The action can be created with any supported integration
model.


=head2 GetJobDetails

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::GetJobDetails>

Returns: a L<Paws::CodePipeline::GetJobDetailsOutput> instance

Returns information about a job. Used for custom actions only.

When this API is called, AWS CodePipeline returns temporary credentials
for the S3 bucket used to store artifacts for the pipeline, if the
action requires access to that S3 bucket for input or output artifacts.
This API also returns any secret values defined for the action.


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

Values returned in the C<revisionId> and C<revisionUrl> fields indicate
the source revision information, such as the commit ID, for the current
state.


=head2 GetThirdPartyJobDetails

=over

=item ClientToken => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::GetThirdPartyJobDetails>

Returns: a L<Paws::CodePipeline::GetThirdPartyJobDetailsOutput> instance

Requests the details of a job for a third party action. Used for
partner actions only.

When this API is called, AWS CodePipeline returns temporary credentials
for the S3 bucket used to store artifacts for the pipeline, if the
action requires access to that S3 bucket for input or output artifacts.
This API also returns any secret values defined for the action.


=head2 ListActionExecutions

=over

=item PipelineName => Str

=item [Filter => L<Paws::CodePipeline::ActionExecutionFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodePipeline::ListActionExecutions>

Returns: a L<Paws::CodePipeline::ListActionExecutionsOutput> instance

Lists the action executions that have occurred in a pipeline.


=head2 ListActionTypes

=over

=item [ActionOwnerFilter => Str]

=item [NextToken => Str]

=item [RegionFilter => Str]


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

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodePipeline::ListPipelines>

Returns: a L<Paws::CodePipeline::ListPipelinesOutput> instance

Gets a summary of all of the pipelines associated with your account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodePipeline::ListTagsForResource>

Returns: a L<Paws::CodePipeline::ListTagsForResourceOutput> instance

Gets the set of key-value pairs (metadata) that are used to manage the
resource.


=head2 ListWebhooks

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodePipeline::ListWebhooks>

Returns: a L<Paws::CodePipeline::ListWebhooksOutput> instance

Gets a listing of all the webhooks in this AWS Region for this account.
The output lists all webhooks and includes the webhook URL and ARN and
the configuration for each webhook.


=head2 PollForJobs

=over

=item ActionTypeId => L<Paws::CodePipeline::ActionTypeId>

=item [MaxBatchSize => Int]

=item [QueryParam => L<Paws::CodePipeline::QueryParamMap>]


=back

Each argument is described in detail in: L<Paws::CodePipeline::PollForJobs>

Returns: a L<Paws::CodePipeline::PollForJobsOutput> instance

Returns information about any jobs for AWS CodePipeline to act on.
C<PollForJobs> is valid only for action types with "Custom" in the
owner field. If the action type contains "AWS" or "ThirdParty" in the
owner field, the C<PollForJobs> action returns an error.

When this API is called, AWS CodePipeline returns temporary credentials
for the S3 bucket used to store artifacts for the pipeline, if the
action requires access to that S3 bucket for input or output artifacts.
This API also returns any secret values defined for the action.


=head2 PollForThirdPartyJobs

=over

=item ActionTypeId => L<Paws::CodePipeline::ActionTypeId>

=item [MaxBatchSize => Int]


=back

Each argument is described in detail in: L<Paws::CodePipeline::PollForThirdPartyJobs>

Returns: a L<Paws::CodePipeline::PollForThirdPartyJobsOutput> instance

Determines whether there are any third party jobs for a job worker to
act on. Used for partner actions only.

When this API is called, AWS CodePipeline returns temporary credentials
for the S3 bucket used to store artifacts for the pipeline, if the
action requires access to that S3 bucket for input or output artifacts.


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
worker. Used for custom actions only.


=head2 PutJobSuccessResult

=over

=item JobId => Str

=item [ContinuationToken => Str]

=item [CurrentRevision => L<Paws::CodePipeline::CurrentRevision>]

=item [ExecutionDetails => L<Paws::CodePipeline::ExecutionDetails>]

=item [OutputVariables => L<Paws::CodePipeline::OutputVariablesMap>]


=back

Each argument is described in detail in: L<Paws::CodePipeline::PutJobSuccessResult>

Returns: nothing

Represents the success of a job as returned to the pipeline by a job
worker. Used for custom actions only.


=head2 PutThirdPartyJobFailureResult

=over

=item ClientToken => Str

=item FailureDetails => L<Paws::CodePipeline::FailureDetails>

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::CodePipeline::PutThirdPartyJobFailureResult>

Returns: nothing

Represents the failure of a third party job as returned to the pipeline
by a job worker. Used for partner actions only.


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
by a job worker. Used for partner actions only.


=head2 PutWebhook

=over

=item Webhook => L<Paws::CodePipeline::WebhookDefinition>

=item [Tags => ArrayRef[L<Paws::CodePipeline::Tag>]]


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
stage. You can retry a stage immediately if any of the actions in the
stage fail. When you retry, all actions that are still in progress
continue working, and failed actions are triggered again.


=head2 StartPipelineExecution

=over

=item Name => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::CodePipeline::StartPipelineExecution>

Returns: a L<Paws::CodePipeline::StartPipelineExecutionOutput> instance

Starts the specified pipeline. Specifically, it begins processing the
latest commit to the source location specified as part of the pipeline.


=head2 StopPipelineExecution

=over

=item PipelineExecutionId => Str

=item PipelineName => Str

=item [Abandon => Bool]

=item [Reason => Str]


=back

Each argument is described in detail in: L<Paws::CodePipeline::StopPipelineExecution>

Returns: a L<Paws::CodePipeline::StopPipelineExecutionOutput> instance

Stops the specified pipeline execution. You choose to either stop the
pipeline execution by completing in-progress actions without starting
subsequent actions, or by abandoning in-progress actions. While
completing or abandoning in-progress actions, the pipeline execution is
in a C<Stopping> state. After all in-progress actions are completed or
abandoned, the pipeline execution is in a C<Stopped> state.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::CodePipeline::Tag>]


=back

Each argument is described in detail in: L<Paws::CodePipeline::TagResource>

Returns: a L<Paws::CodePipeline::TagResourceOutput> instance

Adds to or modifies the tags of the given resource. Tags are metadata
that can be used to manage a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodePipeline::UntagResource>

Returns: a L<Paws::CodePipeline::UntagResourceOutput> instance

Removes tags from an AWS resource.


=head2 UpdateActionType

=over

=item ActionType => L<Paws::CodePipeline::ActionTypeDeclaration>


=back

Each argument is described in detail in: L<Paws::CodePipeline::UpdateActionType>

Returns: nothing

Updates an action type that was created with any supported integration
model, where the action type is to be used by customers of the action
type provider. Use a JSON file with the action definition and
C<UpdateActionType> to provide the full structure.


=head2 UpdatePipeline

=over

=item Pipeline => L<Paws::CodePipeline::PipelineDeclaration>


=back

Each argument is described in detail in: L<Paws::CodePipeline::UpdatePipeline>

Returns: a L<Paws::CodePipeline::UpdatePipelineOutput> instance

Updates a specified pipeline with edits or changes to its structure.
Use a JSON file with the pipeline structure and C<UpdatePipeline> to
provide the full structure of the pipeline. Updating the pipeline
increases the version number of the pipeline by 1.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllActionExecutions(sub { },PipelineName => Str, [Filter => L<Paws::CodePipeline::ActionExecutionFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllActionExecutions(PipelineName => Str, [Filter => L<Paws::CodePipeline::ActionExecutionFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - actionExecutionDetails, passing the object as the first parameter, and the string 'actionExecutionDetails' as the second parameter 

If not, it will return a a L<Paws::CodePipeline::ListActionExecutionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllActionTypes(sub { },[ActionOwnerFilter => Str, NextToken => Str, RegionFilter => Str])

=head2 ListAllActionTypes([ActionOwnerFilter => Str, NextToken => Str, RegionFilter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - actionTypes, passing the object as the first parameter, and the string 'actionTypes' as the second parameter 

If not, it will return a a L<Paws::CodePipeline::ListActionTypesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPipelineExecutions(sub { },PipelineName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPipelineExecutions(PipelineName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - pipelineExecutionSummaries, passing the object as the first parameter, and the string 'pipelineExecutionSummaries' as the second parameter 

If not, it will return a a L<Paws::CodePipeline::ListPipelineExecutionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPipelines(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllPipelines([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - pipelines, passing the object as the first parameter, and the string 'pipelines' as the second parameter 

If not, it will return a a L<Paws::CodePipeline::ListPipelinesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tags, passing the object as the first parameter, and the string 'tags' as the second parameter 

If not, it will return a a L<Paws::CodePipeline::ListTagsForResourceOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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

