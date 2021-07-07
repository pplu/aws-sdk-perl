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

  
  sub ActivateType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::ActivateType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDescribeTypeConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::BatchDescribeTypeConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
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
  sub DeactivateType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DeactivateType', @_);
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
  sub DeregisterType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DeregisterType', @_);
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
  sub DescribePublisher {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DescribePublisher', @_);
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
  sub DescribeType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DescribeType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTypeRegistration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DescribeTypeRegistration', @_);
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
  sub DetectStackSetDrift {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::DetectStackSetDrift', @_);
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
  sub ListTypeRegistrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::ListTypeRegistrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::ListTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTypeVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::ListTypeVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PublishType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::PublishType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RecordHandlerProgress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::RecordHandlerProgress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterPublisher {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::RegisterPublisher', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::RegisterType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetStackPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::SetStackPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetTypeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::SetTypeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetTypeDefaultVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::SetTypeDefaultVersion', @_);
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
  sub TestType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudFormation::TestType', @_);
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
  
  sub DescribeAllAccountLimits {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAccountLimits(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeAccountLimits(@_, NextToken => $next_result->NextToken);
        push @{ $result->AccountLimits }, @{ $next_result->AccountLimits };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AccountLimits') foreach (@{ $result->AccountLimits });
        $result = $self->DescribeAccountLimits(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AccountLimits') foreach (@{ $result->AccountLimits });
    }

    return undef
  }
  sub DescribeAllChangeSet {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeChangeSet(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeChangeSet(@_, NextToken => $next_result->NextToken);
        push @{ $result->Changes }, @{ $next_result->Changes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Changes') foreach (@{ $result->Changes });
        $result = $self->DescribeChangeSet(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Changes') foreach (@{ $result->Changes });
    }

    return undef
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
  sub ListAllChangeSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListChangeSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListChangeSets(@_, NextToken => $next_result->NextToken);
        push @{ $result->Summaries }, @{ $next_result->Summaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Summaries') foreach (@{ $result->Summaries });
        $result = $self->ListChangeSets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Summaries') foreach (@{ $result->Summaries });
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
  sub ListAllStackInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStackInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListStackInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->Summaries }, @{ $next_result->Summaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Summaries') foreach (@{ $result->Summaries });
        $result = $self->ListStackInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Summaries') foreach (@{ $result->Summaries });
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
  sub ListAllStackSetOperationResults {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStackSetOperationResults(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListStackSetOperationResults(@_, NextToken => $next_result->NextToken);
        push @{ $result->Summaries }, @{ $next_result->Summaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Summaries') foreach (@{ $result->Summaries });
        $result = $self->ListStackSetOperationResults(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Summaries') foreach (@{ $result->Summaries });
    }

    return undef
  }
  sub ListAllStackSetOperations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStackSetOperations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListStackSetOperations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Summaries }, @{ $next_result->Summaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Summaries') foreach (@{ $result->Summaries });
        $result = $self->ListStackSetOperations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Summaries') foreach (@{ $result->Summaries });
    }

    return undef
  }
  sub ListAllStackSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStackSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListStackSets(@_, NextToken => $next_result->NextToken);
        push @{ $result->Summaries }, @{ $next_result->Summaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Summaries') foreach (@{ $result->Summaries });
        $result = $self->ListStackSets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Summaries') foreach (@{ $result->Summaries });
    }

    return undef
  }
  sub ListAllTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTypes(@_, NextToken => $next_result->NextToken);
        push @{ $result->TypeSummaries }, @{ $next_result->TypeSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TypeSummaries') foreach (@{ $result->TypeSummaries });
        $result = $self->ListTypes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TypeSummaries') foreach (@{ $result->TypeSummaries });
    }

    return undef
  }


  sub operations { qw/ActivateType BatchDescribeTypeConfigurations CancelUpdateStack ContinueUpdateRollback CreateChangeSet CreateStack CreateStackInstances CreateStackSet DeactivateType DeleteChangeSet DeleteStack DeleteStackInstances DeleteStackSet DeregisterType DescribeAccountLimits DescribeChangeSet DescribePublisher DescribeStackDriftDetectionStatus DescribeStackEvents DescribeStackInstance DescribeStackResource DescribeStackResourceDrifts DescribeStackResources DescribeStacks DescribeStackSet DescribeStackSetOperation DescribeType DescribeTypeRegistration DetectStackDrift DetectStackResourceDrift DetectStackSetDrift EstimateTemplateCost ExecuteChangeSet GetStackPolicy GetTemplate GetTemplateSummary ListChangeSets ListExports ListImports ListStackInstances ListStackResources ListStacks ListStackSetOperationResults ListStackSetOperations ListStackSets ListTypeRegistrations ListTypes ListTypeVersions PublishType RecordHandlerProgress RegisterPublisher RegisterType SetStackPolicy SetTypeConfiguration SetTypeDefaultVersion SignalResource StopStackSetOperation TestType UpdateStack UpdateStackInstances UpdateStackSet UpdateTerminationProtection ValidateTemplate / }

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
(https://docs.aws.amazon.com/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15>


=head1 METHODS

=head2 ActivateType

=over

=item [AutoUpdate => Bool]

=item [ExecutionRoleArn => Str]

=item [LoggingConfig => L<Paws::CloudFormation::LoggingConfig>]

=item [MajorVersion => Int]

=item [PublicTypeArn => Str]

=item [PublisherId => Str]

=item [Type => Str]

=item [TypeName => Str]

=item [TypeNameAlias => Str]

=item [VersionBump => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::ActivateType>

Returns: a L<Paws::CloudFormation::ActivateTypeOutput> instance

Activates a public third-party extension, making it available for use
in stack templates. For more information, see Using public extensions
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html)
in the I<CloudFormation User Guide>.

Once you have activated a public third-party extension in your account
and region, use SetTypeConfiguration to specify configuration
properties for the extension. For more information, see Configuring
extensions at the account level
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration)
in the I<CloudFormation User Guide>.


=head2 BatchDescribeTypeConfigurations

=over

=item TypeConfigurationIdentifiers => ArrayRef[L<Paws::CloudFormation::TypeConfigurationIdentifier>]


=back

Each argument is described in detail in: L<Paws::CloudFormation::BatchDescribeTypeConfigurations>

Returns: a L<Paws::CloudFormation::BatchDescribeTypeConfigurationsOutput> instance

Returns configuration data for the specified CloudFormation extensions,
from the CloudFormation registry for the account and region.

For more information, see Configuring extensions at the account level
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration)
in the I<CloudFormation User Guide>.


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
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed)
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

=item [IncludeNestedStacks => Bool]

=item [NotificationARNs => ArrayRef[Str|Undef]]

=item [Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]]

=item [ResourcesToImport => ArrayRef[L<Paws::CloudFormation::ResourceToImport>]]

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
parameter. To create a change set for an import operation, specify
C<IMPORT> for the C<ChangeSetType> parameter. After the
C<CreateChangeSet> call successfully completes, AWS CloudFormation
starts creating the change set. To check the status of the change set
or to review it, use the DescribeChangeSet action.

When you are satisfied with the changes the change set will make,
execute the change set by using the ExecuteChangeSet action. AWS
CloudFormation doesn't make changes until you execute the change set.

To create a change set for the entire stack hierachy, set
C<IncludeNestedStacks> to C<True>.


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

=item Regions => ArrayRef[Str|Undef]

=item StackSetName => Str

=item [Accounts => ArrayRef[Str|Undef]]

=item [CallAs => Str]

=item [DeploymentTargets => L<Paws::CloudFormation::DeploymentTargets>]

=item [OperationId => Str]

=item [OperationPreferences => L<Paws::CloudFormation::StackSetOperationPreferences>]

=item [ParameterOverrides => ArrayRef[L<Paws::CloudFormation::Parameter>]]


=back

Each argument is described in detail in: L<Paws::CloudFormation::CreateStackInstances>

Returns: a L<Paws::CloudFormation::CreateStackInstancesOutput> instance

Creates stack instances for the specified accounts, within the
specified Regions. A stack instance refers to a stack in a specific
account and Region. You must specify at least one value for either
C<Accounts> or C<DeploymentTargets>, and you must specify at least one
value for C<Regions>.


=head2 CreateStackSet

=over

=item StackSetName => Str

=item [AdministrationRoleARN => Str]

=item [AutoDeployment => L<Paws::CloudFormation::AutoDeployment>]

=item [CallAs => Str]

=item [Capabilities => ArrayRef[Str|Undef]]

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [ExecutionRoleName => Str]

=item [Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]]

=item [PermissionModel => Str]

=item [Tags => ArrayRef[L<Paws::CloudFormation::Tag>]]

=item [TemplateBody => Str]

=item [TemplateURL => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::CreateStackSet>

Returns: a L<Paws::CloudFormation::CreateStackSetOutput> instance

Creates a stack set.


=head2 DeactivateType

=over

=item [Arn => Str]

=item [Type => Str]

=item [TypeName => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DeactivateType>

Returns: a L<Paws::CloudFormation::DeactivateTypeOutput> instance

Deactivates a public extension that was previously activated in this
account and region.

Once deactivated, an extension cannot be used in any CloudFormation
operation. This includes stack update operations where the stack
template includes the extension, even if no updates are being made to
the extension. In addition, deactivated extensions are not
automatically updated if a new version of the extension is released.


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

If C<IncludeNestedStacks> specifies C<True> during the creation of the
nested change set, then C<DeleteChangeSet> will delete all change sets
that belong to the stacks hierarchy and will also delete all change
sets for nested stacks with the status of C<REVIEW_IN_PROGRESS>.


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

=item Regions => ArrayRef[Str|Undef]

=item RetainStacks => Bool

=item StackSetName => Str

=item [Accounts => ArrayRef[Str|Undef]]

=item [CallAs => Str]

=item [DeploymentTargets => L<Paws::CloudFormation::DeploymentTargets>]

=item [OperationId => Str]

=item [OperationPreferences => L<Paws::CloudFormation::StackSetOperationPreferences>]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DeleteStackInstances>

Returns: a L<Paws::CloudFormation::DeleteStackInstancesOutput> instance

Deletes stack instances for the specified accounts, in the specified
Regions.


=head2 DeleteStackSet

=over

=item StackSetName => Str

=item [CallAs => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DeleteStackSet>

Returns: a L<Paws::CloudFormation::DeleteStackSetOutput> instance

Deletes a stack set. Before you can delete a stack set, all of its
member stack instances must be deleted. For more information about how
to do this, see DeleteStackInstances.


=head2 DeregisterType

=over

=item [Arn => Str]

=item [Type => Str]

=item [TypeName => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DeregisterType>

Returns: a L<Paws::CloudFormation::DeregisterTypeOutput> instance

Marks an extension or extension version as C<DEPRECATED> in the
CloudFormation registry, removing it from active use. Deprecated
extensions or extension versions cannot be used in CloudFormation
operations.

To deregister an entire extension, you must individually deregister all
active versions of that extension. If an extension has only a single
active version, deregistering that version results in the extension
itself being deregistered and marked as deprecated in the registry.

You cannot deregister the default version of an extension if there are
other active version of that extension. If you do deregister the
default version of an extension, the textensionype itself is
deregistered as well and marked as deprecated.

To view the deprecation status of an extension or extension version,
use DescribeType
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html).


=head2 DescribeAccountLimits

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DescribeAccountLimits>

Returns: a L<Paws::CloudFormation::DescribeAccountLimitsOutput> instance

Retrieves your account's AWS CloudFormation limits, such as the maximum
number of stacks that you can create in your account. For more
information about account limits, see AWS CloudFormation Limits
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html)
in the I<AWS CloudFormation User Guide>.


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
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html)
in the AWS CloudFormation User Guide.


=head2 DescribePublisher

=over

=item [PublisherId => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DescribePublisher>

Returns: a L<Paws::CloudFormation::DescribePublisherOutput> instance

Returns information about a CloudFormation extension publisher.

If you do not supply a C<PublisherId>, and you have registered as an
extension publisher, C<DescribePublisher> returns information about
your own publisher account.

For more information on registering as a publisher, see:

=over

=item *

RegisterPublisher
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterPublisher.html)

=item *

Publishing extensions to make them available for public use
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html)
in the I<CloudFormation CLI User Guide>

=back



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
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).

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
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/concept-stack.html)
in the AWS CloudFormation User Guide.

You can list events for stacks that have failed to create or have been
deleted by specifying the unique stack identifier (stack ID).


=head2 DescribeStackInstance

=over

=item StackInstanceAccount => Str

=item StackInstanceRegion => Str

=item StackSetName => Str

=item [CallAs => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DescribeStackInstance>

Returns: a L<Paws::CloudFormation::DescribeStackInstanceOutput> instance

Returns the stack instance that's associated with the specified stack
set, AWS account, and Region.

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
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).

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
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/).

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

=item [CallAs => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DescribeStackSet>

Returns: a L<Paws::CloudFormation::DescribeStackSetOutput> instance

Returns the description of the specified stack set.


=head2 DescribeStackSetOperation

=over

=item OperationId => Str

=item StackSetName => Str

=item [CallAs => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DescribeStackSetOperation>

Returns: a L<Paws::CloudFormation::DescribeStackSetOperationOutput> instance

Returns the description of the specified stack set operation.


=head2 DescribeType

=over

=item [Arn => Str]

=item [PublicVersionNumber => Str]

=item [PublisherId => Str]

=item [Type => Str]

=item [TypeName => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DescribeType>

Returns: a L<Paws::CloudFormation::DescribeTypeOutput> instance

Returns detailed information about an extension that has been
registered.

If you specify a C<VersionId>, C<DescribeType> returns information
about that specific extension version. Otherwise, it returns
information about the default extension version.


=head2 DescribeTypeRegistration

=over

=item RegistrationToken => Str


=back

Each argument is described in detail in: L<Paws::CloudFormation::DescribeTypeRegistration>

Returns: a L<Paws::CloudFormation::DescribeTypeRegistrationOutput> instance

Returns information about an extension's registration, including its
current status and type and version identifiers.

When you initiate a registration request using C< RegisterType >, you
can then use C< DescribeTypeRegistration > to monitor the progress of
that registration request.

Once the registration request has completed, use C< DescribeType > to
return detailed information about an extension.


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
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).

Use C<DetectStackDrift> to detect drift on all supported resources for
a given stack, or DetectStackResourceDrift to detect drift on
individual resources.

For a list of stack resources that currently support drift detection,
see Resources that Support Drift Detection
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).

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
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).

Use C<DetectStackResourceDrift> to detect drift on individual
resources, or DetectStackDrift to detect drift on all resources in a
given stack that support drift detection.

Resources that do not currently support drift detection cannot be
checked. For a list of resources that support drift detection, see
Resources that Support Drift Detection
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).


=head2 DetectStackSetDrift

=over

=item StackSetName => Str

=item [CallAs => Str]

=item [OperationId => Str]

=item [OperationPreferences => L<Paws::CloudFormation::StackSetOperationPreferences>]


=back

Each argument is described in detail in: L<Paws::CloudFormation::DetectStackSetDrift>

Returns: a L<Paws::CloudFormation::DetectStackSetDriftOutput> instance

Detect drift on a stack set. When CloudFormation performs drift
detection on a stack set, it performs drift detection on the stack
associated with each stack instance in the stack set. For more
information, see How CloudFormation Performs Drift Detection on a Stack
Set
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html).

C<DetectStackSetDrift> returns the C<OperationId> of the stack set
drift detection operation. Use this operation id with C<
DescribeStackSetOperation > to monitor the progress of the drift
detection operation. The drift detection operation may take some time,
depending on the number of stack instances included in the stack set,
as well as the number of resources included in each stack.

Once the operation has completed, use the following actions to return
drift information:

=over

=item *

Use C< DescribeStackSet > to return detailed information about the
stack set, including detailed information about the last I<completed>
drift operation performed on the stack set. (Information about drift
operations that are in progress is not included.)

=item *

Use C< ListStackInstances > to return a list of stack instances
belonging to the stack set, including the drift status and last drift
time checked of each instance.

=item *

Use C< DescribeStackInstance > to return detailed information about a
specific stack instance, including its drift status and last drift time
checked.

=back

For more information on performing a drift detection operation on a
stack set, see Detecting Unmanaged Changes in Stack Sets
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html).

You can only run a single drift detection operation on a given stack
set at one time.

To stop a drift detection stack set operation, use C<
StopStackSetOperation >.


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

To create a change set for the entire stack hierachy,
C<IncludeNestedStacks> must have been set to C<True>.


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

=item [CallAs => Str]

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

Lists all exported output values in the account and Region in which you
call this action. Use this action to see the exported output values
that you can import into other stacks. To import values, use the
C<Fn::ImportValue>
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html)
function.

For more information, see AWS CloudFormation Export Stack Output Values
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html).


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
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html)
function.


=head2 ListStackInstances

=over

=item StackSetName => Str

=item [CallAs => Str]

=item [Filters => ArrayRef[L<Paws::CloudFormation::StackInstanceFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StackInstanceAccount => Str]

=item [StackInstanceRegion => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::ListStackInstances>

Returns: a L<Paws::CloudFormation::ListStackInstancesOutput> instance

Returns summary information about stack instances that are associated
with the specified stack set. You can filter for stack instances that
are associated with a specific AWS account name or Region, or that have
a specific status.


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

=item [CallAs => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::ListStackSetOperationResults>

Returns: a L<Paws::CloudFormation::ListStackSetOperationResultsOutput> instance

Returns summary information about the results of a stack set operation.


=head2 ListStackSetOperations

=over

=item StackSetName => Str

=item [CallAs => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::ListStackSetOperations>

Returns: a L<Paws::CloudFormation::ListStackSetOperationsOutput> instance

Returns summary information about operations performed on a stack set.


=head2 ListStackSets

=over

=item [CallAs => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::ListStackSets>

Returns: a L<Paws::CloudFormation::ListStackSetsOutput> instance

Returns summary information about stack sets that are associated with
the user.

=over

=item *

[Self-managed permissions] If you set the C<CallAs> parameter to
C<SELF> while signed in to your AWS account, C<ListStackSets> returns
all self-managed stack sets in your AWS account.

=item *

[Service-managed permissions] If you set the C<CallAs> parameter to
C<SELF> while signed in to the organization's management account,
C<ListStackSets> returns all stack sets in the management account.

=item *

[Service-managed permissions] If you set the C<CallAs> parameter to
C<DELEGATED_ADMIN> while signed in to your member account,
C<ListStackSets> returns all stack sets with service-managed
permissions in the management account.

=back



=head2 ListTypeRegistrations

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegistrationStatusFilter => Str]

=item [Type => Str]

=item [TypeArn => Str]

=item [TypeName => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::ListTypeRegistrations>

Returns: a L<Paws::CloudFormation::ListTypeRegistrationsOutput> instance

Returns a list of registration tokens for the specified extension(s).


=head2 ListTypes

=over

=item [DeprecatedStatus => Str]

=item [Filters => L<Paws::CloudFormation::TypeFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProvisioningType => Str]

=item [Type => Str]

=item [Visibility => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::ListTypes>

Returns: a L<Paws::CloudFormation::ListTypesOutput> instance

Returns summary information about extension that have been registered
with CloudFormation.


=head2 ListTypeVersions

=over

=item [Arn => Str]

=item [DeprecatedStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PublisherId => Str]

=item [Type => Str]

=item [TypeName => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::ListTypeVersions>

Returns: a L<Paws::CloudFormation::ListTypeVersionsOutput> instance

Returns summary information about the versions of an extension.


=head2 PublishType

=over

=item [Arn => Str]

=item [PublicVersionNumber => Str]

=item [Type => Str]

=item [TypeName => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::PublishType>

Returns: a L<Paws::CloudFormation::PublishTypeOutput> instance

Publishes the specified extension to the CloudFormation registry as a
public extension in this region. Public extensions are available for
use by all CloudFormation users. For more information on publishing
extensions, see Publishing extensions to make them available for public
use
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html)
in the I<CloudFormation CLI User Guide>.

To publish an extension, you must be registered as a publisher with
CloudFormation. For more information, see RegisterPublisher
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterPublisher.html).


=head2 RecordHandlerProgress

=over

=item BearerToken => Str

=item OperationStatus => Str

=item [ClientRequestToken => Str]

=item [CurrentOperationStatus => Str]

=item [ErrorCode => Str]

=item [ResourceModel => Str]

=item [StatusMessage => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::RecordHandlerProgress>

Returns: a L<Paws::CloudFormation::RecordHandlerProgressOutput> instance

Reports progress of a resource handler to CloudFormation.

Reserved for use by the CloudFormation CLI
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html).
Do not use this API in your code.


=head2 RegisterPublisher

=over

=item [AcceptTermsAndConditions => Bool]

=item [ConnectionArn => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::RegisterPublisher>

Returns: a L<Paws::CloudFormation::RegisterPublisherOutput> instance

Registers your account as a publisher of public extensions in the
CloudFormation registry. Public extensions are available for use by all
CloudFormation users. This publisher ID applies to your account in all
AWS regions.

For information on requirements for registering as a public extension
publisher, see Registering your account to publish CloudFormation
extensions
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-prereqs)
in the I<CloudFormation CLI User Guide>.


=head2 RegisterType

=over

=item SchemaHandlerPackage => Str

=item TypeName => Str

=item [ClientRequestToken => Str]

=item [ExecutionRoleArn => Str]

=item [LoggingConfig => L<Paws::CloudFormation::LoggingConfig>]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::RegisterType>

Returns: a L<Paws::CloudFormation::RegisterTypeOutput> instance

Registers an extension with the CloudFormation service. Registering an
extension makes it available for use in CloudFormation templates in
your AWS account, and includes:

=over

=item *

Validating the extension schema

=item *

Determining which handlers, if any, have been specified for the
extension

=item *

Making the extension available for use in your account

=back

For more information on how to develop extensions and ready them for
registeration, see Creating Resource Providers
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-types.html)
in the I<CloudFormation CLI User Guide>.

You can have a maximum of 50 resource extension versions registered at
a time. This maximum is per account and per region. Use DeregisterType
to deregister specific extension versions if necessary.

Once you have initiated a registration request using C< RegisterType >,
you can use C< DescribeTypeRegistration > to monitor the progress of
the registration request.

Once you have registered a private extension in your account and
region, use SetTypeConfiguration to specify configuration properties
for the extension. For more information, see Configuring extensions at
the account level
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration)
in the I<CloudFormation User Guide>.


=head2 SetStackPolicy

=over

=item StackName => Str

=item [StackPolicyBody => Str]

=item [StackPolicyURL => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::SetStackPolicy>

Returns: nothing

Sets a stack policy for a specified stack.


=head2 SetTypeConfiguration

=over

=item Configuration => Str

=item [ConfigurationAlias => Str]

=item [Type => Str]

=item [TypeArn => Str]

=item [TypeName => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::SetTypeConfiguration>

Returns: a L<Paws::CloudFormation::SetTypeConfigurationOutput> instance

Specifies the configuration data for a registered CloudFormation
extension, in the given account and region.

To view the current configuration data for an extension, refer to the
C<ConfigurationSchema> element of DescribeType. For more information,
see Configuring extensions at the account level
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration)
in the I<CloudFormation User Guide>.

It is strongly recommended that you use dynamic references to restrict
sensitive configuration definitions, such as third-party credentials.
For more details on dynamic references, see Using dynamic references to
specify template values (https://docs.aws.amazon.com/) in the I<AWS
CloudFormation User Guide>.


=head2 SetTypeDefaultVersion

=over

=item [Arn => Str]

=item [Type => Str]

=item [TypeName => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::SetTypeDefaultVersion>

Returns: a L<Paws::CloudFormation::SetTypeDefaultVersionOutput> instance

Specify the default version of an extension. The default version of an
extension will be used in CloudFormation operations.


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

=item [CallAs => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::StopStackSetOperation>

Returns: a L<Paws::CloudFormation::StopStackSetOperationOutput> instance

Stops an in-progress operation on a stack set and its associated stack
instances.


=head2 TestType

=over

=item [Arn => Str]

=item [LogDeliveryBucket => Str]

=item [Type => Str]

=item [TypeName => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::CloudFormation::TestType>

Returns: a L<Paws::CloudFormation::TestTypeOutput> instance

Tests a registered extension to make sure it meets all necessary
requirements for being published in the CloudFormation registry.

=over

=item *

For resource types, this includes passing all contracts tests defined
for the type.

=item *

For modules, this includes determining if the module's model meets all
necessary requirements.

=back

For more information, see Testing your public extension prior to
publishing
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-testing)
in the I<CloudFormation CLI User Guide>.

If you do not specify a version, CloudFormation uses the default
version of the extension in your account and region for testing.

To perform testing, CloudFormation assumes the execution role specified
when the test was registered. For more information, see RegisterType.

Once you've initiated testing on an extension using C<TestType>, you
can use DescribeType
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html)
to monitor the current test status and test status description for the
extension.

An extension must have a test status of C<PASSED> before it can be
published. For more information, see Publishing extensions to make them
available for public use
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-publish.html)
in the I<CloudFormation CLI User Guide>.


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
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html).


=head2 UpdateStackInstances

=over

=item Regions => ArrayRef[Str|Undef]

=item StackSetName => Str

=item [Accounts => ArrayRef[Str|Undef]]

=item [CallAs => Str]

=item [DeploymentTargets => L<Paws::CloudFormation::DeploymentTargets>]

=item [OperationId => Str]

=item [OperationPreferences => L<Paws::CloudFormation::StackSetOperationPreferences>]

=item [ParameterOverrides => ArrayRef[L<Paws::CloudFormation::Parameter>]]


=back

Each argument is described in detail in: L<Paws::CloudFormation::UpdateStackInstances>

Returns: a L<Paws::CloudFormation::UpdateStackInstancesOutput> instance

Updates the parameter values for stack instances for the specified
accounts, within the specified Regions. A stack instance refers to a
stack in a specific account and Region.

You can only update stack instances in Regions and accounts where they
already exist; to create additional stack instances, use
CreateStackInstances
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateStackInstances.html).

During stack set updates, any parameters overridden for a stack
instance are not updated, but retain their overridden value.

You can only update the parameter I<values> that are specified in the
stack set; to add or delete a parameter itself, use UpdateStackSet
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html)
to update the stack set template. If you add a parameter to a template,
before you can override the parameter value specified in the stack set
you must first use UpdateStackSet
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html)
to update all stack instances with the updated template and parameter
value specified in the stack set. Once a stack instance has been
updated with the new parameter, you can then override the parameter
value using C<UpdateStackInstances>.


=head2 UpdateStackSet

=over

=item StackSetName => Str

=item [Accounts => ArrayRef[Str|Undef]]

=item [AdministrationRoleARN => Str]

=item [AutoDeployment => L<Paws::CloudFormation::AutoDeployment>]

=item [CallAs => Str]

=item [Capabilities => ArrayRef[Str|Undef]]

=item [DeploymentTargets => L<Paws::CloudFormation::DeploymentTargets>]

=item [Description => Str]

=item [ExecutionRoleName => Str]

=item [OperationId => Str]

=item [OperationPreferences => L<Paws::CloudFormation::StackSetOperationPreferences>]

=item [Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]]

=item [PermissionModel => Str]

=item [Regions => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::CloudFormation::Tag>]]

=item [TemplateBody => Str]

=item [TemplateURL => Str]

=item [UsePreviousTemplate => Bool]


=back

Each argument is described in detail in: L<Paws::CloudFormation::UpdateStackSet>

Returns: a L<Paws::CloudFormation::UpdateStackSetOutput> instance

Updates the stack set, and associated stack instances in the specified
accounts and Regions.

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
see Protecting a Stack From Being Deleted
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html)
in the I<AWS CloudFormation User Guide>.

For nested stacks
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html),
termination protection is set on the root stack and cannot be changed
directly on the nested stack.


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

=head2 DescribeAllAccountLimits(sub { },[NextToken => Str])

=head2 DescribeAllAccountLimits([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AccountLimits, passing the object as the first parameter, and the string 'AccountLimits' as the second parameter 

If not, it will return a a L<Paws::CloudFormation::DescribeAccountLimitsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllChangeSet(sub { },ChangeSetName => Str, [NextToken => Str, StackName => Str])

=head2 DescribeAllChangeSet(ChangeSetName => Str, [NextToken => Str, StackName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Changes, passing the object as the first parameter, and the string 'Changes' as the second parameter 

If not, it will return a a L<Paws::CloudFormation::DescribeChangeSetOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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


=head2 ListAllChangeSets(sub { },StackName => Str, [NextToken => Str])

=head2 ListAllChangeSets(StackName => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Summaries, passing the object as the first parameter, and the string 'Summaries' as the second parameter 

If not, it will return a a L<Paws::CloudFormation::ListChangeSetsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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


=head2 ListAllStackInstances(sub { },StackSetName => Str, [CallAs => Str, Filters => ArrayRef[L<Paws::CloudFormation::StackInstanceFilter>], MaxResults => Int, NextToken => Str, StackInstanceAccount => Str, StackInstanceRegion => Str])

=head2 ListAllStackInstances(StackSetName => Str, [CallAs => Str, Filters => ArrayRef[L<Paws::CloudFormation::StackInstanceFilter>], MaxResults => Int, NextToken => Str, StackInstanceAccount => Str, StackInstanceRegion => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Summaries, passing the object as the first parameter, and the string 'Summaries' as the second parameter 

If not, it will return a a L<Paws::CloudFormation::ListStackInstancesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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


=head2 ListAllStackSetOperationResults(sub { },OperationId => Str, StackSetName => Str, [CallAs => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllStackSetOperationResults(OperationId => Str, StackSetName => Str, [CallAs => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Summaries, passing the object as the first parameter, and the string 'Summaries' as the second parameter 

If not, it will return a a L<Paws::CloudFormation::ListStackSetOperationResultsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStackSetOperations(sub { },StackSetName => Str, [CallAs => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllStackSetOperations(StackSetName => Str, [CallAs => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Summaries, passing the object as the first parameter, and the string 'Summaries' as the second parameter 

If not, it will return a a L<Paws::CloudFormation::ListStackSetOperationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStackSets(sub { },[CallAs => Str, MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllStackSets([CallAs => Str, MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Summaries, passing the object as the first parameter, and the string 'Summaries' as the second parameter 

If not, it will return a a L<Paws::CloudFormation::ListStackSetsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTypes(sub { },[DeprecatedStatus => Str, Filters => L<Paws::CloudFormation::TypeFilters>, MaxResults => Int, NextToken => Str, ProvisioningType => Str, Type => Str, Visibility => Str])

=head2 ListAllTypes([DeprecatedStatus => Str, Filters => L<Paws::CloudFormation::TypeFilters>, MaxResults => Int, NextToken => Str, ProvisioningType => Str, Type => Str, Visibility => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TypeSummaries, passing the object as the first parameter, and the string 'TypeSummaries' as the second parameter 

If not, it will return a a L<Paws::CloudFormation::ListTypesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

