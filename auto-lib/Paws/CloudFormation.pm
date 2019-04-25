package Paws::CloudFormation;
  use Moose;
  sub service { 'cloudformation' }
  sub signing_name { 'cloudformation' }
  sub version { '2010-05-15' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller';

  
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
  sub CreateStackInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::CreateStackInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStackSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::CreateStackSet', @_);
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
  sub DeleteStackInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DeleteStackInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStackSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DeleteStackSet', @_);
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
  sub DescribeStackDriftDetectionStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DescribeStackDriftDetectionStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStackEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DescribeStackEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStackInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DescribeStackInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStackResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DescribeStackResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStackResourceDrifts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DescribeStackResourceDrifts', @_);
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
  sub DescribeStackSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DescribeStackSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStackSetOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DescribeStackSetOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectStackDrift {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DetectStackDrift', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectStackResourceDrift {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DetectStackResourceDrift', @_);
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
  sub ListStackInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::ListStackInstances', @_);
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
  sub ListStackSetOperationResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::ListStackSetOperationResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStackSetOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::ListStackSetOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStackSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::ListStackSets', @_);
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
  sub StopStackSetOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::StopStackSetOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStack {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::UpdateStack', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStackInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::UpdateStackInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStackSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::UpdateStackSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTerminationProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::UpdateTerminationProtection', @_);
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
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeStackEvents(@_, NextToken => $next_result->NextToken);
        push @{ $result->StackEvents }, @{ $next_result->StackEvents };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'StackEvents') foreach (@{ $result->StackEvents });
        $result = $self->DescribeStackEvents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'StackEvents') foreach (@{ $result->StackEvents });
    }

    return undef
  }
  sub DescribeAllStacks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeStacks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeStacks(@_, NextToken => $next_result->NextToken);
        push @{ $result->Stacks }, @{ $next_result->Stacks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Stacks') foreach (@{ $result->Stacks });
        $result = $self->DescribeStacks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Stacks') foreach (@{ $result->Stacks });
    }

    return undef
  }
  sub ListAllExports {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExports(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListExports(@_, NextToken => $next_result->NextToken);
        push @{ $result->Exports }, @{ $next_result->Exports };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Exports') foreach (@{ $result->Exports });
        $result = $self->ListExports(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Exports') foreach (@{ $result->Exports });
    }

    return undef
  }
  sub ListAllImports {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListImports(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListImports(@_, NextToken => $next_result->NextToken);
        push @{ $result->Imports }, @{ $next_result->Imports };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Imports') foreach (@{ $result->Imports });
        $result = $self->ListImports(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Imports') foreach (@{ $result->Imports });
    }

    return undef
  }
  sub ListAllStackResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStackResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListStackResources(@_, NextToken => $next_result->NextToken);
        push @{ $result->StackResourceSummaries }, @{ $next_result->StackResourceSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'StackResourceSummaries') foreach (@{ $result->StackResourceSummaries });
        $result = $self->ListStackResources(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'StackResourceSummaries') foreach (@{ $result->StackResourceSummaries });
    }

    return undef
  }
  sub ListAllStacks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStacks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListStacks(@_, NextToken => $next_result->NextToken);
        push @{ $result->StackSummaries }, @{ $next_result->StackSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'StackSummaries') foreach (@{ $result->StackSummaries });
        $result = $self->ListStacks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'StackSummaries') foreach (@{ $result->StackSummaries });
    }

    return undef
  }


  sub operations { qw/CancelUpdateStack ContinueUpdateRollback CreateChangeSet CreateStack CreateStackInstances CreateStackSet DeleteChangeSet DeleteStack DeleteStackInstances DeleteStackSet DescribeAccountLimits DescribeChangeSet DescribeStackDriftDetectionStatus DescribeStackEvents DescribeStackInstance DescribeStackResource DescribeStackResourceDrifts DescribeStackResources DescribeStacks DescribeStackSet DescribeStackSetOperation DetectStackDrift DetectStackResourceDrift EstimateTemplateCost ExecuteChangeSet GetStackPolicy GetTemplate GetTemplateSummary ListChangeSets ListExports ListImports ListStackInstances ListStackResources ListStacks ListStackSetOperationResults ListStackSetOperations ListStackSets SetStackPolicy SignalResource StopStackSetOperation UpdateStack UpdateStackInstances UpdateStackSet UpdateTerminationProtection ValidateTemplate / }

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
CloudFormation Product Page (http://aws.amazon.com/cloudformation/).

Amazon CloudFormation makes use of other AWS products. If you need
additional technical information about a specific AWS product, you can
find the product's technical documentation at docs.aws.amazon.com
(http://docs.aws.amazon.com/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15>


=head1 METHODS

=head2 CancelUpdateStack

=over

=item StackName => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::CancelUpdateStack>

Returns: nothing

Cancels an update on the specified stack. If the call completes
successfully, the stack rolls back the update and reverts to the
previous stack configuration.

You can cancel only stacks that are in the UPDATE_IN_PROGRESS state.


=head2 ContinueUpdateRollback

=over

=item StackName => Str

=item [ClientRequestToken => Str]

=item [ResourcesToSkip => ArrayRef[Str|Undef]]

=item [RoleARN => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::ContinueUpdateRollback>

Returns: a L<Paws::CloudFormation::ContinueUpdateRollbackOutput> instance

For a specified stack that is in the C<UPDATE_ROLLBACK_FAILED> state,
continues rolling it back to the C<UPDATE_ROLLBACK_COMPLETE> state.
Depending on the cause of the failure, you can manually fix the error
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed)
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


=head2 CreateChangeSet

=over

=item ChangeSetName => Str

=item StackName => Str

=item [Capabilities => ArrayRef[Str|Undef]]

=item [ChangeSetType => Str]

=item [ClientToken => Str]

=item [Description => Str]

=item [NotificationARNs => ArrayRef[Str|Undef]]

=item [Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]]

=item [ResourceTypes => ArrayRef[Str|Undef]]

=item [RoleARN => Str]

=item [RollbackConfiguration => L<Paws::CloudFormation::RollbackConfiguration>]

=item [Tags => ArrayRef[L<Paws::CloudFormation::Tag>]]

=item [TemplateBody => Str]

=item [TemplateURL => Str]

=item [UsePreviousTemplate => Bool]


=back

Each argument is described in detail in: L<Paws::CloudFormation::CreateChangeSet>

Returns: a L<Paws::CloudFormation::CreateChangeSetOutput> instance

Creates a list of changes that will be applied to a stack so that you
can review the changes before executing them. You can create a change
set for a stack that doesn't exist or an existing stack. If you create
a change set for a stack that doesn't exist, the change set shows all
of the resources that AWS CloudFormation will create. If you create a
change set for an existing stack, AWS CloudFormation compares the
stack's information with the information that you submit in the change
set and lists the differences. Use change sets to understand which
resources AWS CloudFormation will create or change, and how it will
change resources in an existing stack, before you create or update a
stack.

To create a change set for a stack that doesn't exist, for the
C<ChangeSetType> parameter, specify C<CREATE>. To create a change set
for an existing stack, specify C<UPDATE> for the C<ChangeSetType>
parameter. After the C<CreateChangeSet> call successfully completes,
AWS CloudFormation starts creating the change set. To check the status
of the change set or to review it, use the DescribeChangeSet action.

When you are satisfied with the changes the change set will make,
execute the change set by using the ExecuteChangeSet action. AWS
CloudFormation doesn't make changes until you execute the change set.


=head2 CreateStack

=over

=item StackName => Str

=item [Capabilities => ArrayRef[Str|Undef]]

=item [ClientRequestToken => Str]

=item [DisableRollback => Bool]

=item [EnableTerminationProtection => Bool]

=item [NotificationARNs => ArrayRef[Str|Undef]]

=item [OnFailure => Str]

=item [Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]]

=item [ResourceTypes => ArrayRef[Str|Undef]]

=item [RoleARN => Str]

=item [RollbackConfiguration => L<Paws::CloudFormation::RollbackConfiguration>]

=item [StackPolicyBody => Str]

=item [StackPolicyURL => Str]

=item [Tags => ArrayRef[L<Paws::CloudFormation::Tag>]]

=item [TemplateBody => Str]

=item [TemplateURL => Str]

=item [TimeoutInMinutes => Int]


=back

Each argument is described in detail in: L<Paws::CloudFormation::CreateStack>

Returns: a L<Paws::CloudFormation::CreateStackOutput> instance

Creates a stack as specified in the template. After the call completes
successfully, the stack creation starts. You can check the status of
the stack via the DescribeStacks API.


=head2 CreateStackInstances

=over

=item Accounts => ArrayRef[Str|Undef]

=item Regions => ArrayRef[Str|Undef]

=item StackSetName => Str

=item [OperationId => Str]

=item [OperationPreferences => L<Paws::CloudFormation::StackSetOperationPreferences>]

=item [ParameterOverrides => ArrayRef[L<Paws::CloudFormation::Parameter>]]


=back

Each argument is described in detail in: L<Paws::CloudFormation::CreateStackInstances>

Returns: a L<Paws::CloudFormation::CreateStackInstancesOutput> instance

Creates stack instances for the specified accounts, within the
specified regions. A stack instance refers to a stack in a specific
account and region. C<Accounts> and C<Regions> are required
parametersE<mdash>you must specify at least one account and one region.


=head2 CreateStackSet

=over

=item StackSetName => Str

=item [AdministrationRoleARN => Str]

=item [Capabilities => ArrayRef[Str|Undef]]

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [ExecutionRoleName => Str]

=item [Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]]

=item [Tags => ArrayRef[L<Paws::CloudFormation::Tag>]]

=item [TemplateBody => Str]

=item [TemplateURL => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::CreateStackSet>

Returns: a L<Paws::CloudFormation::CreateStackSetOutput> instance

Creates a stack set.


=head2 DeleteChangeSet

=over

=item ChangeSetName => Str

=item [StackName => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DeleteChangeSet>

Returns: a L<Paws::CloudFormation::DeleteChangeSetOutput> instance

Deletes the specified change set. Deleting change sets ensures that no
one executes the wrong change set.

If the call successfully completes, AWS CloudFormation successfully
deleted the change set.


=head2 DeleteStack

=over

=item StackName => Str

=item [ClientRequestToken => Str]

=item [RetainResources => ArrayRef[Str|Undef]]

=item [RoleARN => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DeleteStack>

Returns: nothing

Deletes a specified stack. Once the call completes successfully, stack
deletion starts. Deleted stacks do not show up in the DescribeStacks
API if the deletion has been completed successfully.


=head2 DeleteStackInstances

=over

=item Accounts => ArrayRef[Str|Undef]

=item Regions => ArrayRef[Str|Undef]

=item RetainStacks => Bool

=item StackSetName => Str

=item [OperationId => Str]

=item [OperationPreferences => L<Paws::CloudFormation::StackSetOperationPreferences>]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DeleteStackInstances>

Returns: a L<Paws::CloudFormation::DeleteStackInstancesOutput> instance

Deletes stack instances for the specified accounts, in the specified
regions.


=head2 DeleteStackSet

=over

=item StackSetName => Str


=back

Each argument is described in detail in: L<Paws::CloudFormation::DeleteStackSet>

Returns: a L<Paws::CloudFormation::DeleteStackSetOutput> instance

Deletes a stack set. Before you can delete a stack set, all of its
member stack instances must be deleted. For more information about how
to do this, see DeleteStackInstances.


=head2 DescribeAccountLimits

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DescribeAccountLimits>

Returns: a L<Paws::CloudFormation::DescribeAccountLimitsOutput> instance

Retrieves your account's AWS CloudFormation limits, such as the maximum
number of stacks that you can create in your account.


=head2 DescribeChangeSet

=over

=item ChangeSetName => Str

=item [NextToken => Str]

=item [StackName => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DescribeChangeSet>

Returns: a L<Paws::CloudFormation::DescribeChangeSetOutput> instance

Returns the inputs for the change set and a list of changes that AWS
CloudFormation will make if you execute the change set. For more
information, see Updating Stacks Using Change Sets
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html)
in the AWS CloudFormation User Guide.


=head2 DescribeStackDriftDetectionStatus

=over

=item StackDriftDetectionId => Str


=back

Each argument is described in detail in: L<Paws::CloudFormation::DescribeStackDriftDetectionStatus>

Returns: a L<Paws::CloudFormation::DescribeStackDriftDetectionStatusOutput> instance

Returns information about a stack drift detection operation. A stack
drift detection operation detects whether a stack's actual
configuration differs, or has I<drifted>, from it's expected
configuration, as defined in the stack template and any values
specified as template parameters. A stack is considered to have drifted
if one or more of its resources have drifted. For more information on
stack and resource drift, see Detecting Unregulated Configuration
Changes to Stacks and Resources
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).

Use DetectStackDrift to initiate a stack drift detection operation.
C<DetectStackDrift> returns a C<StackDriftDetectionId> you can use to
monitor the progress of the operation using
C<DescribeStackDriftDetectionStatus>. Once the drift detection
operation has completed, use DescribeStackResourceDrifts to return
drift information about the stack and its resources.


=head2 DescribeStackEvents

=over

=item [NextToken => Str]

=item [StackName => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DescribeStackEvents>

Returns: a L<Paws::CloudFormation::DescribeStackEventsOutput> instance

Returns all stack related events for a specified stack in reverse
chronological order. For more information about a stack's event
history, go to Stacks
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/concept-stack.html)
in the AWS CloudFormation User Guide.

You can list events for stacks that have failed to create or have been
deleted by specifying the unique stack identifier (stack ID).


=head2 DescribeStackInstance

=over

=item StackInstanceAccount => Str

=item StackInstanceRegion => Str

=item StackSetName => Str


=back

Each argument is described in detail in: L<Paws::CloudFormation::DescribeStackInstance>

Returns: a L<Paws::CloudFormation::DescribeStackInstanceOutput> instance

Returns the stack instance that's associated with the specified stack
set, AWS account, and region.

For a list of stack instances that are associated with a specific stack
set, use ListStackInstances.


=head2 DescribeStackResource

=over

=item LogicalResourceId => Str

=item StackName => Str


=back

Each argument is described in detail in: L<Paws::CloudFormation::DescribeStackResource>

Returns: a L<Paws::CloudFormation::DescribeStackResourceOutput> instance

Returns a description of the specified resource in the specified stack.

For deleted stacks, DescribeStackResource returns resource information
for up to 90 days after the stack has been deleted.


=head2 DescribeStackResourceDrifts

=over

=item StackName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StackResourceDriftStatusFilters => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DescribeStackResourceDrifts>

Returns: a L<Paws::CloudFormation::DescribeStackResourceDriftsOutput> instance

Returns drift information for the resources that have been checked for
drift in the specified stack. This includes actual and expected
configuration values for resources where AWS CloudFormation detects
configuration drift.

For a given stack, there will be one C<StackResourceDrift> for each
stack resource that has been checked for drift. Resources that have not
yet been checked for drift are not included. Resources that do not
currently support drift detection are not checked, and so not included.
For a list of resources that support drift detection, see Resources
that Support Drift Detection
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).

Use DetectStackResourceDrift to detect drift on individual resources,
or DetectStackDrift to detect drift on all supported resources for a
given stack.


=head2 DescribeStackResources

=over

=item [LogicalResourceId => Str]

=item [PhysicalResourceId => Str]

=item [StackName => Str]


=back

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
CloudFormation User Guide
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/).

A C<ValidationError> is returned if you specify both C<StackName> and
C<PhysicalResourceId> in the same request.


=head2 DescribeStacks

=over

=item [NextToken => Str]

=item [StackName => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DescribeStacks>

Returns: a L<Paws::CloudFormation::DescribeStacksOutput> instance

Returns the description for the specified stack; if no stack name was
specified, then it returns the description for all the stacks created.

If the stack does not exist, an C<AmazonCloudFormationException> is
returned.


=head2 DescribeStackSet

=over

=item StackSetName => Str


=back

Each argument is described in detail in: L<Paws::CloudFormation::DescribeStackSet>

Returns: a L<Paws::CloudFormation::DescribeStackSetOutput> instance

Returns the description of the specified stack set.


=head2 DescribeStackSetOperation

=over

=item OperationId => Str

=item StackSetName => Str


=back

Each argument is described in detail in: L<Paws::CloudFormation::DescribeStackSetOperation>

Returns: a L<Paws::CloudFormation::DescribeStackSetOperationOutput> instance

Returns the description of the specified stack set operation.


=head2 DetectStackDrift

=over

=item StackName => Str

=item [LogicalResourceIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DetectStackDrift>

Returns: a L<Paws::CloudFormation::DetectStackDriftOutput> instance

Detects whether a stack's actual configuration differs, or has
I<drifted>, from it's expected configuration, as defined in the stack
template and any values specified as template parameters. For each
resource in the stack that supports drift detection, AWS CloudFormation
compares the actual configuration of the resource with its expected
template configuration. Only resource properties explicitly defined in
the stack template are checked for drift. A stack is considered to have
drifted if one or more of its resources differ from their expected
template configurations. For more information, see Detecting
Unregulated Configuration Changes to Stacks and Resources
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).

Use C<DetectStackDrift> to detect drift on all supported resources for
a given stack, or DetectStackResourceDrift to detect drift on
individual resources.

For a list of stack resources that currently support drift detection,
see Resources that Support Drift Detection
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).

C<DetectStackDrift> can take up to several minutes, depending on the
number of resources contained within the stack. Use
DescribeStackDriftDetectionStatus to monitor the progress of a detect
stack drift operation. Once the drift detection operation has
completed, use DescribeStackResourceDrifts to return drift information
about the stack and its resources.

When detecting drift on a stack, AWS CloudFormation does not detect
drift on any nested stacks belonging to that stack. Perform
C<DetectStackDrift> directly on the nested stack itself.


=head2 DetectStackResourceDrift

=over

=item LogicalResourceId => Str

=item StackName => Str


=back

Each argument is described in detail in: L<Paws::CloudFormation::DetectStackResourceDrift>

Returns: a L<Paws::CloudFormation::DetectStackResourceDriftOutput> instance

Returns information about whether a resource's actual configuration
differs, or has I<drifted>, from it's expected configuration, as
defined in the stack template and any values specified as template
parameters. This information includes actual and expected property
values for resources in which AWS CloudFormation detects drift. Only
resource properties explicitly defined in the stack template are
checked for drift. For more information about stack and resource drift,
see Detecting Unregulated Configuration Changes to Stacks and Resources
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).

Use C<DetectStackResourceDrift> to detect drift on individual
resources, or DetectStackDrift to detect drift on all resources in a
given stack that support drift detection.

Resources that do not currently support drift detection cannot be
checked. For a list of resources that support drift detection, see
Resources that Support Drift Detection
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).


=head2 EstimateTemplateCost

=over

=item [Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]]

=item [TemplateBody => Str]

=item [TemplateURL => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::EstimateTemplateCost>

Returns: a L<Paws::CloudFormation::EstimateTemplateCostOutput> instance

Returns the estimated monthly cost of a template. The return value is
an AWS Simple Monthly Calculator URL with a query string that describes
the resources required to run the template.


=head2 ExecuteChangeSet

=over

=item ChangeSetName => Str

=item [ClientRequestToken => Str]

=item [StackName => Str]


=back

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


=head2 GetStackPolicy

=over

=item StackName => Str


=back

Each argument is described in detail in: L<Paws::CloudFormation::GetStackPolicy>

Returns: a L<Paws::CloudFormation::GetStackPolicyOutput> instance

Returns the stack policy for a specified stack. If a stack doesn't have
a policy, a null value is returned.


=head2 GetTemplate

=over

=item [ChangeSetName => Str]

=item [StackName => Str]

=item [TemplateStage => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::GetTemplate>

Returns: a L<Paws::CloudFormation::GetTemplateOutput> instance

Returns the template body for a specified stack. You can get the
template for running or deleted stacks.

For deleted stacks, GetTemplate returns the template for up to 90 days
after the stack has been deleted.

If the template does not exist, a C<ValidationError> is returned.


=head2 GetTemplateSummary

=over

=item [StackName => Str]

=item [StackSetName => Str]

=item [TemplateBody => Str]

=item [TemplateURL => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::GetTemplateSummary>

Returns: a L<Paws::CloudFormation::GetTemplateSummaryOutput> instance

Returns information about a new or existing template. The
C<GetTemplateSummary> action is useful for viewing parameter
information, such as default parameter values and parameter types,
before you create or update a stack or stack set.

You can use the C<GetTemplateSummary> action when you submit a
template, or you can get template information for a stack set, or a
running or deleted stack.

For deleted stacks, C<GetTemplateSummary> returns the template
information for up to 90 days after the stack has been deleted. If the
template does not exist, a C<ValidationError> is returned.


=head2 ListChangeSets

=over

=item StackName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::ListChangeSets>

Returns: a L<Paws::CloudFormation::ListChangeSetsOutput> instance

Returns the ID and status of each active change set for a stack. For
example, AWS CloudFormation lists change sets that are in the
C<CREATE_IN_PROGRESS> or C<CREATE_PENDING> state.


=head2 ListExports

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::ListExports>

Returns: a L<Paws::CloudFormation::ListExportsOutput> instance

Lists all exported output values in the account and region in which you
call this action. Use this action to see the exported output values
that you can import into other stacks. To import values, use the
C<Fn::ImportValue>
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html)
function.

For more information, see AWS CloudFormation Export Stack Output Values
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html).


=head2 ListImports

=over

=item ExportName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::ListImports>

Returns: a L<Paws::CloudFormation::ListImportsOutput> instance

Lists all stacks that are importing an exported output value. To modify
or remove an exported output value, first use this action to see which
stacks are using it. To see the exported output values in your account,
see ListExports.

For more information about importing an exported output value, see the
C<Fn::ImportValue>
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html)
function.


=head2 ListStackInstances

=over

=item StackSetName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StackInstanceAccount => Str]

=item [StackInstanceRegion => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::ListStackInstances>

Returns: a L<Paws::CloudFormation::ListStackInstancesOutput> instance

Returns summary information about stack instances that are associated
with the specified stack set. You can filter for stack instances that
are associated with a specific AWS account name or region.


=head2 ListStackResources

=over

=item StackName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::ListStackResources>

Returns: a L<Paws::CloudFormation::ListStackResourcesOutput> instance

Returns descriptions of all resources of the specified stack.

For deleted stacks, ListStackResources returns resource information for
up to 90 days after the stack has been deleted.


=head2 ListStacks

=over

=item [NextToken => Str]

=item [StackStatusFilter => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::CloudFormation::ListStacks>

Returns: a L<Paws::CloudFormation::ListStacksOutput> instance

Returns the summary information for stacks whose status matches the
specified StackStatusFilter. Summary information for stacks that have
been deleted is kept for 90 days after the stack is deleted. If no
StackStatusFilter is specified, summary information for all stacks is
returned (including existing stacks and stacks that have been deleted).


=head2 ListStackSetOperationResults

=over

=item OperationId => Str

=item StackSetName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::ListStackSetOperationResults>

Returns: a L<Paws::CloudFormation::ListStackSetOperationResultsOutput> instance

Returns summary information about the results of a stack set operation.


=head2 ListStackSetOperations

=over

=item StackSetName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::ListStackSetOperations>

Returns: a L<Paws::CloudFormation::ListStackSetOperationsOutput> instance

Returns summary information about operations performed on a stack set.


=head2 ListStackSets

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::ListStackSets>

Returns: a L<Paws::CloudFormation::ListStackSetsOutput> instance

Returns summary information about stack sets that are associated with
the user.


=head2 SetStackPolicy

=over

=item StackName => Str

=item [StackPolicyBody => Str]

=item [StackPolicyURL => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::SetStackPolicy>

Returns: nothing

Sets a stack policy for a specified stack.


=head2 SignalResource

=over

=item LogicalResourceId => Str

=item StackName => Str

=item Status => Str

=item UniqueId => Str


=back

Each argument is described in detail in: L<Paws::CloudFormation::SignalResource>

Returns: nothing

Sends a signal to the specified resource with a success or failure
status. You can use the SignalResource API in conjunction with a
creation policy or update policy. AWS CloudFormation doesn't proceed
with a stack creation or update until resources receive the required
number of signals or the timeout period is exceeded. The SignalResource
API is useful in cases where you want to send signals from anywhere
other than an Amazon EC2 instance.


=head2 StopStackSetOperation

=over

=item OperationId => Str

=item StackSetName => Str


=back

Each argument is described in detail in: L<Paws::CloudFormation::StopStackSetOperation>

Returns: a L<Paws::CloudFormation::StopStackSetOperationOutput> instance

Stops an in-progress operation on a stack set and its associated stack
instances.


=head2 UpdateStack

=over

=item StackName => Str

=item [Capabilities => ArrayRef[Str|Undef]]

=item [ClientRequestToken => Str]

=item [NotificationARNs => ArrayRef[Str|Undef]]

=item [Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]]

=item [ResourceTypes => ArrayRef[Str|Undef]]

=item [RoleARN => Str]

=item [RollbackConfiguration => L<Paws::CloudFormation::RollbackConfiguration>]

=item [StackPolicyBody => Str]

=item [StackPolicyDuringUpdateBody => Str]

=item [StackPolicyDuringUpdateURL => Str]

=item [StackPolicyURL => Str]

=item [Tags => ArrayRef[L<Paws::CloudFormation::Tag>]]

=item [TemplateBody => Str]

=item [TemplateURL => Str]

=item [UsePreviousTemplate => Bool]


=back

Each argument is described in detail in: L<Paws::CloudFormation::UpdateStack>

Returns: a L<Paws::CloudFormation::UpdateStackOutput> instance

Updates a stack as specified in the template. After the call completes
successfully, the stack update starts. You can check the status of the
stack via the DescribeStacks action.

To get a copy of the template for an existing stack, you can use the
GetTemplate action.

For more information about creating an update template, updating a
stack, and monitoring the progress of the update, see Updating a Stack
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html).


=head2 UpdateStackInstances

=over

=item Accounts => ArrayRef[Str|Undef]

=item Regions => ArrayRef[Str|Undef]

=item StackSetName => Str

=item [OperationId => Str]

=item [OperationPreferences => L<Paws::CloudFormation::StackSetOperationPreferences>]

=item [ParameterOverrides => ArrayRef[L<Paws::CloudFormation::Parameter>]]


=back

Each argument is described in detail in: L<Paws::CloudFormation::UpdateStackInstances>

Returns: a L<Paws::CloudFormation::UpdateStackInstancesOutput> instance

Updates the parameter values for stack instances for the specified
accounts, within the specified regions. A stack instance refers to a
stack in a specific account and region.

You can only update stack instances in regions and accounts where they
already exist; to create additional stack instances, use
CreateStackInstances
(http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateStackInstances.html).

During stack set updates, any parameters overridden for a stack
instance are not updated, but retain their overridden value.

You can only update the parameter I<values> that are specified in the
stack set; to add or delete a parameter itself, use UpdateStackSet
(http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html)
to update the stack set template. If you add a parameter to a template,
before you can override the parameter value specified in the stack set
you must first use UpdateStackSet
(http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html)
to update all stack instances with the updated template and parameter
value specified in the stack set. Once a stack instance has been
updated with the new parameter, you can then override the parameter
value using C<UpdateStackInstances>.


=head2 UpdateStackSet

=over

=item StackSetName => Str

=item [Accounts => ArrayRef[Str|Undef]]

=item [AdministrationRoleARN => Str]

=item [Capabilities => ArrayRef[Str|Undef]]

=item [Description => Str]

=item [ExecutionRoleName => Str]

=item [OperationId => Str]

=item [OperationPreferences => L<Paws::CloudFormation::StackSetOperationPreferences>]

=item [Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]]

=item [Regions => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::CloudFormation::Tag>]]

=item [TemplateBody => Str]

=item [TemplateURL => Str]

=item [UsePreviousTemplate => Bool]


=back

Each argument is described in detail in: L<Paws::CloudFormation::UpdateStackSet>

Returns: a L<Paws::CloudFormation::UpdateStackSetOutput> instance

Updates the stack set, and associated stack instances in the specified
accounts and regions.

Even if the stack set operation created by updating the stack set fails
(completely or partially, below or above a specified failure
tolerance), the stack set is updated with your changes. Subsequent
CreateStackInstances calls on the specified stack set use the updated
stack set.


=head2 UpdateTerminationProtection

=over

=item EnableTerminationProtection => Bool

=item StackName => Str


=back

Each argument is described in detail in: L<Paws::CloudFormation::UpdateTerminationProtection>

Returns: a L<Paws::CloudFormation::UpdateTerminationProtectionOutput> instance

Updates termination protection for the specified stack. If a user
attempts to delete a stack with termination protection enabled, the
operation fails and the stack remains unchanged. For more information,
see Protecting a Stack From Being Deleted in the I<AWS CloudFormation
User Guide>.

For nested stacks, termination protection is set on the root stack and
cannot be changed directly on the nested stack.


=head2 ValidateTemplate

=over

=item [TemplateBody => Str]

=item [TemplateURL => Str]


=back

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

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

