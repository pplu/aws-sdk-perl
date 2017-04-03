package Paws::CloudFormation;
  use Moose;
  sub service { 'cloudformation' }
  sub version { '2010-05-15' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  
  sub CancelUpdateStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::CancelUpdateStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ContinueUpdateRollback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::ContinueUpdateRollback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateChangeSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::CreateChangeSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::CreateStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChangeSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DeleteChangeSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DeleteStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountLimits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DescribeAccountLimits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChangeSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DescribeChangeSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStackEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DescribeStackEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStackResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DescribeStackResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStackResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DescribeStackResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStacks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DescribeStacks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EstimateTemplateCost {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::EstimateTemplateCost', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecuteChangeSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::ExecuteChangeSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStackPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::GetStackPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::GetTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTemplateSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::GetTemplateSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChangeSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::ListChangeSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::ListExports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::ListImports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStackResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::ListStackResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStacks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::ListStacks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetStackPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::SetStackPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SignalResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::SignalResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::UpdateStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ValidateTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::ValidateTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllStackEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeStackEvents(@_);

    if (not defined $callback) {
      while ($result->NextToken) {
        $result = $self->DescribeStackEvents(@_, NextToken => $result->NextToken);
        push @{ $result->StackEvents }, @{ $result->StackEvents };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $result = $self->DescribeStackEvents(@_, NextToken => $result->NextToken);
        $callback->($_ => 'StackEvents') foreach (@{ $result->StackEvents });
      }
    }

    return undef
  }
  sub DescribeAllStacks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeStacks(@_);

    if (not defined $callback) {
      while ($result->NextToken) {
        $result = $self->DescribeStacks(@_, NextToken => $result->NextToken);
        push @{ $result->Stacks }, @{ $result->Stacks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $result = $self->DescribeStacks(@_, NextToken => $result->NextToken);
        $callback->($_ => 'Stacks') foreach (@{ $result->Stacks });
      }
    }

    return undef
  }
  sub ListAllExports {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExports(@_);

    if (not defined $callback) {
      while ($result->NextToken) {
        $result = $self->ListExports(@_, NextToken => $result->NextToken);
        push @{ $result->Exports }, @{ $result->Exports };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $result = $self->ListExports(@_, NextToken => $result->NextToken);
        $callback->($_ => 'Exports') foreach (@{ $result->Exports });
      }
    }

    return undef
  }
  sub ListAllImports {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListImports(@_);

    if (not defined $callback) {
      while ($result->NextToken) {
        $result = $self->ListImports(@_, NextToken => $result->NextToken);
        push @{ $result->Imports }, @{ $result->Imports };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $result = $self->ListImports(@_, NextToken => $result->NextToken);
        $callback->($_ => 'Imports') foreach (@{ $result->Imports });
      }
    }

    return undef
  }
  sub ListAllStackResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStackResources(@_);

    if (not defined $callback) {
      while ($result->NextToken) {
        $result = $self->ListStackResources(@_, NextToken => $result->NextToken);
        push @{ $result->StackResourceSummaries }, @{ $result->StackResourceSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $result = $self->ListStackResources(@_, NextToken => $result->NextToken);
        $callback->($_ => 'StackResourceSummaries') foreach (@{ $result->StackResourceSummaries });
      }
    }

    return undef
  }
  sub ListAllStacks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStacks(@_);

    if (not defined $callback) {
      while ($result->NextToken) {
        $result = $self->ListStacks(@_, NextToken => $result->NextToken);
        push @{ $result->StackSummaries }, @{ $result->StackSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $result = $self->ListStacks(@_, NextToken => $result->NextToken);
        $callback->($_ => 'StackSummaries') foreach (@{ $result->StackSummaries });
      }
    }

    return undef
  }


  sub operations { qw/CancelUpdateStack ContinueUpdateRollback CreateChangeSet CreateStack DeleteChangeSet DeleteStack DescribeAccountLimits DescribeChangeSet DescribeStackEvents DescribeStackResource DescribeStackResources DescribeStacks EstimateTemplateCost ExecuteChangeSet GetStackPolicy GetTemplate GetTemplateSummary ListChangeSets ListExports ListImports ListStackResources ListStacks SetStackPolicy SignalResource UpdateStack ValidateTemplate / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation - Perl Interface to AWS AWS CloudFormation

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CloudFormation');
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

AWS CloudFormation

AWS CloudFormation allows you to create and manage AWS infrastructure
deployments predictably and repeatedly. You can use AWS CloudFormation
to leverage AWS products, such as Amazon Elastic Compute Cloud, Amazon
Elastic Block Store, Amazon Simple Notification Service, Elastic Load
Balancing, and Auto Scaling to build highly-reliable, highly scalable,
cost-effective applications without creating or configuring the
underlying AWS infrastructure.

With AWS CloudFormation, you declare all of your resources and
dependencies in a template file. The template defines a collection of
resources as a single unit called a stack. AWS CloudFormation creates
and deletes all member resources of the stack together and manages all
dependencies between the resources for you.

For more information about AWS CloudFormation, see the AWS
CloudFormation Product Page.

Amazon CloudFormation makes use of other AWS products. For additional
technical information about a specific AWS product, see its technical
documentation.

=head1 METHODS

=head2 CancelUpdateStack(StackName => Str)

Each argument is described in detail in: L<Paws::CloudFormation::CancelUpdateStack>

Returns: nothing

  Cancels an update on the specified stack. If the call completes
successfully, the stack rolls back the update and reverts to the
previous stack configuration.

You can cancel only stacks that are in the UPDATE_IN_PROGRESS state.


=head2 ContinueUpdateRollback(StackName => Str, [ResourcesToSkip => ArrayRef[Str|Undef], RoleARN => Str])

Each argument is described in detail in: L<Paws::CloudFormation::ContinueUpdateRollback>

Returns: a L<Paws::CloudFormation::ContinueUpdateRollbackOutput> instance

  For a specified stack that is in the C<UPDATE_ROLLBACK_FAILED> state,
continues rolling it back to the C<UPDATE_ROLLBACK_COMPLETE> state.
Depending on the cause of the failure, you can manually fix the error
and continue the rollback. By continuing the rollback, you can return
your stack to a working state (the C<UPDATE_ROLLBACK_COMPLETE> state),
and then try to update the stack again.

A stack goes into the C<UPDATE_ROLLBACK_FAILED> state when AWS
CloudFormation cannot roll back all changes after a failed stack
update. For example, you might have a stack that is rolling back to an
old database instance that was deleted outside of AWS CloudFormation.
Because AWS CloudFormation doesn't know the database was deleted, it
assumes that the database instance still exists and attempts to roll
back to it, causing the update rollback to fail.


=head2 CreateChangeSet(ChangeSetName => Str, StackName => Str, [Capabilities => ArrayRef[Str|Undef], ChangeSetType => Str, ClientToken => Str, Description => Str, NotificationARNs => ArrayRef[Str|Undef], Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>], ResourceTypes => ArrayRef[Str|Undef], RoleARN => Str, Tags => ArrayRef[L<Paws::CloudFormation::Tag>], TemplateBody => Str, TemplateURL => Str, UsePreviousTemplate => Bool])

Each argument is described in detail in: L<Paws::CloudFormation::CreateChangeSet>

Returns: a L<Paws::CloudFormation::CreateChangeSetOutput> instance

  Creates a list of changes for a stack. AWS CloudFormation generates the
change set by comparing the template's information with the information
that you submit. A change set can help you understand which resources
AWS CloudFormation will change, and how it will change them, before you
update your stack. Change sets allow you to check before making a
change to avoid deleting or replacing critical resources.

AWS CloudFormation doesn't make any changes to the stack when you
create a change set. To make the specified changes, you must execute
the change set by using the ExecuteChangeSet action.

After the call successfully completes, AWS CloudFormation starts
creating the change set. To check the status of the change set, use the
DescribeChangeSet action.


=head2 CreateStack(StackName => Str, [Capabilities => ArrayRef[Str|Undef], DisableRollback => Bool, NotificationARNs => ArrayRef[Str|Undef], OnFailure => Str, Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>], ResourceTypes => ArrayRef[Str|Undef], RoleARN => Str, StackPolicyBody => Str, StackPolicyURL => Str, Tags => ArrayRef[L<Paws::CloudFormation::Tag>], TemplateBody => Str, TemplateURL => Str, TimeoutInMinutes => Int])

Each argument is described in detail in: L<Paws::CloudFormation::CreateStack>

Returns: a L<Paws::CloudFormation::CreateStackOutput> instance

  Creates a stack as specified in the template. After the call completes
successfully, the stack creation starts. You can check the status of
the stack via the DescribeStacks API.


=head2 DeleteChangeSet(ChangeSetName => Str, [StackName => Str])

Each argument is described in detail in: L<Paws::CloudFormation::DeleteChangeSet>

Returns: a L<Paws::CloudFormation::DeleteChangeSetOutput> instance

  Deletes the specified change set. Deleting change sets ensures that no
one executes the wrong change set.

If the call successfully completes, AWS CloudFormation successfully
deleted the change set.


=head2 DeleteStack(StackName => Str, [RetainResources => ArrayRef[Str|Undef], RoleARN => Str])

Each argument is described in detail in: L<Paws::CloudFormation::DeleteStack>

Returns: nothing

  Deletes a specified stack. Once the call completes successfully, stack
deletion starts. Deleted stacks do not show up in the DescribeStacks
API if the deletion has been completed successfully.


=head2 DescribeAccountLimits([NextToken => Str])

Each argument is described in detail in: L<Paws::CloudFormation::DescribeAccountLimits>

Returns: a L<Paws::CloudFormation::DescribeAccountLimitsOutput> instance

  Retrieves your account's AWS CloudFormation limits, such as the maximum
number of stacks that you can create in your account.


=head2 DescribeChangeSet(ChangeSetName => Str, [NextToken => Str, StackName => Str])

Each argument is described in detail in: L<Paws::CloudFormation::DescribeChangeSet>

Returns: a L<Paws::CloudFormation::DescribeChangeSetOutput> instance

  Returns the inputs for the change set and a list of changes that AWS
CloudFormation will make if you execute the change set. For more
information, see Updating Stacks Using Change Sets in the AWS
CloudFormation User Guide.


=head2 DescribeStackEvents([NextToken => Str, StackName => Str])

Each argument is described in detail in: L<Paws::CloudFormation::DescribeStackEvents>

Returns: a L<Paws::CloudFormation::DescribeStackEventsOutput> instance

  Returns all stack related events for a specified stack in reverse
chronological order. For more information about a stack's event
history, go to Stacks in the AWS CloudFormation User Guide.

You can list events for stacks that have failed to create or have been
deleted by specifying the unique stack identifier (stack ID).


=head2 DescribeStackResource(LogicalResourceId => Str, StackName => Str)

Each argument is described in detail in: L<Paws::CloudFormation::DescribeStackResource>

Returns: a L<Paws::CloudFormation::DescribeStackResourceOutput> instance

  Returns a description of the specified resource in the specified stack.

For deleted stacks, DescribeStackResource returns resource information
for up to 90 days after the stack has been deleted.


=head2 DescribeStackResources([LogicalResourceId => Str, PhysicalResourceId => Str, StackName => Str])

Each argument is described in detail in: L<Paws::CloudFormation::DescribeStackResources>

Returns: a L<Paws::CloudFormation::DescribeStackResourcesOutput> instance

  Returns AWS resource descriptions for running and deleted stacks. If
C<StackName> is specified, all the associated resources that are part
of the stack are returned. If C<PhysicalResourceId> is specified, the
associated resources of the stack that the resource belongs to are
returned.

Only the first 100 resources will be returned. If your stack has more
resources than this, you should use C<ListStackResources> instead.

For deleted stacks, C<DescribeStackResources> returns resource
information for up to 90 days after the stack has been deleted.

You must specify either C<StackName> or C<PhysicalResourceId>, but not
both. In addition, you can specify C<LogicalResourceId> to filter the
returned result. For more information about resources, the
C<LogicalResourceId> and C<PhysicalResourceId>, go to the AWS
CloudFormation User Guide.

A C<ValidationError> is returned if you specify both C<StackName> and
C<PhysicalResourceId> in the same request.


=head2 DescribeStacks([NextToken => Str, StackName => Str])

Each argument is described in detail in: L<Paws::CloudFormation::DescribeStacks>

Returns: a L<Paws::CloudFormation::DescribeStacksOutput> instance

  Returns the description for the specified stack; if no stack name was
specified, then it returns the description for all the stacks created.

If the stack does not exist, an C<AmazonCloudFormationException> is
returned.


=head2 EstimateTemplateCost([Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>], TemplateBody => Str, TemplateURL => Str])

Each argument is described in detail in: L<Paws::CloudFormation::EstimateTemplateCost>

Returns: a L<Paws::CloudFormation::EstimateTemplateCostOutput> instance

  Returns the estimated monthly cost of a template. The return value is
an AWS Simple Monthly Calculator URL with a query string that describes
the resources required to run the template.


=head2 ExecuteChangeSet(ChangeSetName => Str, [StackName => Str])

Each argument is described in detail in: L<Paws::CloudFormation::ExecuteChangeSet>

Returns: a L<Paws::CloudFormation::ExecuteChangeSetOutput> instance

  Updates a stack using the input information that was provided when the
specified change set was created. After the call successfully
completes, AWS CloudFormation starts updating the stack. Use the
DescribeStacks action to view the status of the update.

When you execute a change set, AWS CloudFormation deletes all other
change sets associated with the stack because they aren't valid for the
updated stack.

If a stack policy is associated with the stack, AWS CloudFormation
enforces the policy during the update. You can't specify a temporary
stack policy that overrides the current policy.


=head2 GetStackPolicy(StackName => Str)

Each argument is described in detail in: L<Paws::CloudFormation::GetStackPolicy>

Returns: a L<Paws::CloudFormation::GetStackPolicyOutput> instance

  Returns the stack policy for a specified stack. If a stack doesn't have
a policy, a null value is returned.


=head2 GetTemplate([ChangeSetName => Str, StackName => Str, TemplateStage => Str])

Each argument is described in detail in: L<Paws::CloudFormation::GetTemplate>

Returns: a L<Paws::CloudFormation::GetTemplateOutput> instance

  Returns the template body for a specified stack. You can get the
template for running or deleted stacks.

For deleted stacks, GetTemplate returns the template for up to 90 days
after the stack has been deleted.

If the template does not exist, a C<ValidationError> is returned.


=head2 GetTemplateSummary([StackName => Str, TemplateBody => Str, TemplateURL => Str])

Each argument is described in detail in: L<Paws::CloudFormation::GetTemplateSummary>

Returns: a L<Paws::CloudFormation::GetTemplateSummaryOutput> instance

  Returns information about a new or existing template. The
C<GetTemplateSummary> action is useful for viewing parameter
information, such as default parameter values and parameter types,
before you create or update a stack.

You can use the C<GetTemplateSummary> action when you submit a
template, or you can get template information for a running or deleted
stack.

For deleted stacks, C<GetTemplateSummary> returns the template
information for up to 90 days after the stack has been deleted. If the
template does not exist, a C<ValidationError> is returned.


=head2 ListChangeSets(StackName => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::CloudFormation::ListChangeSets>

Returns: a L<Paws::CloudFormation::ListChangeSetsOutput> instance

  Returns the ID and status of each active change set for a stack. For
example, AWS CloudFormation lists change sets that are in the
C<CREATE_IN_PROGRESS> or C<CREATE_PENDING> state.


=head2 ListExports([NextToken => Str])

Each argument is described in detail in: L<Paws::CloudFormation::ListExports>

Returns: a L<Paws::CloudFormation::ListExportsOutput> instance

  Lists all exported output values in the account and region in which you
call this action. Use this action to see the exported output values
that you can import into other stacks. To import values, use the
C<Fn::ImportValue> function.

For more information, see AWS CloudFormation Export Stack Output
Values.


=head2 ListImports(ExportName => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::CloudFormation::ListImports>

Returns: a L<Paws::CloudFormation::ListImportsOutput> instance

  Lists all stacks that are importing an exported output value. To modify
or remove an exported output value, first use this action to see which
stacks are using it. To see the exported output values in your account,
see ListExports.

For more information about importing an exported output value, see the
C<Fn::ImportValue> function.


=head2 ListStackResources(StackName => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::CloudFormation::ListStackResources>

Returns: a L<Paws::CloudFormation::ListStackResourcesOutput> instance

  Returns descriptions of all resources of the specified stack.

For deleted stacks, ListStackResources returns resource information for
up to 90 days after the stack has been deleted.


=head2 ListStacks([NextToken => Str, StackStatusFilter => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::CloudFormation::ListStacks>

Returns: a L<Paws::CloudFormation::ListStacksOutput> instance

  Returns the summary information for stacks whose status matches the
specified StackStatusFilter. Summary information for stacks that have
been deleted is kept for 90 days after the stack is deleted. If no
StackStatusFilter is specified, summary information for all stacks is
returned (including existing stacks and stacks that have been deleted).


=head2 SetStackPolicy(StackName => Str, [StackPolicyBody => Str, StackPolicyURL => Str])

Each argument is described in detail in: L<Paws::CloudFormation::SetStackPolicy>

Returns: nothing

  Sets a stack policy for a specified stack.


=head2 SignalResource(LogicalResourceId => Str, StackName => Str, Status => Str, UniqueId => Str)

Each argument is described in detail in: L<Paws::CloudFormation::SignalResource>

Returns: nothing

  Sends a signal to the specified resource with a success or failure
status. You can use the SignalResource API in conjunction with a
creation policy or update policy. AWS CloudFormation doesn't proceed
with a stack creation or update until resources receive the required
number of signals or the timeout period is exceeded. The SignalResource
API is useful in cases where you want to send signals from anywhere
other than an Amazon EC2 instance.


=head2 UpdateStack(StackName => Str, [Capabilities => ArrayRef[Str|Undef], NotificationARNs => ArrayRef[Str|Undef], Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>], ResourceTypes => ArrayRef[Str|Undef], RoleARN => Str, StackPolicyBody => Str, StackPolicyDuringUpdateBody => Str, StackPolicyDuringUpdateURL => Str, StackPolicyURL => Str, Tags => ArrayRef[L<Paws::CloudFormation::Tag>], TemplateBody => Str, TemplateURL => Str, UsePreviousTemplate => Bool])

Each argument is described in detail in: L<Paws::CloudFormation::UpdateStack>

Returns: a L<Paws::CloudFormation::UpdateStackOutput> instance

  Updates a stack as specified in the template. After the call completes
successfully, the stack update starts. You can check the status of the
stack via the DescribeStacks action.

To get a copy of the template for an existing stack, you can use the
GetTemplate action.

For more information about creating an update template, updating a
stack, and monitoring the progress of the update, see Updating a Stack.


=head2 ValidateTemplate([TemplateBody => Str, TemplateURL => Str])

Each argument is described in detail in: L<Paws::CloudFormation::ValidateTemplate>

Returns: a L<Paws::CloudFormation::ValidateTemplateOutput> instance

  Validates a specified template. AWS CloudFormation first checks if the
template is valid JSON. If it isn't, AWS CloudFormation checks if the
template is valid YAML. If both these checks fail, AWS CloudFormation
returns a template validation error.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllStackEvents(sub { },[NextToken => Str, StackName => Str])

=head2 DescribeAllStackEvents([NextToken => Str, StackName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StackEvents, passing the object as the first parameter, and the string 'StackEvents' as the second parameter 

If not, it will return a a L<Paws::CloudFormation::DescribeStackEventsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllStacks(sub { },[NextToken => Str, StackName => Str])

=head2 DescribeAllStacks([NextToken => Str, StackName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Stacks, passing the object as the first parameter, and the string 'Stacks' as the second parameter 

If not, it will return a a L<Paws::CloudFormation::DescribeStacksOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllExports(sub { },[NextToken => Str])

=head2 ListAllExports([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Exports, passing the object as the first parameter, and the string 'Exports' as the second parameter 

If not, it will return a a L<Paws::CloudFormation::ListExportsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllImports(sub { },ExportName => Str, [NextToken => Str])

=head2 ListAllImports(ExportName => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Imports, passing the object as the first parameter, and the string 'Imports' as the second parameter 

If not, it will return a a L<Paws::CloudFormation::ListImportsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStackResources(sub { },StackName => Str, [NextToken => Str])

=head2 ListAllStackResources(StackName => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StackResourceSummaries, passing the object as the first parameter, and the string 'StackResourceSummaries' as the second parameter 

If not, it will return a a L<Paws::CloudFormation::ListStackResourcesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStacks(sub { },[NextToken => Str, StackStatusFilter => ArrayRef[Str|Undef]])

=head2 ListAllStacks([NextToken => Str, StackStatusFilter => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StackSummaries, passing the object as the first parameter, and the string 'StackSummaries' as the second parameter 

If not, it will return a a L<Paws::CloudFormation::ListStacksOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

