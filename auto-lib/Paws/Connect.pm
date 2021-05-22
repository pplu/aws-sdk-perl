package Paws::Connect;
  use Moose;
  sub service { 'connect' }
  sub signing_name { 'connect' }
  sub version { '2017-08-08' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateApprovedOrigin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateApprovedOrigin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateInstanceStorageConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateInstanceStorageConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateLambdaFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateLambdaFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateLexBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateLexBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateQueueQuickConnects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateQueueQuickConnects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateRoutingProfileQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateRoutingProfileQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateSecurityKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::AssociateSecurityKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateContactFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateContactFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIntegrationAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateIntegrationAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateQuickConnect {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateQuickConnect', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRoutingProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateRoutingProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUseCase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateUseCase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserHierarchyGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::CreateUserHierarchyGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIntegrationAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteIntegrationAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQuickConnect {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteQuickConnect', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUseCase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteUseCase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserHierarchyGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DeleteUserHierarchyGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeContactFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeContactFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHoursOfOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeHoursOfOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeInstanceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceStorageConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeInstanceStorageConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeQuickConnect {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeQuickConnect', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRoutingProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeRoutingProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUserHierarchyGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeUserHierarchyGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUserHierarchyStructure {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DescribeUserHierarchyStructure', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateApprovedOrigin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociateApprovedOrigin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateInstanceStorageConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociateInstanceStorageConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateLambdaFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociateLambdaFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateLexBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociateLexBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateQueueQuickConnects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociateQueueQuickConnects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateRoutingProfileQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociateRoutingProfileQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateSecurityKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::DisassociateSecurityKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContactAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetContactAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCurrentMetricData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetCurrentMetricData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFederationToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetFederationToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMetricData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::GetMetricData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApprovedOrigins {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListApprovedOrigins', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListContactFlows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListContactFlows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHoursOfOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListHoursOfOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInstanceAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListInstanceAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInstanceStorageConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListInstanceStorageConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIntegrationAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListIntegrationAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLambdaFunctions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListLambdaFunctions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLexBots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListLexBots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPhoneNumbers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListPhoneNumbers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPrompts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListPrompts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQueueQuickConnects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListQueueQuickConnects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQuickConnects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListQuickConnects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRoutingProfileQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListRoutingProfileQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRoutingProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListRoutingProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSecurityKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListSecurityKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSecurityProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListSecurityProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUseCases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListUseCases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUserHierarchyGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListUserHierarchyGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResumeContactRecording {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::ResumeContactRecording', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartChatContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StartChatContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartContactRecording {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StartContactRecording', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartOutboundVoiceContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StartOutboundVoiceContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTaskContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StartTaskContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StopContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopContactRecording {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StopContactRecording', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SuspendContactRecording {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::SuspendContactRecording', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContactAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateContactAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContactFlowContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateContactFlowContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContactFlowName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateContactFlowName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInstanceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateInstanceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInstanceStorageConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateInstanceStorageConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQueueHoursOfOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateQueueHoursOfOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQueueMaxContacts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateQueueMaxContacts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQueueName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateQueueName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQueueOutboundCallerConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateQueueOutboundCallerConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQueueStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateQueueStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQuickConnectConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateQuickConnectConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQuickConnectName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateQuickConnectName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoutingProfileConcurrency {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateRoutingProfileConcurrency', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoutingProfileDefaultOutboundQueue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateRoutingProfileDefaultOutboundQueue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoutingProfileName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateRoutingProfileName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoutingProfileQueues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateRoutingProfileQueues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserHierarchy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserHierarchy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserHierarchyGroupName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserHierarchyGroupName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserHierarchyStructure {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserHierarchyStructure', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserIdentityInfo {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserIdentityInfo', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserPhoneConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserPhoneConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserRoutingProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserRoutingProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserSecurityProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::UpdateUserSecurityProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllMetricData {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetMetricData(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetMetricData(@_, NextToken => $next_result->NextToken);
        push @{ $result->MetricResults }, @{ $next_result->MetricResults };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MetricResults') foreach (@{ $result->MetricResults });
        $result = $self->GetMetricData(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MetricResults') foreach (@{ $result->MetricResults });
    }

    return undef
  }
  sub ListAllApprovedOrigins {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApprovedOrigins(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApprovedOrigins(@_, NextToken => $next_result->NextToken);
        push @{ $result->Origins }, @{ $next_result->Origins };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Origins') foreach (@{ $result->Origins });
        $result = $self->ListApprovedOrigins(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Origins') foreach (@{ $result->Origins });
    }

    return undef
  }
  sub ListAllContactFlows {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContactFlows(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListContactFlows(@_, NextToken => $next_result->NextToken);
        push @{ $result->ContactFlowSummaryList }, @{ $next_result->ContactFlowSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ContactFlowSummaryList') foreach (@{ $result->ContactFlowSummaryList });
        $result = $self->ListContactFlows(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ContactFlowSummaryList') foreach (@{ $result->ContactFlowSummaryList });
    }

    return undef
  }
  sub ListAllHoursOfOperations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListHoursOfOperations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListHoursOfOperations(@_, NextToken => $next_result->NextToken);
        push @{ $result->HoursOfOperationSummaryList }, @{ $next_result->HoursOfOperationSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'HoursOfOperationSummaryList') foreach (@{ $result->HoursOfOperationSummaryList });
        $result = $self->ListHoursOfOperations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'HoursOfOperationSummaryList') foreach (@{ $result->HoursOfOperationSummaryList });
    }

    return undef
  }
  sub ListAllInstanceAttributes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInstanceAttributes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInstanceAttributes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Attributes }, @{ $next_result->Attributes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Attributes') foreach (@{ $result->Attributes });
        $result = $self->ListInstanceAttributes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Attributes') foreach (@{ $result->Attributes });
    }

    return undef
  }
  sub ListAllInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceSummaryList }, @{ $next_result->InstanceSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceSummaryList') foreach (@{ $result->InstanceSummaryList });
        $result = $self->ListInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceSummaryList') foreach (@{ $result->InstanceSummaryList });
    }

    return undef
  }
  sub ListAllInstanceStorageConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInstanceStorageConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInstanceStorageConfigs(@_, NextToken => $next_result->NextToken);
        push @{ $result->StorageConfigs }, @{ $next_result->StorageConfigs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'StorageConfigs') foreach (@{ $result->StorageConfigs });
        $result = $self->ListInstanceStorageConfigs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'StorageConfigs') foreach (@{ $result->StorageConfigs });
    }

    return undef
  }
  sub ListAllIntegrationAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIntegrationAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListIntegrationAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->IntegrationAssociationSummaryList }, @{ $next_result->IntegrationAssociationSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'IntegrationAssociationSummaryList') foreach (@{ $result->IntegrationAssociationSummaryList });
        $result = $self->ListIntegrationAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'IntegrationAssociationSummaryList') foreach (@{ $result->IntegrationAssociationSummaryList });
    }

    return undef
  }
  sub ListAllLambdaFunctions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLambdaFunctions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLambdaFunctions(@_, NextToken => $next_result->NextToken);
        push @{ $result->LambdaFunctions }, @{ $next_result->LambdaFunctions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LambdaFunctions') foreach (@{ $result->LambdaFunctions });
        $result = $self->ListLambdaFunctions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LambdaFunctions') foreach (@{ $result->LambdaFunctions });
    }

    return undef
  }
  sub ListAllLexBots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLexBots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLexBots(@_, NextToken => $next_result->NextToken);
        push @{ $result->LexBots }, @{ $next_result->LexBots };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LexBots') foreach (@{ $result->LexBots });
        $result = $self->ListLexBots(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LexBots') foreach (@{ $result->LexBots });
    }

    return undef
  }
  sub ListAllPhoneNumbers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPhoneNumbers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPhoneNumbers(@_, NextToken => $next_result->NextToken);
        push @{ $result->PhoneNumberSummaryList }, @{ $next_result->PhoneNumberSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PhoneNumberSummaryList') foreach (@{ $result->PhoneNumberSummaryList });
        $result = $self->ListPhoneNumbers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PhoneNumberSummaryList') foreach (@{ $result->PhoneNumberSummaryList });
    }

    return undef
  }
  sub ListAllPrompts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPrompts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPrompts(@_, NextToken => $next_result->NextToken);
        push @{ $result->PromptSummaryList }, @{ $next_result->PromptSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PromptSummaryList') foreach (@{ $result->PromptSummaryList });
        $result = $self->ListPrompts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PromptSummaryList') foreach (@{ $result->PromptSummaryList });
    }

    return undef
  }
  sub ListAllQueueQuickConnects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQueueQuickConnects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListQueueQuickConnects(@_, NextToken => $next_result->NextToken);
        push @{ $result->QuickConnectSummaryList }, @{ $next_result->QuickConnectSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'QuickConnectSummaryList') foreach (@{ $result->QuickConnectSummaryList });
        $result = $self->ListQueueQuickConnects(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'QuickConnectSummaryList') foreach (@{ $result->QuickConnectSummaryList });
    }

    return undef
  }
  sub ListAllQueues {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQueues(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListQueues(@_, NextToken => $next_result->NextToken);
        push @{ $result->QueueSummaryList }, @{ $next_result->QueueSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'QueueSummaryList') foreach (@{ $result->QueueSummaryList });
        $result = $self->ListQueues(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'QueueSummaryList') foreach (@{ $result->QueueSummaryList });
    }

    return undef
  }
  sub ListAllQuickConnects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListQuickConnects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListQuickConnects(@_, NextToken => $next_result->NextToken);
        push @{ $result->QuickConnectSummaryList }, @{ $next_result->QuickConnectSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'QuickConnectSummaryList') foreach (@{ $result->QuickConnectSummaryList });
        $result = $self->ListQuickConnects(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'QuickConnectSummaryList') foreach (@{ $result->QuickConnectSummaryList });
    }

    return undef
  }
  sub ListAllRoutingProfileQueues {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRoutingProfileQueues(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRoutingProfileQueues(@_, NextToken => $next_result->NextToken);
        push @{ $result->RoutingProfileQueueConfigSummaryList }, @{ $next_result->RoutingProfileQueueConfigSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RoutingProfileQueueConfigSummaryList') foreach (@{ $result->RoutingProfileQueueConfigSummaryList });
        $result = $self->ListRoutingProfileQueues(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RoutingProfileQueueConfigSummaryList') foreach (@{ $result->RoutingProfileQueueConfigSummaryList });
    }

    return undef
  }
  sub ListAllRoutingProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRoutingProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRoutingProfiles(@_, NextToken => $next_result->NextToken);
        push @{ $result->RoutingProfileSummaryList }, @{ $next_result->RoutingProfileSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RoutingProfileSummaryList') foreach (@{ $result->RoutingProfileSummaryList });
        $result = $self->ListRoutingProfiles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RoutingProfileSummaryList') foreach (@{ $result->RoutingProfileSummaryList });
    }

    return undef
  }
  sub ListAllSecurityKeys {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSecurityKeys(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSecurityKeys(@_, NextToken => $next_result->NextToken);
        push @{ $result->SecurityKeys }, @{ $next_result->SecurityKeys };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SecurityKeys') foreach (@{ $result->SecurityKeys });
        $result = $self->ListSecurityKeys(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SecurityKeys') foreach (@{ $result->SecurityKeys });
    }

    return undef
  }
  sub ListAllSecurityProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSecurityProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSecurityProfiles(@_, NextToken => $next_result->NextToken);
        push @{ $result->SecurityProfileSummaryList }, @{ $next_result->SecurityProfileSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SecurityProfileSummaryList') foreach (@{ $result->SecurityProfileSummaryList });
        $result = $self->ListSecurityProfiles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SecurityProfileSummaryList') foreach (@{ $result->SecurityProfileSummaryList });
    }

    return undef
  }
  sub ListAllUseCases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUseCases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUseCases(@_, NextToken => $next_result->NextToken);
        push @{ $result->UseCaseSummaryList }, @{ $next_result->UseCaseSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UseCaseSummaryList') foreach (@{ $result->UseCaseSummaryList });
        $result = $self->ListUseCases(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UseCaseSummaryList') foreach (@{ $result->UseCaseSummaryList });
    }

    return undef
  }
  sub ListAllUserHierarchyGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUserHierarchyGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUserHierarchyGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->UserHierarchyGroupSummaryList }, @{ $next_result->UserHierarchyGroupSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UserHierarchyGroupSummaryList') foreach (@{ $result->UserHierarchyGroupSummaryList });
        $result = $self->ListUserHierarchyGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UserHierarchyGroupSummaryList') foreach (@{ $result->UserHierarchyGroupSummaryList });
    }

    return undef
  }
  sub ListAllUsers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUsers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUsers(@_, NextToken => $next_result->NextToken);
        push @{ $result->UserSummaryList }, @{ $next_result->UserSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UserSummaryList') foreach (@{ $result->UserSummaryList });
        $result = $self->ListUsers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UserSummaryList') foreach (@{ $result->UserSummaryList });
    }

    return undef
  }


  sub operations { qw/AssociateApprovedOrigin AssociateInstanceStorageConfig AssociateLambdaFunction AssociateLexBot AssociateQueueQuickConnects AssociateRoutingProfileQueues AssociateSecurityKey CreateContactFlow CreateInstance CreateIntegrationAssociation CreateQueue CreateQuickConnect CreateRoutingProfile CreateUseCase CreateUser CreateUserHierarchyGroup DeleteInstance DeleteIntegrationAssociation DeleteQuickConnect DeleteUseCase DeleteUser DeleteUserHierarchyGroup DescribeContactFlow DescribeHoursOfOperation DescribeInstance DescribeInstanceAttribute DescribeInstanceStorageConfig DescribeQueue DescribeQuickConnect DescribeRoutingProfile DescribeUser DescribeUserHierarchyGroup DescribeUserHierarchyStructure DisassociateApprovedOrigin DisassociateInstanceStorageConfig DisassociateLambdaFunction DisassociateLexBot DisassociateQueueQuickConnects DisassociateRoutingProfileQueues DisassociateSecurityKey GetContactAttributes GetCurrentMetricData GetFederationToken GetMetricData ListApprovedOrigins ListContactFlows ListHoursOfOperations ListInstanceAttributes ListInstances ListInstanceStorageConfigs ListIntegrationAssociations ListLambdaFunctions ListLexBots ListPhoneNumbers ListPrompts ListQueueQuickConnects ListQueues ListQuickConnects ListRoutingProfileQueues ListRoutingProfiles ListSecurityKeys ListSecurityProfiles ListTagsForResource ListUseCases ListUserHierarchyGroups ListUsers ResumeContactRecording StartChatContact StartContactRecording StartOutboundVoiceContact StartTaskContact StopContact StopContactRecording SuspendContactRecording TagResource UntagResource UpdateContactAttributes UpdateContactFlowContent UpdateContactFlowName UpdateInstanceAttribute UpdateInstanceStorageConfig UpdateQueueHoursOfOperation UpdateQueueMaxContacts UpdateQueueName UpdateQueueOutboundCallerConfig UpdateQueueStatus UpdateQuickConnectConfig UpdateQuickConnectName UpdateRoutingProfileConcurrency UpdateRoutingProfileDefaultOutboundQueue UpdateRoutingProfileName UpdateRoutingProfileQueues UpdateUserHierarchy UpdateUserHierarchyGroupName UpdateUserHierarchyStructure UpdateUserIdentityInfo UpdateUserPhoneConfig UpdateUserRoutingProfile UpdateUserSecurityProfiles / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect - Perl Interface to AWS Amazon Connect Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Connect');
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

Amazon Connect is a cloud-based contact center solution that you use to
set up and manage a customer contact center and provide reliable
customer engagement at any scale.

Amazon Connect provides metrics and real-time reporting that enable you
to optimize contact routing. You can also resolve customer issues more
efficiently by getting customers in touch with the appropriate agents.

There are limits to the number of Amazon Connect resources that you can
create. There are also limits to the number of requests that you can
make per second. For more information, see Amazon Connect Service
Quotas
(https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
in the I<Amazon Connect Administrator Guide>.

You can connect programmatically to an AWS service by using an
endpoint. For a list of Amazon Connect endpoints, see Amazon Connect
Endpoints
(https://docs.aws.amazon.com/general/latest/gr/connect_region.html).

Working with contact flows? Check out the Amazon Connect Flow language
(https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08>


=head1 METHODS

=head2 AssociateApprovedOrigin

=over

=item InstanceId => Str

=item Origin => Str


=back

Each argument is described in detail in: L<Paws::Connect::AssociateApprovedOrigin>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Associates an approved origin to an Amazon Connect instance.


=head2 AssociateInstanceStorageConfig

=over

=item InstanceId => Str

=item ResourceType => Str

=item StorageConfig => L<Paws::Connect::InstanceStorageConfig>


=back

Each argument is described in detail in: L<Paws::Connect::AssociateInstanceStorageConfig>

Returns: a L<Paws::Connect::AssociateInstanceStorageConfigResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Associates a storage resource type for the first time. You can only
associate one type of storage configuration in a single call. This
means, for example, that you can't define an instance with multiple S3
buckets for storing chat transcripts.

This API does not create a resource that doesn't exist. It only
associates it to the instance. Ensure that the resource being specified
in the storage configuration, like an S3 bucket, exists when being used
for association.


=head2 AssociateLambdaFunction

=over

=item FunctionArn => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::AssociateLambdaFunction>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Allows the specified Amazon Connect instance to access the specified
Lambda function.


=head2 AssociateLexBot

=over

=item InstanceId => Str

=item LexBot => L<Paws::Connect::LexBot>


=back

Each argument is described in detail in: L<Paws::Connect::AssociateLexBot>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Allows the specified Amazon Connect instance to access the specified
Amazon Lex bot.


=head2 AssociateQueueQuickConnects

=over

=item InstanceId => Str

=item QueueId => Str

=item QuickConnectIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Connect::AssociateQueueQuickConnects>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Associates a set of quick connects with a queue.


=head2 AssociateRoutingProfileQueues

=over

=item InstanceId => Str

=item QueueConfigs => ArrayRef[L<Paws::Connect::RoutingProfileQueueConfig>]

=item RoutingProfileId => Str


=back

Each argument is described in detail in: L<Paws::Connect::AssociateRoutingProfileQueues>

Returns: nothing

Associates a set of queues with a routing profile.


=head2 AssociateSecurityKey

=over

=item InstanceId => Str

=item Key => Str


=back

Each argument is described in detail in: L<Paws::Connect::AssociateSecurityKey>

Returns: a L<Paws::Connect::AssociateSecurityKeyResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Associates a security key to the instance.


=head2 CreateContactFlow

=over

=item Content => Str

=item InstanceId => Str

=item Name => Str

=item Type => Str

=item [Description => Str]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateContactFlow>

Returns: a L<Paws::Connect::CreateContactFlowResponse> instance

Creates a contact flow for the specified Amazon Connect instance.

You can also create and update contact flows using the Amazon Connect
Flow language
(https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html).


=head2 CreateInstance

=over

=item IdentityManagementType => Str

=item InboundCallsEnabled => Bool

=item OutboundCallsEnabled => Bool

=item [ClientToken => Str]

=item [DirectoryId => Str]

=item [InstanceAlias => Str]


=back

Each argument is described in detail in: L<Paws::Connect::CreateInstance>

Returns: a L<Paws::Connect::CreateInstanceResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Initiates an Amazon Connect instance with all the supported channels
enabled. It does not attach any storage, such as Amazon Simple Storage
Service (Amazon S3) or Amazon Kinesis. It also does not allow for any
configurations on features, such as Contact Lens for Amazon Connect.

Amazon Connect enforces a limit on the total number of instances that
you can create or delete in 30 days. If you exceed this limit, you will
get an error message indicating there has been an excessive number of
attempts at creating or deleting instances. You must wait 30 days
before you can restart creating and deleting instances in your account.


=head2 CreateIntegrationAssociation

=over

=item InstanceId => Str

=item IntegrationArn => Str

=item IntegrationType => Str

=item SourceApplicationName => Str

=item SourceApplicationUrl => Str

=item SourceType => Str

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateIntegrationAssociation>

Returns: a L<Paws::Connect::CreateIntegrationAssociationResponse> instance

Create an AppIntegration association with an Amazon Connect instance.


=head2 CreateQueue

=over

=item HoursOfOperationId => Str

=item InstanceId => Str

=item Name => Str

=item [Description => Str]

=item [MaxContacts => Int]

=item [OutboundCallerConfig => L<Paws::Connect::OutboundCallerConfig>]

=item [QuickConnectIds => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateQueue>

Returns: a L<Paws::Connect::CreateQueueResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Creates a new queue for the specified Amazon Connect instance.


=head2 CreateQuickConnect

=over

=item InstanceId => Str

=item Name => Str

=item QuickConnectConfig => L<Paws::Connect::QuickConnectConfig>

=item [Description => Str]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateQuickConnect>

Returns: a L<Paws::Connect::CreateQuickConnectResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Creates a quick connect for the specified Amazon Connect instance.


=head2 CreateRoutingProfile

=over

=item DefaultOutboundQueueId => Str

=item Description => Str

=item InstanceId => Str

=item MediaConcurrencies => ArrayRef[L<Paws::Connect::MediaConcurrency>]

=item Name => Str

=item [QueueConfigs => ArrayRef[L<Paws::Connect::RoutingProfileQueueConfig>]]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateRoutingProfile>

Returns: a L<Paws::Connect::CreateRoutingProfileResponse> instance

Creates a new routing profile.


=head2 CreateUseCase

=over

=item InstanceId => Str

=item IntegrationAssociationId => Str

=item UseCaseType => Str

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateUseCase>

Returns: a L<Paws::Connect::CreateUseCaseResponse> instance

Creates a use case for an AppIntegration association.


=head2 CreateUser

=over

=item InstanceId => Str

=item PhoneConfig => L<Paws::Connect::UserPhoneConfig>

=item RoutingProfileId => Str

=item SecurityProfileIds => ArrayRef[Str|Undef]

=item Username => Str

=item [DirectoryUserId => Str]

=item [HierarchyGroupId => Str]

=item [IdentityInfo => L<Paws::Connect::UserIdentityInfo>]

=item [Password => Str]

=item [Tags => L<Paws::Connect::TagMap>]


=back

Each argument is described in detail in: L<Paws::Connect::CreateUser>

Returns: a L<Paws::Connect::CreateUserResponse> instance

Creates a user account for the specified Amazon Connect instance.

For information about how to create user accounts using the Amazon
Connect console, see Add Users
(https://docs.aws.amazon.com/connect/latest/adminguide/user-management.html)
in the I<Amazon Connect Administrator Guide>.


=head2 CreateUserHierarchyGroup

=over

=item InstanceId => Str

=item Name => Str

=item [ParentGroupId => Str]


=back

Each argument is described in detail in: L<Paws::Connect::CreateUserHierarchyGroup>

Returns: a L<Paws::Connect::CreateUserHierarchyGroupResponse> instance

Creates a new user hierarchy group.


=head2 DeleteInstance

=over

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteInstance>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Deletes the Amazon Connect instance.

Amazon Connect enforces a limit on the total number of instances that
you can create or delete in 30 days. If you exceed this limit, you will
get an error message indicating there has been an excessive number of
attempts at creating or deleting instances. You must wait 30 days
before you can restart creating and deleting instances in your account.


=head2 DeleteIntegrationAssociation

=over

=item InstanceId => Str

=item IntegrationAssociationId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteIntegrationAssociation>

Returns: nothing

Deletes an AppIntegration association from an Amazon Connect instance.
The association must not have any use cases associated with it.


=head2 DeleteQuickConnect

=over

=item InstanceId => Str

=item QuickConnectId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteQuickConnect>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Deletes a quick connect.


=head2 DeleteUseCase

=over

=item InstanceId => Str

=item IntegrationAssociationId => Str

=item UseCaseId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteUseCase>

Returns: nothing

Deletes a use case from an AppIntegration association.


=head2 DeleteUser

=over

=item InstanceId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteUser>

Returns: nothing

Deletes a user account from the specified Amazon Connect instance.

For information about what happens to a user's data when their account
is deleted, see Delete Users from Your Amazon Connect Instance
(https://docs.aws.amazon.com/connect/latest/adminguide/delete-users.html)
in the I<Amazon Connect Administrator Guide>.


=head2 DeleteUserHierarchyGroup

=over

=item HierarchyGroupId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DeleteUserHierarchyGroup>

Returns: nothing

Deletes an existing user hierarchy group. It must not be associated
with any agents or have any active child groups.


=head2 DescribeContactFlow

=over

=item ContactFlowId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeContactFlow>

Returns: a L<Paws::Connect::DescribeContactFlowResponse> instance

Describes the specified contact flow.

You can also create and update contact flows using the Amazon Connect
Flow language
(https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html).


=head2 DescribeHoursOfOperation

=over

=item HoursOfOperationId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeHoursOfOperation>

Returns: a L<Paws::Connect::DescribeHoursOfOperationResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Describes the hours of operation.


=head2 DescribeInstance

=over

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeInstance>

Returns: a L<Paws::Connect::DescribeInstanceResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Returns the current state of the specified instance identifier. It
tracks the instance while it is being created and returns an error
status, if applicable.

If an instance is not created successfully, the instance status reason
field returns details relevant to the reason. The instance in a failed
state is returned only for 24 hours after the CreateInstance API was
invoked.


=head2 DescribeInstanceAttribute

=over

=item AttributeType => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeInstanceAttribute>

Returns: a L<Paws::Connect::DescribeInstanceAttributeResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Describes the specified instance attribute.


=head2 DescribeInstanceStorageConfig

=over

=item AssociationId => Str

=item InstanceId => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeInstanceStorageConfig>

Returns: a L<Paws::Connect::DescribeInstanceStorageConfigResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Retrieves the current storage configurations for the specified resource
type, association ID, and instance ID.


=head2 DescribeQueue

=over

=item InstanceId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeQueue>

Returns: a L<Paws::Connect::DescribeQueueResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Describes the specified queue.


=head2 DescribeQuickConnect

=over

=item InstanceId => Str

=item QuickConnectId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeQuickConnect>

Returns: a L<Paws::Connect::DescribeQuickConnectResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Describes the quick connect.


=head2 DescribeRoutingProfile

=over

=item InstanceId => Str

=item RoutingProfileId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeRoutingProfile>

Returns: a L<Paws::Connect::DescribeRoutingProfileResponse> instance

Describes the specified routing profile.


=head2 DescribeUser

=over

=item InstanceId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeUser>

Returns: a L<Paws::Connect::DescribeUserResponse> instance

Describes the specified user account. You can find the instance ID in
the console (itE<rsquo>s the final part of the ARN). The console does
not display the user IDs. Instead, list the users and note the IDs
provided in the output.


=head2 DescribeUserHierarchyGroup

=over

=item HierarchyGroupId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeUserHierarchyGroup>

Returns: a L<Paws::Connect::DescribeUserHierarchyGroupResponse> instance

Describes the specified hierarchy group.


=head2 DescribeUserHierarchyStructure

=over

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DescribeUserHierarchyStructure>

Returns: a L<Paws::Connect::DescribeUserHierarchyStructureResponse> instance

Describes the hierarchy structure of the specified Amazon Connect
instance.


=head2 DisassociateApprovedOrigin

=over

=item InstanceId => Str

=item Origin => Str


=back

Each argument is described in detail in: L<Paws::Connect::DisassociateApprovedOrigin>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Revokes access to integrated applications from Amazon Connect.


=head2 DisassociateInstanceStorageConfig

=over

=item AssociationId => Str

=item InstanceId => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::Connect::DisassociateInstanceStorageConfig>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Removes the storage type configurations for the specified resource type
and association ID.


=head2 DisassociateLambdaFunction

=over

=item FunctionArn => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DisassociateLambdaFunction>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Remove the Lambda function from the dropdown options available in the
relevant contact flow blocks.


=head2 DisassociateLexBot

=over

=item BotName => Str

=item InstanceId => Str

=item LexRegion => Str


=back

Each argument is described in detail in: L<Paws::Connect::DisassociateLexBot>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Revokes authorization from the specified instance to access the
specified Amazon Lex bot.


=head2 DisassociateQueueQuickConnects

=over

=item InstanceId => Str

=item QueueId => Str

=item QuickConnectIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Connect::DisassociateQueueQuickConnects>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Disassociates a set of quick connects from a queue.


=head2 DisassociateRoutingProfileQueues

=over

=item InstanceId => Str

=item QueueReferences => ArrayRef[L<Paws::Connect::RoutingProfileQueueReference>]

=item RoutingProfileId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DisassociateRoutingProfileQueues>

Returns: nothing

Disassociates a set of queues from a routing profile.


=head2 DisassociateSecurityKey

=over

=item AssociationId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::DisassociateSecurityKey>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Deletes the specified security key.


=head2 GetContactAttributes

=over

=item InitialContactId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::GetContactAttributes>

Returns: a L<Paws::Connect::GetContactAttributesResponse> instance

Retrieves the contact attributes for the specified contact.


=head2 GetCurrentMetricData

=over

=item CurrentMetrics => ArrayRef[L<Paws::Connect::CurrentMetric>]

=item Filters => L<Paws::Connect::Filters>

=item InstanceId => Str

=item [Groupings => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::GetCurrentMetricData>

Returns: a L<Paws::Connect::GetCurrentMetricDataResponse> instance

Gets the real-time metric data from the specified Amazon Connect
instance.

For a description of each metric, see Real-time Metrics Definitions
(https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html)
in the I<Amazon Connect Administrator Guide>.


=head2 GetFederationToken

=over

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::GetFederationToken>

Returns: a L<Paws::Connect::GetFederationTokenResponse> instance

Retrieves a token for federation.

This API doesn't support root users. If you try to invoke
GetFederationToken with root credentials, an error message similar to
the following one appears:

C<Provided identity: Principal: .... User: .... cannot be used for
federation with Amazon Connect>


=head2 GetMetricData

=over

=item EndTime => Str

=item Filters => L<Paws::Connect::Filters>

=item HistoricalMetrics => ArrayRef[L<Paws::Connect::HistoricalMetric>]

=item InstanceId => Str

=item StartTime => Str

=item [Groupings => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::GetMetricData>

Returns: a L<Paws::Connect::GetMetricDataResponse> instance

Gets historical metric data from the specified Amazon Connect instance.

For a description of each historical metric, see Historical Metrics
Definitions
(https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html)
in the I<Amazon Connect Administrator Guide>.


=head2 ListApprovedOrigins

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListApprovedOrigins>

Returns: a L<Paws::Connect::ListApprovedOriginsResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Returns a paginated list of all approved origins associated with the
instance.


=head2 ListContactFlows

=over

=item InstanceId => Str

=item [ContactFlowTypes => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListContactFlows>

Returns: a L<Paws::Connect::ListContactFlowsResponse> instance

Provides information about the contact flows for the specified Amazon
Connect instance.

You can also create and update contact flows using the Amazon Connect
Flow language
(https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html).

For more information about contact flows, see Contact Flows
(https://docs.aws.amazon.com/connect/latest/adminguide/concepts-contact-flows.html)
in the I<Amazon Connect Administrator Guide>.


=head2 ListHoursOfOperations

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListHoursOfOperations>

Returns: a L<Paws::Connect::ListHoursOfOperationsResponse> instance

Provides information about the hours of operation for the specified
Amazon Connect instance.

For more information about hours of operation, see Set the Hours of
Operation for a Queue
(https://docs.aws.amazon.com/connect/latest/adminguide/set-hours-operation.html)
in the I<Amazon Connect Administrator Guide>.


=head2 ListInstanceAttributes

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListInstanceAttributes>

Returns: a L<Paws::Connect::ListInstanceAttributesResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Returns a paginated list of all attribute types for the given instance.


=head2 ListInstances

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListInstances>

Returns: a L<Paws::Connect::ListInstancesResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Return a list of instances which are in active state,
creation-in-progress state, and failed state. Instances that aren't
successfully created (they are in a failed state) are returned only for
24 hours after the CreateInstance API was invoked.


=head2 ListInstanceStorageConfigs

=over

=item InstanceId => Str

=item ResourceType => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListInstanceStorageConfigs>

Returns: a L<Paws::Connect::ListInstanceStorageConfigsResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Returns a paginated list of storage configs for the identified instance
and resource type.


=head2 ListIntegrationAssociations

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListIntegrationAssociations>

Returns: a L<Paws::Connect::ListIntegrationAssociationsResponse> instance

Provides summary information about the AppIntegration associations for
the specified Amazon Connect instance.


=head2 ListLambdaFunctions

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListLambdaFunctions>

Returns: a L<Paws::Connect::ListLambdaFunctionsResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Returns a paginated list of all Lambda functions that display in the
dropdown options in the relevant contact flow blocks.


=head2 ListLexBots

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListLexBots>

Returns: a L<Paws::Connect::ListLexBotsResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Returns a paginated list of all the Amazon Lex bots currently
associated with the instance.


=head2 ListPhoneNumbers

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PhoneNumberCountryCodes => ArrayRef[Str|Undef]]

=item [PhoneNumberTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Connect::ListPhoneNumbers>

Returns: a L<Paws::Connect::ListPhoneNumbersResponse> instance

Provides information about the phone numbers for the specified Amazon
Connect instance.

For more information about phone numbers, see Set Up Phone Numbers for
Your Contact Center
(https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html)
in the I<Amazon Connect Administrator Guide>.


=head2 ListPrompts

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListPrompts>

Returns: a L<Paws::Connect::ListPromptsResponse> instance

Provides information about the prompts for the specified Amazon Connect
instance.


=head2 ListQueueQuickConnects

=over

=item InstanceId => Str

=item QueueId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListQueueQuickConnects>

Returns: a L<Paws::Connect::ListQueueQuickConnectsResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Lists the quick connects associated with a queue.


=head2 ListQueues

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [QueueTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Connect::ListQueues>

Returns: a L<Paws::Connect::ListQueuesResponse> instance

Provides information about the queues for the specified Amazon Connect
instance.

If you do not specify a C<QueueTypes> parameter, both standard and
agent queues are returned. This might cause an unexpected truncation of
results if you have more than 1000 agents and you limit the number of
results of the API call in code.

For more information about queues, see Queues: Standard and Agent
(https://docs.aws.amazon.com/connect/latest/adminguide/concepts-queues-standard-and-agent.html)
in the I<Amazon Connect Administrator Guide>.


=head2 ListQuickConnects

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [QuickConnectTypes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Connect::ListQuickConnects>

Returns: a L<Paws::Connect::ListQuickConnectsResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Provides information about the quick connects for the specified Amazon
Connect instance.


=head2 ListRoutingProfileQueues

=over

=item InstanceId => Str

=item RoutingProfileId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListRoutingProfileQueues>

Returns: a L<Paws::Connect::ListRoutingProfileQueuesResponse> instance

Lists the queues associated with a routing profile.


=head2 ListRoutingProfiles

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListRoutingProfiles>

Returns: a L<Paws::Connect::ListRoutingProfilesResponse> instance

Provides summary information about the routing profiles for the
specified Amazon Connect instance.

For more information about routing profiles, see Routing Profiles
(https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing.html)
and Create a Routing Profile
(https://docs.aws.amazon.com/connect/latest/adminguide/routing-profiles.html)
in the I<Amazon Connect Administrator Guide>.


=head2 ListSecurityKeys

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListSecurityKeys>

Returns: a L<Paws::Connect::ListSecurityKeysResponse> instance

This API is in preview release for Amazon Connect and is subject to
change.

Returns a paginated list of all security keys associated with the
instance.


=head2 ListSecurityProfiles

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListSecurityProfiles>

Returns: a L<Paws::Connect::ListSecurityProfilesResponse> instance

Provides summary information about the security profiles for the
specified Amazon Connect instance.

For more information about security profiles, see Security Profiles
(https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html)
in the I<Amazon Connect Administrator Guide>.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Connect::ListTagsForResource>

Returns: a L<Paws::Connect::ListTagsForResourceResponse> instance

Lists the tags for the specified resource.

For sample policies that use tags, see Amazon Connect Identity-Based
Policy Examples
(https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html)
in the I<Amazon Connect Administrator Guide>.


=head2 ListUseCases

=over

=item InstanceId => Str

=item IntegrationAssociationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListUseCases>

Returns: a L<Paws::Connect::ListUseCasesResponse> instance

Lists the use cases.


=head2 ListUserHierarchyGroups

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListUserHierarchyGroups>

Returns: a L<Paws::Connect::ListUserHierarchyGroupsResponse> instance

Provides summary information about the hierarchy groups for the
specified Amazon Connect instance.

For more information about agent hierarchies, see Set Up Agent
Hierarchies
(https://docs.aws.amazon.com/connect/latest/adminguide/agent-hierarchy.html)
in the I<Amazon Connect Administrator Guide>.


=head2 ListUsers

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Connect::ListUsers>

Returns: a L<Paws::Connect::ListUsersResponse> instance

Provides summary information about the users for the specified Amazon
Connect instance.


=head2 ResumeContactRecording

=over

=item ContactId => Str

=item InitialContactId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::ResumeContactRecording>

Returns: a L<Paws::Connect::ResumeContactRecordingResponse> instance

When a contact is being recorded, and the recording has been suspended
using SuspendContactRecording, this API resumes recording the call.

Only voice recordings are supported at this time.


=head2 StartChatContact

=over

=item ContactFlowId => Str

=item InstanceId => Str

=item ParticipantDetails => L<Paws::Connect::ParticipantDetails>

=item [Attributes => L<Paws::Connect::Attributes>]

=item [ClientToken => Str]

=item [InitialMessage => L<Paws::Connect::ChatMessage>]


=back

Each argument is described in detail in: L<Paws::Connect::StartChatContact>

Returns: a L<Paws::Connect::StartChatContactResponse> instance

Initiates a contact flow to start a new chat for the customer. Response
of this API provides a token required to obtain credentials from the
CreateParticipantConnection
(https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html)
API in the Amazon Connect Participant Service.

When a new chat contact is successfully created, clients must subscribe
to the participantE<rsquo>s connection for the created chat within 5
minutes. This is achieved by invoking CreateParticipantConnection
(https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html)
with WEBSOCKET and CONNECTION_CREDENTIALS.

A 429 error occurs in two situations:

=over

=item *

API rate limit is exceeded. API TPS throttling returns a
C<TooManyRequests> exception.

=item *

The quota for concurrent active chats
(https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
is exceeded. Active chat throttling returns a
C<LimitExceededException>.

=back

For more information about chat, see Chat
(https://docs.aws.amazon.com/connect/latest/adminguide/chat.html) in
the I<Amazon Connect Administrator Guide>.


=head2 StartContactRecording

=over

=item ContactId => Str

=item InitialContactId => Str

=item InstanceId => Str

=item VoiceRecordingConfiguration => L<Paws::Connect::VoiceRecordingConfiguration>


=back

Each argument is described in detail in: L<Paws::Connect::StartContactRecording>

Returns: a L<Paws::Connect::StartContactRecordingResponse> instance

Starts recording the contact when the agent joins the call.
StartContactRecording is a one-time action. For example, if you use
StopContactRecording to stop recording an ongoing call, you can't use
StartContactRecording to restart it. For scenarios where the recording
has started and you want to suspend and resume it, such as when
collecting sensitive information (for example, a credit card number),
use SuspendContactRecording and ResumeContactRecording.

You can use this API to override the recording behavior configured in
the Set recording behavior
(https://docs.aws.amazon.com/connect/latest/adminguide/set-recording-behavior.html)
block.

Only voice recordings are supported at this time.


=head2 StartOutboundVoiceContact

=over

=item ContactFlowId => Str

=item DestinationPhoneNumber => Str

=item InstanceId => Str

=item [Attributes => L<Paws::Connect::Attributes>]

=item [ClientToken => Str]

=item [QueueId => Str]

=item [SourcePhoneNumber => Str]


=back

Each argument is described in detail in: L<Paws::Connect::StartOutboundVoiceContact>

Returns: a L<Paws::Connect::StartOutboundVoiceContactResponse> instance

Places an outbound call to a contact, and then initiates the contact
flow. It performs the actions in the contact flow that's specified (in
C<ContactFlowId>).

Agents do not initiate the outbound API, which means that they do not
dial the contact. If the contact flow places an outbound call to a
contact, and then puts the contact in queue, the call is then routed to
the agent, like any other inbound case.

There is a 60-second dialing timeout for this operation. If the call is
not connected after 60 seconds, it fails.

UK numbers with a 447 prefix are not allowed by default. Before you can
dial these UK mobile numbers, you must submit a service quota increase
request. For more information, see Amazon Connect Service Quotas
(https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
in the I<Amazon Connect Administrator Guide>.


=head2 StartTaskContact

=over

=item ContactFlowId => Str

=item InstanceId => Str

=item Name => Str

=item [Attributes => L<Paws::Connect::Attributes>]

=item [ClientToken => Str]

=item [Description => Str]

=item [PreviousContactId => Str]

=item [References => L<Paws::Connect::ContactReferences>]


=back

Each argument is described in detail in: L<Paws::Connect::StartTaskContact>

Returns: a L<Paws::Connect::StartTaskContactResponse> instance

Initiates a contact flow to start a new task.


=head2 StopContact

=over

=item ContactId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::StopContact>

Returns: a L<Paws::Connect::StopContactResponse> instance

Ends the specified contact.


=head2 StopContactRecording

=over

=item ContactId => Str

=item InitialContactId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::StopContactRecording>

Returns: a L<Paws::Connect::StopContactRecordingResponse> instance

Stops recording a call when a contact is being recorded.
StopContactRecording is a one-time action. If you use
StopContactRecording to stop recording an ongoing call, you can't use
StartContactRecording to restart it. For scenarios where the recording
has started and you want to suspend it for sensitive information (for
example, to collect a credit card number), and then restart it, use
SuspendContactRecording and ResumeContactRecording.

Only voice recordings are supported at this time.


=head2 SuspendContactRecording

=over

=item ContactId => Str

=item InitialContactId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::SuspendContactRecording>

Returns: a L<Paws::Connect::SuspendContactRecordingResponse> instance

When a contact is being recorded, this API suspends recording the call.
For example, you might suspend the call recording while collecting
sensitive information, such as a credit card number. Then use
ResumeContactRecording to restart recording.

The period of time that the recording is suspended is filled with
silence in the final recording.

Only voice recordings are supported at this time.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Connect::TagMap>


=back

Each argument is described in detail in: L<Paws::Connect::TagResource>

Returns: nothing

Adds the specified tags to the specified resource.

The supported resource types are users, routing profiles, queues, quick
connects, and contact flows.

For sample policies that use tags, see Amazon Connect Identity-Based
Policy Examples
(https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html)
in the I<Amazon Connect Administrator Guide>.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Connect::UntagResource>

Returns: nothing

Removes the specified tags from the specified resource.


=head2 UpdateContactAttributes

=over

=item Attributes => L<Paws::Connect::Attributes>

=item InitialContactId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateContactAttributes>

Returns: a L<Paws::Connect::UpdateContactAttributesResponse> instance

Creates or updates user-defined contact attributes associated with the
specified contact.

You can create or update user-defined attributes for both ongoing and
completed contacts. For example, while the call is active, you can
update the customer's name or the reason the customer called. You can
add notes about steps that the agent took during the call that display
to the next agent that takes the call. You can also update attributes
for a contact using data from your CRM application and save the data
with the contact in Amazon Connect. You could also flag calls for
additional analysis, such as legal review or to identify abusive
callers.

Contact attributes are available in Amazon Connect for 24 months, and
are then deleted. For information about CTR retention and the maximum
size of the CTR attributes section, see Feature specifications
(https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits)
in the I<Amazon Connect Administrator Guide>.

B<Important:> You cannot use the operation to update attributes for
contacts that occurred prior to the release of the API, which was
September 12, 2018. You can update attributes only for contacts that
started after the release of the API. If you attempt to update
attributes for a contact that occurred prior to the release of the API,
a 400 error is returned. This applies also to queued callbacks that
were initiated prior to the release of the API but are still active in
your instance.


=head2 UpdateContactFlowContent

=over

=item ContactFlowId => Str

=item Content => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateContactFlowContent>

Returns: nothing

Updates the specified contact flow.

You can also create and update contact flows using the Amazon Connect
Flow language
(https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html).


=head2 UpdateContactFlowName

=over

=item ContactFlowId => Str

=item InstanceId => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateContactFlowName>

Returns: nothing

The name of the contact flow.

You can also create and update contact flows using the Amazon Connect
Flow language
(https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html).


=head2 UpdateInstanceAttribute

=over

=item AttributeType => Str

=item InstanceId => Str

=item Value => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateInstanceAttribute>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Updates the value for the specified attribute type.


=head2 UpdateInstanceStorageConfig

=over

=item AssociationId => Str

=item InstanceId => Str

=item ResourceType => Str

=item StorageConfig => L<Paws::Connect::InstanceStorageConfig>


=back

Each argument is described in detail in: L<Paws::Connect::UpdateInstanceStorageConfig>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Updates an existing configuration for a resource type. This API is
idempotent.


=head2 UpdateQueueHoursOfOperation

=over

=item HoursOfOperationId => Str

=item InstanceId => Str

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateQueueHoursOfOperation>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Updates the hours of operation for the specified queue.


=head2 UpdateQueueMaxContacts

=over

=item InstanceId => Str

=item QueueId => Str

=item [MaxContacts => Int]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateQueueMaxContacts>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Updates the maximum number of contacts allowed in a queue before it is
considered full.


=head2 UpdateQueueName

=over

=item InstanceId => Str

=item QueueId => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateQueueName>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Updates the name and description of a queue. At least C<Name> or
C<Description> must be provided.


=head2 UpdateQueueOutboundCallerConfig

=over

=item InstanceId => Str

=item OutboundCallerConfig => L<Paws::Connect::OutboundCallerConfig>

=item QueueId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateQueueOutboundCallerConfig>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Updates the outbound caller ID name, number, and outbound whisper flow
for a specified queue.


=head2 UpdateQueueStatus

=over

=item InstanceId => Str

=item QueueId => Str

=item Status => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateQueueStatus>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Updates the status of the queue.


=head2 UpdateQuickConnectConfig

=over

=item InstanceId => Str

=item QuickConnectConfig => L<Paws::Connect::QuickConnectConfig>

=item QuickConnectId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateQuickConnectConfig>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Updates the configuration settings for the specified quick connect.


=head2 UpdateQuickConnectName

=over

=item InstanceId => Str

=item QuickConnectId => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateQuickConnectName>

Returns: nothing

This API is in preview release for Amazon Connect and is subject to
change.

Updates the name and description of a quick connect. The request
accepts the following data in JSON format. At least C<Name> or
C<Description> must be provided.


=head2 UpdateRoutingProfileConcurrency

=over

=item InstanceId => Str

=item MediaConcurrencies => ArrayRef[L<Paws::Connect::MediaConcurrency>]

=item RoutingProfileId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateRoutingProfileConcurrency>

Returns: nothing

Updates the channels that agents can handle in the Contact Control
Panel (CCP) for a routing profile.


=head2 UpdateRoutingProfileDefaultOutboundQueue

=over

=item DefaultOutboundQueueId => Str

=item InstanceId => Str

=item RoutingProfileId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateRoutingProfileDefaultOutboundQueue>

Returns: nothing

Updates the default outbound queue of a routing profile.


=head2 UpdateRoutingProfileName

=over

=item InstanceId => Str

=item RoutingProfileId => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateRoutingProfileName>

Returns: nothing

Updates the name and description of a routing profile. The request
accepts the following data in JSON format. At least C<Name> or
C<Description> must be provided.


=head2 UpdateRoutingProfileQueues

=over

=item InstanceId => Str

=item QueueConfigs => ArrayRef[L<Paws::Connect::RoutingProfileQueueConfig>]

=item RoutingProfileId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateRoutingProfileQueues>

Returns: nothing

Updates the properties associated with a set of queues for a routing
profile.


=head2 UpdateUserHierarchy

=over

=item InstanceId => Str

=item UserId => Str

=item [HierarchyGroupId => Str]


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserHierarchy>

Returns: nothing

Assigns the specified hierarchy group to the specified user.


=head2 UpdateUserHierarchyGroupName

=over

=item HierarchyGroupId => Str

=item InstanceId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserHierarchyGroupName>

Returns: nothing

Updates the name of the user hierarchy group.


=head2 UpdateUserHierarchyStructure

=over

=item HierarchyStructure => L<Paws::Connect::HierarchyStructureUpdate>

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserHierarchyStructure>

Returns: nothing

Updates the user hierarchy structure: add, remove, and rename user
hierarchy levels.


=head2 UpdateUserIdentityInfo

=over

=item IdentityInfo => L<Paws::Connect::UserIdentityInfo>

=item InstanceId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserIdentityInfo>

Returns: nothing

Updates the identity information for the specified user.

We strongly recommend limiting who has the ability to invoke
C<UpdateUserIdentityInfo>. Someone with that ability can change the
login credentials of other users by changing their email address. This
poses a security risk to your organization. They can change the email
address of a user to the attacker's email address, and then reset the
password through email. For more information, see Best Practices for
Security Profiles
(https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html)
in the I<Amazon Connect Administrator Guide>.


=head2 UpdateUserPhoneConfig

=over

=item InstanceId => Str

=item PhoneConfig => L<Paws::Connect::UserPhoneConfig>

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserPhoneConfig>

Returns: nothing

Updates the phone configuration settings for the specified user.


=head2 UpdateUserRoutingProfile

=over

=item InstanceId => Str

=item RoutingProfileId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserRoutingProfile>

Returns: nothing

Assigns the specified routing profile to the specified user.


=head2 UpdateUserSecurityProfiles

=over

=item InstanceId => Str

=item SecurityProfileIds => ArrayRef[Str|Undef]

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Connect::UpdateUserSecurityProfiles>

Returns: nothing

Assigns the specified security profiles to the specified user.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllMetricData(sub { },EndTime => Str, Filters => L<Paws::Connect::Filters>, HistoricalMetrics => ArrayRef[L<Paws::Connect::HistoricalMetric>], InstanceId => Str, StartTime => Str, [Groupings => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 GetAllMetricData(EndTime => Str, Filters => L<Paws::Connect::Filters>, HistoricalMetrics => ArrayRef[L<Paws::Connect::HistoricalMetric>], InstanceId => Str, StartTime => Str, [Groupings => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MetricResults, passing the object as the first parameter, and the string 'MetricResults' as the second parameter 

If not, it will return a a L<Paws::Connect::GetMetricDataResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApprovedOrigins(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllApprovedOrigins(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Origins, passing the object as the first parameter, and the string 'Origins' as the second parameter 

If not, it will return a a L<Paws::Connect::ListApprovedOriginsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllContactFlows(sub { },InstanceId => Str, [ContactFlowTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllContactFlows(InstanceId => Str, [ContactFlowTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ContactFlowSummaryList, passing the object as the first parameter, and the string 'ContactFlowSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListContactFlowsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllHoursOfOperations(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllHoursOfOperations(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HoursOfOperationSummaryList, passing the object as the first parameter, and the string 'HoursOfOperationSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListHoursOfOperationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInstanceAttributes(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllInstanceAttributes(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Attributes, passing the object as the first parameter, and the string 'Attributes' as the second parameter 

If not, it will return a a L<Paws::Connect::ListInstanceAttributesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInstances(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllInstances([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceSummaryList, passing the object as the first parameter, and the string 'InstanceSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInstanceStorageConfigs(sub { },InstanceId => Str, ResourceType => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllInstanceStorageConfigs(InstanceId => Str, ResourceType => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StorageConfigs, passing the object as the first parameter, and the string 'StorageConfigs' as the second parameter 

If not, it will return a a L<Paws::Connect::ListInstanceStorageConfigsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIntegrationAssociations(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllIntegrationAssociations(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - IntegrationAssociationSummaryList, passing the object as the first parameter, and the string 'IntegrationAssociationSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListIntegrationAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLambdaFunctions(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllLambdaFunctions(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LambdaFunctions, passing the object as the first parameter, and the string 'LambdaFunctions' as the second parameter 

If not, it will return a a L<Paws::Connect::ListLambdaFunctionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLexBots(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllLexBots(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LexBots, passing the object as the first parameter, and the string 'LexBots' as the second parameter 

If not, it will return a a L<Paws::Connect::ListLexBotsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPhoneNumbers(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, PhoneNumberCountryCodes => ArrayRef[Str|Undef], PhoneNumberTypes => ArrayRef[Str|Undef]])

=head2 ListAllPhoneNumbers(InstanceId => Str, [MaxResults => Int, NextToken => Str, PhoneNumberCountryCodes => ArrayRef[Str|Undef], PhoneNumberTypes => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PhoneNumberSummaryList, passing the object as the first parameter, and the string 'PhoneNumberSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListPhoneNumbersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPrompts(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPrompts(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PromptSummaryList, passing the object as the first parameter, and the string 'PromptSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListPromptsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQueueQuickConnects(sub { },InstanceId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllQueueQuickConnects(InstanceId => Str, QueueId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - QuickConnectSummaryList, passing the object as the first parameter, and the string 'QuickConnectSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListQueueQuickConnectsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQueues(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, QueueTypes => ArrayRef[Str|Undef]])

=head2 ListAllQueues(InstanceId => Str, [MaxResults => Int, NextToken => Str, QueueTypes => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - QueueSummaryList, passing the object as the first parameter, and the string 'QueueSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListQueuesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllQuickConnects(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str, QuickConnectTypes => ArrayRef[Str|Undef]])

=head2 ListAllQuickConnects(InstanceId => Str, [MaxResults => Int, NextToken => Str, QuickConnectTypes => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - QuickConnectSummaryList, passing the object as the first parameter, and the string 'QuickConnectSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListQuickConnectsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRoutingProfileQueues(sub { },InstanceId => Str, RoutingProfileId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllRoutingProfileQueues(InstanceId => Str, RoutingProfileId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RoutingProfileQueueConfigSummaryList, passing the object as the first parameter, and the string 'RoutingProfileQueueConfigSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListRoutingProfileQueuesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRoutingProfiles(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllRoutingProfiles(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RoutingProfileSummaryList, passing the object as the first parameter, and the string 'RoutingProfileSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListRoutingProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSecurityKeys(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSecurityKeys(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecurityKeys, passing the object as the first parameter, and the string 'SecurityKeys' as the second parameter 

If not, it will return a a L<Paws::Connect::ListSecurityKeysResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSecurityProfiles(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSecurityProfiles(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecurityProfileSummaryList, passing the object as the first parameter, and the string 'SecurityProfileSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListSecurityProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUseCases(sub { },InstanceId => Str, IntegrationAssociationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllUseCases(InstanceId => Str, IntegrationAssociationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UseCaseSummaryList, passing the object as the first parameter, and the string 'UseCaseSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListUseCasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUserHierarchyGroups(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllUserHierarchyGroups(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserHierarchyGroupSummaryList, passing the object as the first parameter, and the string 'UserHierarchyGroupSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListUserHierarchyGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsers(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllUsers(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserSummaryList, passing the object as the first parameter, and the string 'UserSummaryList' as the second parameter 

If not, it will return a a L<Paws::Connect::ListUsersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

