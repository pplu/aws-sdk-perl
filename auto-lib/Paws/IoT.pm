package Paws::IoT;
  use Moose;
  sub service { 'iot' }
  sub signing_name { 'execute-api' }
  sub version { '2015-05-28' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AcceptCertificateTransfer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::AcceptCertificateTransfer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddThingToBillingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::AddThingToBillingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddThingToThingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::AddThingToThingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateTargetsWithJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::AssociateTargetsWithJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::AttachPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachPrincipalPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::AttachPrincipalPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachSecurityProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::AttachSecurityProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachThingPrincipal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::AttachThingPrincipal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelAuditTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CancelAuditTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelCertificateTransfer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CancelCertificateTransfer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CancelJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelJobExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CancelJobExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ClearDefaultAuthorizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ClearDefaultAuthorizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAuthorizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateAuthorizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBillingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateBillingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCertificateFromCsr {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateCertificateFromCsr', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDynamicThingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateDynamicThingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKeysAndCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateKeysAndCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOTAUpdate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateOTAUpdate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreatePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePolicyVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreatePolicyVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRoleAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateRoleAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateScheduledAudit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateScheduledAudit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSecurityProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateSecurityProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateThingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateThingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateThingType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateThingType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTopicRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::CreateTopicRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccountAuditConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteAccountAuditConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAuthorizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteAuthorizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBillingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteBillingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCACertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteCACertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDynamicThingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteDynamicThingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteJobExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteJobExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOTAUpdate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteOTAUpdate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeletePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePolicyVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeletePolicyVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRegistrationCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteRegistrationCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRoleAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteRoleAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteScheduledAudit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteScheduledAudit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSecurityProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteSecurityProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteThingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteThingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteThingType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteThingType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTopicRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteTopicRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteV2LoggingLevel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeleteV2LoggingLevel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeprecateThingType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DeprecateThingType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountAuditConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeAccountAuditConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAuditTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeAuditTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAuthorizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeAuthorizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBillingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeBillingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCACertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeCACertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDefaultAuthorizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeDefaultAuthorizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEventConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeEventConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeJobExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeJobExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRoleAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeRoleAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScheduledAudit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeScheduledAudit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSecurityProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeSecurityProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeThingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeThingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeThingRegistrationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeThingRegistrationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeThingType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DescribeThingType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DetachPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachPrincipalPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DetachPrincipalPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachSecurityProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DetachSecurityProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachThingPrincipal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DetachThingPrincipal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableTopicRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::DisableTopicRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableTopicRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::EnableTopicRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEffectivePolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::GetEffectivePolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIndexingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::GetIndexingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::GetJobDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLoggingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::GetLoggingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOTAUpdate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::GetOTAUpdate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::GetPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicyVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::GetPolicyVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRegistrationCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::GetRegistrationCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTopicRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::GetTopicRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetV2LoggingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::GetV2LoggingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListActiveViolations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListActiveViolations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAttachedPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListAttachedPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAuditFindings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListAuditFindings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAuditTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListAuditTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAuthorizers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListAuthorizers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBillingGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListBillingGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCACertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListCACertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListCertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCertificatesByCA {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListCertificatesByCA', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIndices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListIndices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobExecutionsForJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListJobExecutionsForJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobExecutionsForThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListJobExecutionsForThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOTAUpdates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListOTAUpdates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOutgoingCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListOutgoingCertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicyPrincipals {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListPolicyPrincipals', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicyVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListPolicyVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPrincipalPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListPrincipalPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPrincipalThings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListPrincipalThings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRoleAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListRoleAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListScheduledAudits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListScheduledAudits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSecurityProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListSecurityProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSecurityProfilesForTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListSecurityProfilesForTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStreams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListStreams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTargetsForPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListTargetsForPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTargetsForSecurityProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListTargetsForSecurityProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThingGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListThingGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThingGroupsForThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListThingGroupsForThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThingPrincipals {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListThingPrincipals', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThingRegistrationTaskReports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListThingRegistrationTaskReports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThingRegistrationTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListThingRegistrationTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListThings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThingsInBillingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListThingsInBillingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThingsInThingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListThingsInThingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThingTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListThingTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTopicRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListTopicRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListV2LoggingLevels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListV2LoggingLevels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListViolationEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ListViolationEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterCACertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::RegisterCACertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::RegisterCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::RegisterThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectCertificateTransfer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::RejectCertificateTransfer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveThingFromBillingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::RemoveThingFromBillingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveThingFromThingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::RemoveThingFromThingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceTopicRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ReplaceTopicRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::SearchIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetDefaultAuthorizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::SetDefaultAuthorizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetDefaultPolicyVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::SetDefaultPolicyVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetLoggingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::SetLoggingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetV2LoggingLevel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::SetV2LoggingLevel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetV2LoggingOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::SetV2LoggingOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartOnDemandAuditTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::StartOnDemandAuditTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartThingRegistrationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::StartThingRegistrationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopThingRegistrationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::StopThingRegistrationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::TestAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestInvokeAuthorizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::TestInvokeAuthorizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TransferCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::TransferCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccountAuditConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateAccountAuditConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAuthorizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateAuthorizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBillingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateBillingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCACertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateCACertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDynamicThingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateDynamicThingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEventConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateEventConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIndexingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateIndexingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoleAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateRoleAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateScheduledAudit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateScheduledAudit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSecurityProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateSecurityProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateThingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateThingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateThingGroupsForThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::UpdateThingGroupsForThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ValidateSecurityProfileBehaviors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT::ValidateSecurityProfileBehaviors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllActiveViolations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListActiveViolations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListActiveViolations(@_, nextToken => $next_result->nextToken);
        push @{ $result->activeViolations }, @{ $next_result->activeViolations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'activeViolations') foreach (@{ $result->activeViolations });
        $result = $self->ListActiveViolations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'activeViolations') foreach (@{ $result->activeViolations });
    }

    return undef
  }
  sub ListAllAttachedPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAttachedPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextMarker) {
        $next_result = $self->ListAttachedPolicies(@_, marker => $next_result->nextMarker);
        push @{ $result->policies }, @{ $next_result->policies };
      }
      return $result;
    } else {
      while ($result->nextMarker) {
        $callback->($_ => 'policies') foreach (@{ $result->policies });
        $result = $self->ListAttachedPolicies(@_, marker => $result->nextMarker);
      }
      $callback->($_ => 'policies') foreach (@{ $result->policies });
    }

    return undef
  }
  sub ListAllAuditFindings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAuditFindings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAuditFindings(@_, nextToken => $next_result->nextToken);
        push @{ $result->findings }, @{ $next_result->findings };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'findings') foreach (@{ $result->findings });
        $result = $self->ListAuditFindings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'findings') foreach (@{ $result->findings });
    }

    return undef
  }
  sub ListAllAuditTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAuditTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListAuditTasks(@_, nextToken => $next_result->nextToken);
        push @{ $result->tasks }, @{ $next_result->tasks };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'tasks') foreach (@{ $result->tasks });
        $result = $self->ListAuditTasks(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'tasks') foreach (@{ $result->tasks });
    }

    return undef
  }
  sub ListAllAuthorizers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAuthorizers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextMarker) {
        $next_result = $self->ListAuthorizers(@_, marker => $next_result->nextMarker);
        push @{ $result->authorizers }, @{ $next_result->authorizers };
      }
      return $result;
    } else {
      while ($result->nextMarker) {
        $callback->($_ => 'authorizers') foreach (@{ $result->authorizers });
        $result = $self->ListAuthorizers(@_, marker => $result->nextMarker);
      }
      $callback->($_ => 'authorizers') foreach (@{ $result->authorizers });
    }

    return undef
  }
  sub ListAllBillingGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBillingGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBillingGroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->billingGroups }, @{ $next_result->billingGroups };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'billingGroups') foreach (@{ $result->billingGroups });
        $result = $self->ListBillingGroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'billingGroups') foreach (@{ $result->billingGroups });
    }

    return undef
  }
  sub ListAllCACertificates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCACertificates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextMarker) {
        $next_result = $self->ListCACertificates(@_, marker => $next_result->nextMarker);
        push @{ $result->certificates }, @{ $next_result->certificates };
      }
      return $result;
    } else {
      while ($result->nextMarker) {
        $callback->($_ => 'certificates') foreach (@{ $result->certificates });
        $result = $self->ListCACertificates(@_, marker => $result->nextMarker);
      }
      $callback->($_ => 'certificates') foreach (@{ $result->certificates });
    }

    return undef
  }
  sub ListAllCertificates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCertificates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextMarker) {
        $next_result = $self->ListCertificates(@_, marker => $next_result->nextMarker);
        push @{ $result->certificates }, @{ $next_result->certificates };
      }
      return $result;
    } else {
      while ($result->nextMarker) {
        $callback->($_ => 'certificates') foreach (@{ $result->certificates });
        $result = $self->ListCertificates(@_, marker => $result->nextMarker);
      }
      $callback->($_ => 'certificates') foreach (@{ $result->certificates });
    }

    return undef
  }
  sub ListAllCertificatesByCA {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCertificatesByCA(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextMarker) {
        $next_result = $self->ListCertificatesByCA(@_, marker => $next_result->nextMarker);
        push @{ $result->certificates }, @{ $next_result->certificates };
      }
      return $result;
    } else {
      while ($result->nextMarker) {
        $callback->($_ => 'certificates') foreach (@{ $result->certificates });
        $result = $self->ListCertificatesByCA(@_, marker => $result->nextMarker);
      }
      $callback->($_ => 'certificates') foreach (@{ $result->certificates });
    }

    return undef
  }
  sub ListAllIndices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIndices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListIndices(@_, nextToken => $next_result->nextToken);
        push @{ $result->indexNames }, @{ $next_result->indexNames };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'indexNames') foreach (@{ $result->indexNames });
        $result = $self->ListIndices(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'indexNames') foreach (@{ $result->indexNames });
    }

    return undef
  }
  sub ListAllJobExecutionsForJob {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobExecutionsForJob(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListJobExecutionsForJob(@_, nextToken => $next_result->nextToken);
        push @{ $result->executionSummaries }, @{ $next_result->executionSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'executionSummaries') foreach (@{ $result->executionSummaries });
        $result = $self->ListJobExecutionsForJob(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'executionSummaries') foreach (@{ $result->executionSummaries });
    }

    return undef
  }
  sub ListAllJobExecutionsForThing {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobExecutionsForThing(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListJobExecutionsForThing(@_, nextToken => $next_result->nextToken);
        push @{ $result->executionSummaries }, @{ $next_result->executionSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'executionSummaries') foreach (@{ $result->executionSummaries });
        $result = $self->ListJobExecutionsForThing(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'executionSummaries') foreach (@{ $result->executionSummaries });
    }

    return undef
  }
  sub ListAllJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->jobs }, @{ $next_result->jobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'jobs') foreach (@{ $result->jobs });
        $result = $self->ListJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'jobs') foreach (@{ $result->jobs });
    }

    return undef
  }
  sub ListAllOTAUpdates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOTAUpdates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListOTAUpdates(@_, nextToken => $next_result->nextToken);
        push @{ $result->otaUpdates }, @{ $next_result->otaUpdates };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'otaUpdates') foreach (@{ $result->otaUpdates });
        $result = $self->ListOTAUpdates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'otaUpdates') foreach (@{ $result->otaUpdates });
    }

    return undef
  }
  sub ListAllOutgoingCertificates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOutgoingCertificates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextMarker) {
        $next_result = $self->ListOutgoingCertificates(@_, marker => $next_result->nextMarker);
        push @{ $result->outgoingCertificates }, @{ $next_result->outgoingCertificates };
      }
      return $result;
    } else {
      while ($result->nextMarker) {
        $callback->($_ => 'outgoingCertificates') foreach (@{ $result->outgoingCertificates });
        $result = $self->ListOutgoingCertificates(@_, marker => $result->nextMarker);
      }
      $callback->($_ => 'outgoingCertificates') foreach (@{ $result->outgoingCertificates });
    }

    return undef
  }
  sub ListAllPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextMarker) {
        $next_result = $self->ListPolicies(@_, marker => $next_result->nextMarker);
        push @{ $result->policies }, @{ $next_result->policies };
      }
      return $result;
    } else {
      while ($result->nextMarker) {
        $callback->($_ => 'policies') foreach (@{ $result->policies });
        $result = $self->ListPolicies(@_, marker => $result->nextMarker);
      }
      $callback->($_ => 'policies') foreach (@{ $result->policies });
    }

    return undef
  }
  sub ListAllPolicyPrincipals {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPolicyPrincipals(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextMarker) {
        $next_result = $self->ListPolicyPrincipals(@_, marker => $next_result->nextMarker);
        push @{ $result->principals }, @{ $next_result->principals };
      }
      return $result;
    } else {
      while ($result->nextMarker) {
        $callback->($_ => 'principals') foreach (@{ $result->principals });
        $result = $self->ListPolicyPrincipals(@_, marker => $result->nextMarker);
      }
      $callback->($_ => 'principals') foreach (@{ $result->principals });
    }

    return undef
  }
  sub ListAllPrincipalPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPrincipalPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextMarker) {
        $next_result = $self->ListPrincipalPolicies(@_, marker => $next_result->nextMarker);
        push @{ $result->policies }, @{ $next_result->policies };
      }
      return $result;
    } else {
      while ($result->nextMarker) {
        $callback->($_ => 'policies') foreach (@{ $result->policies });
        $result = $self->ListPrincipalPolicies(@_, marker => $result->nextMarker);
      }
      $callback->($_ => 'policies') foreach (@{ $result->policies });
    }

    return undef
  }
  sub ListAllPrincipalThings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPrincipalThings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPrincipalThings(@_, nextToken => $next_result->nextToken);
        push @{ $result->things }, @{ $next_result->things };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'things') foreach (@{ $result->things });
        $result = $self->ListPrincipalThings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'things') foreach (@{ $result->things });
    }

    return undef
  }
  sub ListAllRoleAliases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRoleAliases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextMarker) {
        $next_result = $self->ListRoleAliases(@_, marker => $next_result->nextMarker);
        push @{ $result->roleAliases }, @{ $next_result->roleAliases };
      }
      return $result;
    } else {
      while ($result->nextMarker) {
        $callback->($_ => 'roleAliases') foreach (@{ $result->roleAliases });
        $result = $self->ListRoleAliases(@_, marker => $result->nextMarker);
      }
      $callback->($_ => 'roleAliases') foreach (@{ $result->roleAliases });
    }

    return undef
  }
  sub ListAllScheduledAudits {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListScheduledAudits(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListScheduledAudits(@_, nextToken => $next_result->nextToken);
        push @{ $result->scheduledAudits }, @{ $next_result->scheduledAudits };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'scheduledAudits') foreach (@{ $result->scheduledAudits });
        $result = $self->ListScheduledAudits(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'scheduledAudits') foreach (@{ $result->scheduledAudits });
    }

    return undef
  }
  sub ListAllSecurityProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSecurityProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSecurityProfiles(@_, nextToken => $next_result->nextToken);
        push @{ $result->securityProfileIdentifiers }, @{ $next_result->securityProfileIdentifiers };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'securityProfileIdentifiers') foreach (@{ $result->securityProfileIdentifiers });
        $result = $self->ListSecurityProfiles(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'securityProfileIdentifiers') foreach (@{ $result->securityProfileIdentifiers });
    }

    return undef
  }
  sub ListAllSecurityProfilesForTarget {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSecurityProfilesForTarget(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSecurityProfilesForTarget(@_, nextToken => $next_result->nextToken);
        push @{ $result->securityProfileTargetMappings }, @{ $next_result->securityProfileTargetMappings };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'securityProfileTargetMappings') foreach (@{ $result->securityProfileTargetMappings });
        $result = $self->ListSecurityProfilesForTarget(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'securityProfileTargetMappings') foreach (@{ $result->securityProfileTargetMappings });
    }

    return undef
  }
  sub ListAllStreams {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStreams(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListStreams(@_, nextToken => $next_result->nextToken);
        push @{ $result->streams }, @{ $next_result->streams };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'streams') foreach (@{ $result->streams });
        $result = $self->ListStreams(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'streams') foreach (@{ $result->streams });
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
  sub ListAllTargetsForPolicy {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTargetsForPolicy(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextMarker) {
        $next_result = $self->ListTargetsForPolicy(@_, marker => $next_result->nextMarker);
        push @{ $result->targets }, @{ $next_result->targets };
      }
      return $result;
    } else {
      while ($result->nextMarker) {
        $callback->($_ => 'targets') foreach (@{ $result->targets });
        $result = $self->ListTargetsForPolicy(@_, marker => $result->nextMarker);
      }
      $callback->($_ => 'targets') foreach (@{ $result->targets });
    }

    return undef
  }
  sub ListAllTargetsForSecurityProfile {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTargetsForSecurityProfile(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTargetsForSecurityProfile(@_, nextToken => $next_result->nextToken);
        push @{ $result->securityProfileTargets }, @{ $next_result->securityProfileTargets };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'securityProfileTargets') foreach (@{ $result->securityProfileTargets });
        $result = $self->ListTargetsForSecurityProfile(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'securityProfileTargets') foreach (@{ $result->securityProfileTargets });
    }

    return undef
  }
  sub ListAllThingGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListThingGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListThingGroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->thingGroups }, @{ $next_result->thingGroups };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'thingGroups') foreach (@{ $result->thingGroups });
        $result = $self->ListThingGroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'thingGroups') foreach (@{ $result->thingGroups });
    }

    return undef
  }
  sub ListAllThingGroupsForThing {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListThingGroupsForThing(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListThingGroupsForThing(@_, nextToken => $next_result->nextToken);
        push @{ $result->thingGroups }, @{ $next_result->thingGroups };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'thingGroups') foreach (@{ $result->thingGroups });
        $result = $self->ListThingGroupsForThing(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'thingGroups') foreach (@{ $result->thingGroups });
    }

    return undef
  }
  sub ListAllThingRegistrationTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListThingRegistrationTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListThingRegistrationTasks(@_, nextToken => $next_result->nextToken);
        push @{ $result->taskIds }, @{ $next_result->taskIds };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'taskIds') foreach (@{ $result->taskIds });
        $result = $self->ListThingRegistrationTasks(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'taskIds') foreach (@{ $result->taskIds });
    }

    return undef
  }
  sub ListAllThings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListThings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListThings(@_, nextToken => $next_result->nextToken);
        push @{ $result->things }, @{ $next_result->things };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'things') foreach (@{ $result->things });
        $result = $self->ListThings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'things') foreach (@{ $result->things });
    }

    return undef
  }
  sub ListAllThingsInBillingGroup {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListThingsInBillingGroup(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListThingsInBillingGroup(@_, nextToken => $next_result->nextToken);
        push @{ $result->things }, @{ $next_result->things };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'things') foreach (@{ $result->things });
        $result = $self->ListThingsInBillingGroup(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'things') foreach (@{ $result->things });
    }

    return undef
  }
  sub ListAllThingsInThingGroup {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListThingsInThingGroup(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListThingsInThingGroup(@_, nextToken => $next_result->nextToken);
        push @{ $result->things }, @{ $next_result->things };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'things') foreach (@{ $result->things });
        $result = $self->ListThingsInThingGroup(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'things') foreach (@{ $result->things });
    }

    return undef
  }
  sub ListAllThingTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListThingTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListThingTypes(@_, nextToken => $next_result->nextToken);
        push @{ $result->thingTypes }, @{ $next_result->thingTypes };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'thingTypes') foreach (@{ $result->thingTypes });
        $result = $self->ListThingTypes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'thingTypes') foreach (@{ $result->thingTypes });
    }

    return undef
  }
  sub ListAllTopicRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTopicRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTopicRules(@_, nextToken => $next_result->nextToken);
        push @{ $result->rules }, @{ $next_result->rules };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'rules') foreach (@{ $result->rules });
        $result = $self->ListTopicRules(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'rules') foreach (@{ $result->rules });
    }

    return undef
  }
  sub ListAllV2LoggingLevels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListV2LoggingLevels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListV2LoggingLevels(@_, nextToken => $next_result->nextToken);
        push @{ $result->logTargetConfigurations }, @{ $next_result->logTargetConfigurations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'logTargetConfigurations') foreach (@{ $result->logTargetConfigurations });
        $result = $self->ListV2LoggingLevels(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'logTargetConfigurations') foreach (@{ $result->logTargetConfigurations });
    }

    return undef
  }
  sub ListAllViolationEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListViolationEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListViolationEvents(@_, nextToken => $next_result->nextToken);
        push @{ $result->violationEvents }, @{ $next_result->violationEvents };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'violationEvents') foreach (@{ $result->violationEvents });
        $result = $self->ListViolationEvents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'violationEvents') foreach (@{ $result->violationEvents });
    }

    return undef
  }


  sub operations { qw/AcceptCertificateTransfer AddThingToBillingGroup AddThingToThingGroup AssociateTargetsWithJob AttachPolicy AttachPrincipalPolicy AttachSecurityProfile AttachThingPrincipal CancelAuditTask CancelCertificateTransfer CancelJob CancelJobExecution ClearDefaultAuthorizer CreateAuthorizer CreateBillingGroup CreateCertificateFromCsr CreateDynamicThingGroup CreateJob CreateKeysAndCertificate CreateOTAUpdate CreatePolicy CreatePolicyVersion CreateRoleAlias CreateScheduledAudit CreateSecurityProfile CreateStream CreateThing CreateThingGroup CreateThingType CreateTopicRule DeleteAccountAuditConfiguration DeleteAuthorizer DeleteBillingGroup DeleteCACertificate DeleteCertificate DeleteDynamicThingGroup DeleteJob DeleteJobExecution DeleteOTAUpdate DeletePolicy DeletePolicyVersion DeleteRegistrationCode DeleteRoleAlias DeleteScheduledAudit DeleteSecurityProfile DeleteStream DeleteThing DeleteThingGroup DeleteThingType DeleteTopicRule DeleteV2LoggingLevel DeprecateThingType DescribeAccountAuditConfiguration DescribeAuditTask DescribeAuthorizer DescribeBillingGroup DescribeCACertificate DescribeCertificate DescribeDefaultAuthorizer DescribeEndpoint DescribeEventConfigurations DescribeIndex DescribeJob DescribeJobExecution DescribeRoleAlias DescribeScheduledAudit DescribeSecurityProfile DescribeStream DescribeThing DescribeThingGroup DescribeThingRegistrationTask DescribeThingType DetachPolicy DetachPrincipalPolicy DetachSecurityProfile DetachThingPrincipal DisableTopicRule EnableTopicRule GetEffectivePolicies GetIndexingConfiguration GetJobDocument GetLoggingOptions GetOTAUpdate GetPolicy GetPolicyVersion GetRegistrationCode GetTopicRule GetV2LoggingOptions ListActiveViolations ListAttachedPolicies ListAuditFindings ListAuditTasks ListAuthorizers ListBillingGroups ListCACertificates ListCertificates ListCertificatesByCA ListIndices ListJobExecutionsForJob ListJobExecutionsForThing ListJobs ListOTAUpdates ListOutgoingCertificates ListPolicies ListPolicyPrincipals ListPolicyVersions ListPrincipalPolicies ListPrincipalThings ListRoleAliases ListScheduledAudits ListSecurityProfiles ListSecurityProfilesForTarget ListStreams ListTagsForResource ListTargetsForPolicy ListTargetsForSecurityProfile ListThingGroups ListThingGroupsForThing ListThingPrincipals ListThingRegistrationTaskReports ListThingRegistrationTasks ListThings ListThingsInBillingGroup ListThingsInThingGroup ListThingTypes ListTopicRules ListV2LoggingLevels ListViolationEvents RegisterCACertificate RegisterCertificate RegisterThing RejectCertificateTransfer RemoveThingFromBillingGroup RemoveThingFromThingGroup ReplaceTopicRule SearchIndex SetDefaultAuthorizer SetDefaultPolicyVersion SetLoggingOptions SetV2LoggingLevel SetV2LoggingOptions StartOnDemandAuditTask StartThingRegistrationTask StopThingRegistrationTask TagResource TestAuthorization TestInvokeAuthorizer TransferCertificate UntagResource UpdateAccountAuditConfiguration UpdateAuthorizer UpdateBillingGroup UpdateCACertificate UpdateCertificate UpdateDynamicThingGroup UpdateEventConfigurations UpdateIndexingConfiguration UpdateJob UpdateRoleAlias UpdateScheduledAudit UpdateSecurityProfile UpdateStream UpdateThing UpdateThingGroup UpdateThingGroupsForThing ValidateSecurityProfileBehaviors / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT - Perl Interface to AWS AWS IoT

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoT');
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

AWS IoT

AWS IoT provides secure, bi-directional communication between
Internet-connected devices (such as sensors, actuators, embedded
devices, or smart appliances) and the AWS cloud. You can discover your
custom IoT-Data endpoint to communicate with, configure rules for data
processing and integration with other services, organize resources
associated with each device (Registry), configure logging, and create
and manage policies and credentials to authenticate devices.

For more information about how AWS IoT works, see the Developer Guide
(http://docs.aws.amazon.com/iot/latest/developerguide/aws-iot-how-it-works.html).

For information about how to use the credentials provider for AWS IoT,
see Authorizing Direct Calls to AWS Services
(http://docs.aws.amazon.com/iot/latest/developerguide/authorizing-direct-aws.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot-2015-05-28>


=head1 METHODS

=head2 AcceptCertificateTransfer

=over

=item CertificateId => Str

=item [SetAsActive => Bool]


=back

Each argument is described in detail in: L<Paws::IoT::AcceptCertificateTransfer>

Returns: nothing

Accepts a pending certificate transfer. The default state of the
certificate is INACTIVE.

To check for pending certificate transfers, call ListCertificates to
enumerate your certificates.


=head2 AddThingToBillingGroup

=over

=item [BillingGroupArn => Str]

=item [BillingGroupName => Str]

=item [ThingArn => Str]

=item [ThingName => Str]


=back

Each argument is described in detail in: L<Paws::IoT::AddThingToBillingGroup>

Returns: a L<Paws::IoT::AddThingToBillingGroupResponse> instance

Adds a thing to a billing group.


=head2 AddThingToThingGroup

=over

=item [OverrideDynamicGroups => Bool]

=item [ThingArn => Str]

=item [ThingGroupArn => Str]

=item [ThingGroupName => Str]

=item [ThingName => Str]


=back

Each argument is described in detail in: L<Paws::IoT::AddThingToThingGroup>

Returns: a L<Paws::IoT::AddThingToThingGroupResponse> instance

Adds a thing to a thing group.


=head2 AssociateTargetsWithJob

=over

=item JobId => Str

=item Targets => ArrayRef[Str|Undef]

=item [Comment => Str]


=back

Each argument is described in detail in: L<Paws::IoT::AssociateTargetsWithJob>

Returns: a L<Paws::IoT::AssociateTargetsWithJobResponse> instance

Associates a group with a continuous job. The following criteria must
be met:

=over

=item *

The job must have been created with the C<targetSelection> field set to
"CONTINUOUS".

=item *

The job status must currently be "IN_PROGRESS".

=item *

The total number of targets associated with a job must not exceed 100.

=back



=head2 AttachPolicy

=over

=item PolicyName => Str

=item Target => Str


=back

Each argument is described in detail in: L<Paws::IoT::AttachPolicy>

Returns: nothing

Attaches a policy to the specified target.


=head2 AttachPrincipalPolicy

=over

=item PolicyName => Str

=item Principal => Str


=back

Each argument is described in detail in: L<Paws::IoT::AttachPrincipalPolicy>

Returns: nothing

Attaches the specified policy to the specified principal (certificate
or other credential).

B<Note:> This API is deprecated. Please use AttachPolicy instead.


=head2 AttachSecurityProfile

=over

=item SecurityProfileName => Str

=item SecurityProfileTargetArn => Str


=back

Each argument is described in detail in: L<Paws::IoT::AttachSecurityProfile>

Returns: a L<Paws::IoT::AttachSecurityProfileResponse> instance

Associates a Device Defender security profile with a thing group or
with this account. Each thing group or account can have up to five
security profiles associated with it.


=head2 AttachThingPrincipal

=over

=item Principal => Str

=item ThingName => Str


=back

Each argument is described in detail in: L<Paws::IoT::AttachThingPrincipal>

Returns: a L<Paws::IoT::AttachThingPrincipalResponse> instance

Attaches the specified principal to the specified thing.


=head2 CancelAuditTask

=over

=item TaskId => Str


=back

Each argument is described in detail in: L<Paws::IoT::CancelAuditTask>

Returns: a L<Paws::IoT::CancelAuditTaskResponse> instance

Cancels an audit that is in progress. The audit can be either scheduled
or on-demand. If the audit is not in progress, an
"InvalidRequestException" occurs.


=head2 CancelCertificateTransfer

=over

=item CertificateId => Str


=back

Each argument is described in detail in: L<Paws::IoT::CancelCertificateTransfer>

Returns: nothing

Cancels a pending transfer for the specified certificate.

B<Note> Only the transfer source account can use this operation to
cancel a transfer. (Transfer destinations can use
RejectCertificateTransfer instead.) After transfer, AWS IoT returns the
certificate to the source account in the INACTIVE state. After the
destination account has accepted the transfer, the transfer cannot be
cancelled.

After a certificate transfer is cancelled, the status of the
certificate changes from PENDING_TRANSFER to INACTIVE.


=head2 CancelJob

=over

=item JobId => Str

=item [Comment => Str]

=item [Force => Bool]

=item [ReasonCode => Str]


=back

Each argument is described in detail in: L<Paws::IoT::CancelJob>

Returns: a L<Paws::IoT::CancelJobResponse> instance

Cancels a job.


=head2 CancelJobExecution

=over

=item JobId => Str

=item ThingName => Str

=item [ExpectedVersion => Int]

=item [Force => Bool]

=item [StatusDetails => L<Paws::IoT::DetailsMap>]


=back

Each argument is described in detail in: L<Paws::IoT::CancelJobExecution>

Returns: nothing

Cancels the execution of a job for a given thing.


=head2 ClearDefaultAuthorizer






Each argument is described in detail in: L<Paws::IoT::ClearDefaultAuthorizer>

Returns: a L<Paws::IoT::ClearDefaultAuthorizerResponse> instance

Clears the default authorizer.


=head2 CreateAuthorizer

=over

=item AuthorizerFunctionArn => Str

=item AuthorizerName => Str

=item TokenKeyName => Str

=item TokenSigningPublicKeys => L<Paws::IoT::PublicKeyMap>

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::IoT::CreateAuthorizer>

Returns: a L<Paws::IoT::CreateAuthorizerResponse> instance

Creates an authorizer.


=head2 CreateBillingGroup

=over

=item BillingGroupName => Str

=item [BillingGroupProperties => L<Paws::IoT::BillingGroupProperties>]

=item [Tags => ArrayRef[L<Paws::IoT::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoT::CreateBillingGroup>

Returns: a L<Paws::IoT::CreateBillingGroupResponse> instance

Creates a billing group.


=head2 CreateCertificateFromCsr

=over

=item CertificateSigningRequest => Str

=item [SetAsActive => Bool]


=back

Each argument is described in detail in: L<Paws::IoT::CreateCertificateFromCsr>

Returns: a L<Paws::IoT::CreateCertificateFromCsrResponse> instance

Creates an X.509 certificate using the specified certificate signing
request.

B<Note:> The CSR must include a public key that is either an RSA key
with a length of at least 2048 bits or an ECC key from NIST P-256 or
NIST P-384 curves.

B<Note:> Reusing the same certificate signing request (CSR) results in
a distinct certificate.

You can create multiple certificates in a batch by creating a
directory, copying multiple .csr files into that directory, and then
specifying that directory on the command line. The following commands
show how to create a batch of certificates given a batch of CSRs.

Assuming a set of CSRs are located inside of the directory
my-csr-directory:

On Linux and OS X, the command is:

$ ls my-csr-directory/ | xargs -I {} aws iot
create-certificate-from-csr --certificate-signing-request
file://my-csr-directory/{}

This command lists all of the CSRs in my-csr-directory and pipes each
CSR file name to the aws iot create-certificate-from-csr AWS CLI
command to create a certificate for the corresponding CSR.

The aws iot create-certificate-from-csr part of the command can also be
run in parallel to speed up the certificate creation process:

$ ls my-csr-directory/ | xargs -P 10 -I {} aws iot
create-certificate-from-csr --certificate-signing-request
file://my-csr-directory/{}

On Windows PowerShell, the command to create certificates for all CSRs
in my-csr-directory is:

E<gt> ls -Name my-csr-directory | %{aws iot create-certificate-from-csr
--certificate-signing-request file://my-csr-directory/$_}

On a Windows command prompt, the command to create certificates for all
CSRs in my-csr-directory is:

E<gt> forfiles /p my-csr-directory /c "cmd /c aws iot
create-certificate-from-csr --certificate-signing-request file://@path"


=head2 CreateDynamicThingGroup

=over

=item QueryString => Str

=item ThingGroupName => Str

=item [IndexName => Str]

=item [QueryVersion => Str]

=item [Tags => ArrayRef[L<Paws::IoT::Tag>]]

=item [ThingGroupProperties => L<Paws::IoT::ThingGroupProperties>]


=back

Each argument is described in detail in: L<Paws::IoT::CreateDynamicThingGroup>

Returns: a L<Paws::IoT::CreateDynamicThingGroupResponse> instance

Creates a dynamic thing group.


=head2 CreateJob

=over

=item JobId => Str

=item Targets => ArrayRef[Str|Undef]

=item [AbortConfig => L<Paws::IoT::AbortConfig>]

=item [Description => Str]

=item [Document => Str]

=item [DocumentSource => Str]

=item [JobExecutionsRolloutConfig => L<Paws::IoT::JobExecutionsRolloutConfig>]

=item [PresignedUrlConfig => L<Paws::IoT::PresignedUrlConfig>]

=item [Tags => ArrayRef[L<Paws::IoT::Tag>]]

=item [TargetSelection => Str]

=item [TimeoutConfig => L<Paws::IoT::TimeoutConfig>]


=back

Each argument is described in detail in: L<Paws::IoT::CreateJob>

Returns: a L<Paws::IoT::CreateJobResponse> instance

Creates a job.


=head2 CreateKeysAndCertificate

=over

=item [SetAsActive => Bool]


=back

Each argument is described in detail in: L<Paws::IoT::CreateKeysAndCertificate>

Returns: a L<Paws::IoT::CreateKeysAndCertificateResponse> instance

Creates a 2048-bit RSA key pair and issues an X.509 certificate using
the issued public key.

B<Note> This is the only time AWS IoT issues the private key for this
certificate, so it is important to keep it in a secure location.


=head2 CreateOTAUpdate

=over

=item Files => ArrayRef[L<Paws::IoT::OTAUpdateFile>]

=item OtaUpdateId => Str

=item RoleArn => Str

=item Targets => ArrayRef[Str|Undef]

=item [AdditionalParameters => L<Paws::IoT::AdditionalParameterMap>]

=item [AwsJobExecutionsRolloutConfig => L<Paws::IoT::AwsJobExecutionsRolloutConfig>]

=item [Description => Str]

=item [TargetSelection => Str]


=back

Each argument is described in detail in: L<Paws::IoT::CreateOTAUpdate>

Returns: a L<Paws::IoT::CreateOTAUpdateResponse> instance

Creates an AWS IoT OTAUpdate on a target group of things or groups.


=head2 CreatePolicy

=over

=item PolicyDocument => Str

=item PolicyName => Str


=back

Each argument is described in detail in: L<Paws::IoT::CreatePolicy>

Returns: a L<Paws::IoT::CreatePolicyResponse> instance

Creates an AWS IoT policy.

The created policy is the default version for the policy. This
operation creates a policy version with a version identifier of B<1>
and sets B<1> as the policy's default version.


=head2 CreatePolicyVersion

=over

=item PolicyDocument => Str

=item PolicyName => Str

=item [SetAsDefault => Bool]


=back

Each argument is described in detail in: L<Paws::IoT::CreatePolicyVersion>

Returns: a L<Paws::IoT::CreatePolicyVersionResponse> instance

Creates a new version of the specified AWS IoT policy. To update a
policy, create a new policy version. A managed policy can have up to
five versions. If the policy has five versions, you must use
DeletePolicyVersion to delete an existing version before you create a
new one.

Optionally, you can set the new version as the policy's default
version. The default version is the operative version (that is, the
version that is in effect for the certificates to which the policy is
attached).


=head2 CreateRoleAlias

=over

=item RoleAlias => Str

=item RoleArn => Str

=item [CredentialDurationSeconds => Int]


=back

Each argument is described in detail in: L<Paws::IoT::CreateRoleAlias>

Returns: a L<Paws::IoT::CreateRoleAliasResponse> instance

Creates a role alias.


=head2 CreateScheduledAudit

=over

=item Frequency => Str

=item ScheduledAuditName => Str

=item TargetCheckNames => ArrayRef[Str|Undef]

=item [DayOfMonth => Str]

=item [DayOfWeek => Str]


=back

Each argument is described in detail in: L<Paws::IoT::CreateScheduledAudit>

Returns: a L<Paws::IoT::CreateScheduledAuditResponse> instance

Creates a scheduled audit that is run at a specified time interval.


=head2 CreateSecurityProfile

=over

=item Behaviors => ArrayRef[L<Paws::IoT::Behavior>]

=item SecurityProfileName => Str

=item [AlertTargets => L<Paws::IoT::AlertTargets>]

=item [SecurityProfileDescription => Str]

=item [Tags => ArrayRef[L<Paws::IoT::Tag>]]


=back

Each argument is described in detail in: L<Paws::IoT::CreateSecurityProfile>

Returns: a L<Paws::IoT::CreateSecurityProfileResponse> instance

Creates a Device Defender security profile.


=head2 CreateStream

=over

=item Files => ArrayRef[L<Paws::IoT::StreamFile>]

=item RoleArn => Str

=item StreamId => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::IoT::CreateStream>

Returns: a L<Paws::IoT::CreateStreamResponse> instance

Creates a stream for delivering one or more large files in chunks over
MQTT. A stream transports data bytes in chunks or blocks packaged as
MQTT messages from a source like S3. You can have one or more files
associated with a stream. The total size of a file associated with the
stream cannot exceed more than 2 MB. The stream will be created with
version 0. If a stream is created with the same streamID as a stream
that existed and was deleted within last 90 days, we will resurrect
that old stream by incrementing the version by 1.


=head2 CreateThing

=over

=item ThingName => Str

=item [AttributePayload => L<Paws::IoT::AttributePayload>]

=item [BillingGroupName => Str]

=item [ThingTypeName => Str]


=back

Each argument is described in detail in: L<Paws::IoT::CreateThing>

Returns: a L<Paws::IoT::CreateThingResponse> instance

Creates a thing record in the registry.

This is a control plane operation. See Authorization
(http://docs.aws.amazon.com/iot/latest/developerguide/authorization.html)
for information about authorizing control plane actions.


=head2 CreateThingGroup

=over

=item ThingGroupName => Str

=item [ParentGroupName => Str]

=item [Tags => ArrayRef[L<Paws::IoT::Tag>]]

=item [ThingGroupProperties => L<Paws::IoT::ThingGroupProperties>]


=back

Each argument is described in detail in: L<Paws::IoT::CreateThingGroup>

Returns: a L<Paws::IoT::CreateThingGroupResponse> instance

Create a thing group.

This is a control plane operation. See Authorization
(http://docs.aws.amazon.com/iot/latest/developerguide/authorization.html)
for information about authorizing control plane actions.


=head2 CreateThingType

=over

=item ThingTypeName => Str

=item [Tags => ArrayRef[L<Paws::IoT::Tag>]]

=item [ThingTypeProperties => L<Paws::IoT::ThingTypeProperties>]


=back

Each argument is described in detail in: L<Paws::IoT::CreateThingType>

Returns: a L<Paws::IoT::CreateThingTypeResponse> instance

Creates a new thing type.


=head2 CreateTopicRule

=over

=item RuleName => Str

=item TopicRulePayload => L<Paws::IoT::TopicRulePayload>

=item [Tags => Str]


=back

Each argument is described in detail in: L<Paws::IoT::CreateTopicRule>

Returns: nothing

Creates a rule. Creating rules is an administrator-level action. Any
user who has permission to create rules will be able to access data
processed by the rule.


=head2 DeleteAccountAuditConfiguration

=over

=item [DeleteScheduledAudits => Bool]


=back

Each argument is described in detail in: L<Paws::IoT::DeleteAccountAuditConfiguration>

Returns: a L<Paws::IoT::DeleteAccountAuditConfigurationResponse> instance

Restores the default settings for Device Defender audits for this
account. Any configuration data you entered is deleted and all audit
checks are reset to disabled.


=head2 DeleteAuthorizer

=over

=item AuthorizerName => Str


=back

Each argument is described in detail in: L<Paws::IoT::DeleteAuthorizer>

Returns: a L<Paws::IoT::DeleteAuthorizerResponse> instance

Deletes an authorizer.


=head2 DeleteBillingGroup

=over

=item BillingGroupName => Str

=item [ExpectedVersion => Int]


=back

Each argument is described in detail in: L<Paws::IoT::DeleteBillingGroup>

Returns: a L<Paws::IoT::DeleteBillingGroupResponse> instance

Deletes the billing group.


=head2 DeleteCACertificate

=over

=item CertificateId => Str


=back

Each argument is described in detail in: L<Paws::IoT::DeleteCACertificate>

Returns: a L<Paws::IoT::DeleteCACertificateResponse> instance

Deletes a registered CA certificate.


=head2 DeleteCertificate

=over

=item CertificateId => Str

=item [ForceDelete => Bool]


=back

Each argument is described in detail in: L<Paws::IoT::DeleteCertificate>

Returns: nothing

Deletes the specified certificate.

A certificate cannot be deleted if it has a policy attached to it or if
its status is set to ACTIVE. To delete a certificate, first use the
DetachPrincipalPolicy API to detach all policies. Next, use the
UpdateCertificate API to set the certificate to the INACTIVE status.


=head2 DeleteDynamicThingGroup

=over

=item ThingGroupName => Str

=item [ExpectedVersion => Int]


=back

Each argument is described in detail in: L<Paws::IoT::DeleteDynamicThingGroup>

Returns: a L<Paws::IoT::DeleteDynamicThingGroupResponse> instance

Deletes a dynamic thing group.


=head2 DeleteJob

=over

=item JobId => Str

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::IoT::DeleteJob>

Returns: nothing

Deletes a job and its related job executions.

Deleting a job may take time, depending on the number of job executions
created for the job and various other factors. While the job is being
deleted, the status of the job will be shown as "DELETION_IN_PROGRESS".
Attempting to delete or cancel a job whose status is already
"DELETION_IN_PROGRESS" will result in an error.

Only 10 jobs may have status "DELETION_IN_PROGRESS" at the same time,
or a LimitExceededException will occur.


=head2 DeleteJobExecution

=over

=item ExecutionNumber => Int

=item JobId => Str

=item ThingName => Str

=item [Force => Bool]


=back

Each argument is described in detail in: L<Paws::IoT::DeleteJobExecution>

Returns: nothing

Deletes a job execution.


=head2 DeleteOTAUpdate

=over

=item OtaUpdateId => Str

=item [DeleteStream => Bool]

=item [ForceDeleteAWSJob => Bool]


=back

Each argument is described in detail in: L<Paws::IoT::DeleteOTAUpdate>

Returns: a L<Paws::IoT::DeleteOTAUpdateResponse> instance

Delete an OTA update.


=head2 DeletePolicy

=over

=item PolicyName => Str


=back

Each argument is described in detail in: L<Paws::IoT::DeletePolicy>

Returns: nothing

Deletes the specified policy.

A policy cannot be deleted if it has non-default versions or it is
attached to any certificate.

To delete a policy, use the DeletePolicyVersion API to delete all
non-default versions of the policy; use the DetachPrincipalPolicy API
to detach the policy from any certificate; and then use the
DeletePolicy API to delete the policy.

When a policy is deleted using DeletePolicy, its default version is
deleted with it.


=head2 DeletePolicyVersion

=over

=item PolicyName => Str

=item PolicyVersionId => Str


=back

Each argument is described in detail in: L<Paws::IoT::DeletePolicyVersion>

Returns: nothing

Deletes the specified version of the specified policy. You cannot
delete the default version of a policy using this API. To delete the
default version of a policy, use DeletePolicy. To find out which
version of a policy is marked as the default version, use
ListPolicyVersions.


=head2 DeleteRegistrationCode






Each argument is described in detail in: L<Paws::IoT::DeleteRegistrationCode>

Returns: a L<Paws::IoT::DeleteRegistrationCodeResponse> instance

Deletes a CA certificate registration code.


=head2 DeleteRoleAlias

=over

=item RoleAlias => Str


=back

Each argument is described in detail in: L<Paws::IoT::DeleteRoleAlias>

Returns: a L<Paws::IoT::DeleteRoleAliasResponse> instance

Deletes a role alias


=head2 DeleteScheduledAudit

=over

=item ScheduledAuditName => Str


=back

Each argument is described in detail in: L<Paws::IoT::DeleteScheduledAudit>

Returns: a L<Paws::IoT::DeleteScheduledAuditResponse> instance

Deletes a scheduled audit.


=head2 DeleteSecurityProfile

=over

=item SecurityProfileName => Str

=item [ExpectedVersion => Int]


=back

Each argument is described in detail in: L<Paws::IoT::DeleteSecurityProfile>

Returns: a L<Paws::IoT::DeleteSecurityProfileResponse> instance

Deletes a Device Defender security profile.


=head2 DeleteStream

=over

=item StreamId => Str


=back

Each argument is described in detail in: L<Paws::IoT::DeleteStream>

Returns: a L<Paws::IoT::DeleteStreamResponse> instance

Deletes a stream.


=head2 DeleteThing

=over

=item ThingName => Str

=item [ExpectedVersion => Int]


=back

Each argument is described in detail in: L<Paws::IoT::DeleteThing>

Returns: a L<Paws::IoT::DeleteThingResponse> instance

Deletes the specified thing. Returns successfully with no error if the
deletion is successful or you specify a thing that doesn't exist.


=head2 DeleteThingGroup

=over

=item ThingGroupName => Str

=item [ExpectedVersion => Int]


=back

Each argument is described in detail in: L<Paws::IoT::DeleteThingGroup>

Returns: a L<Paws::IoT::DeleteThingGroupResponse> instance

Deletes a thing group.


=head2 DeleteThingType

=over

=item ThingTypeName => Str


=back

Each argument is described in detail in: L<Paws::IoT::DeleteThingType>

Returns: a L<Paws::IoT::DeleteThingTypeResponse> instance

Deletes the specified thing type. You cannot delete a thing type if it
has things associated with it. To delete a thing type, first mark it as
deprecated by calling DeprecateThingType, then remove any associated
things by calling UpdateThing to change the thing type on any
associated thing, and finally use DeleteThingType to delete the thing
type.


=head2 DeleteTopicRule

=over

=item RuleName => Str


=back

Each argument is described in detail in: L<Paws::IoT::DeleteTopicRule>

Returns: nothing

Deletes the rule.


=head2 DeleteV2LoggingLevel

=over

=item TargetName => Str

=item TargetType => Str


=back

Each argument is described in detail in: L<Paws::IoT::DeleteV2LoggingLevel>

Returns: nothing

Deletes a logging level.


=head2 DeprecateThingType

=over

=item ThingTypeName => Str

=item [UndoDeprecate => Bool]


=back

Each argument is described in detail in: L<Paws::IoT::DeprecateThingType>

Returns: a L<Paws::IoT::DeprecateThingTypeResponse> instance

Deprecates a thing type. You can not associate new things with
deprecated thing type.


=head2 DescribeAccountAuditConfiguration






Each argument is described in detail in: L<Paws::IoT::DescribeAccountAuditConfiguration>

Returns: a L<Paws::IoT::DescribeAccountAuditConfigurationResponse> instance

Gets information about the Device Defender audit settings for this
account. Settings include how audit notifications are sent and which
audit checks are enabled or disabled.


=head2 DescribeAuditTask

=over

=item TaskId => Str


=back

Each argument is described in detail in: L<Paws::IoT::DescribeAuditTask>

Returns: a L<Paws::IoT::DescribeAuditTaskResponse> instance

Gets information about a Device Defender audit.


=head2 DescribeAuthorizer

=over

=item AuthorizerName => Str


=back

Each argument is described in detail in: L<Paws::IoT::DescribeAuthorizer>

Returns: a L<Paws::IoT::DescribeAuthorizerResponse> instance

Describes an authorizer.


=head2 DescribeBillingGroup

=over

=item BillingGroupName => Str


=back

Each argument is described in detail in: L<Paws::IoT::DescribeBillingGroup>

Returns: a L<Paws::IoT::DescribeBillingGroupResponse> instance

Returns information about a billing group.


=head2 DescribeCACertificate

=over

=item CertificateId => Str


=back

Each argument is described in detail in: L<Paws::IoT::DescribeCACertificate>

Returns: a L<Paws::IoT::DescribeCACertificateResponse> instance

Describes a registered CA certificate.


=head2 DescribeCertificate

=over

=item CertificateId => Str


=back

Each argument is described in detail in: L<Paws::IoT::DescribeCertificate>

Returns: a L<Paws::IoT::DescribeCertificateResponse> instance

Gets information about the specified certificate.


=head2 DescribeDefaultAuthorizer






Each argument is described in detail in: L<Paws::IoT::DescribeDefaultAuthorizer>

Returns: a L<Paws::IoT::DescribeDefaultAuthorizerResponse> instance

Describes the default authorizer.


=head2 DescribeEndpoint

=over

=item [EndpointType => Str]


=back

Each argument is described in detail in: L<Paws::IoT::DescribeEndpoint>

Returns: a L<Paws::IoT::DescribeEndpointResponse> instance

Returns a unique endpoint specific to the AWS account making the call.


=head2 DescribeEventConfigurations






Each argument is described in detail in: L<Paws::IoT::DescribeEventConfigurations>

Returns: a L<Paws::IoT::DescribeEventConfigurationsResponse> instance

Describes event configurations.


=head2 DescribeIndex

=over

=item IndexName => Str


=back

Each argument is described in detail in: L<Paws::IoT::DescribeIndex>

Returns: a L<Paws::IoT::DescribeIndexResponse> instance

Describes a search index.


=head2 DescribeJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::IoT::DescribeJob>

Returns: a L<Paws::IoT::DescribeJobResponse> instance

Describes a job.


=head2 DescribeJobExecution

=over

=item JobId => Str

=item ThingName => Str

=item [ExecutionNumber => Int]


=back

Each argument is described in detail in: L<Paws::IoT::DescribeJobExecution>

Returns: a L<Paws::IoT::DescribeJobExecutionResponse> instance

Describes a job execution.


=head2 DescribeRoleAlias

=over

=item RoleAlias => Str


=back

Each argument is described in detail in: L<Paws::IoT::DescribeRoleAlias>

Returns: a L<Paws::IoT::DescribeRoleAliasResponse> instance

Describes a role alias.


=head2 DescribeScheduledAudit

=over

=item ScheduledAuditName => Str


=back

Each argument is described in detail in: L<Paws::IoT::DescribeScheduledAudit>

Returns: a L<Paws::IoT::DescribeScheduledAuditResponse> instance

Gets information about a scheduled audit.


=head2 DescribeSecurityProfile

=over

=item SecurityProfileName => Str


=back

Each argument is described in detail in: L<Paws::IoT::DescribeSecurityProfile>

Returns: a L<Paws::IoT::DescribeSecurityProfileResponse> instance

Gets information about a Device Defender security profile.


=head2 DescribeStream

=over

=item StreamId => Str


=back

Each argument is described in detail in: L<Paws::IoT::DescribeStream>

Returns: a L<Paws::IoT::DescribeStreamResponse> instance

Gets information about a stream.


=head2 DescribeThing

=over

=item ThingName => Str


=back

Each argument is described in detail in: L<Paws::IoT::DescribeThing>

Returns: a L<Paws::IoT::DescribeThingResponse> instance

Gets information about the specified thing.


=head2 DescribeThingGroup

=over

=item ThingGroupName => Str


=back

Each argument is described in detail in: L<Paws::IoT::DescribeThingGroup>

Returns: a L<Paws::IoT::DescribeThingGroupResponse> instance

Describe a thing group.


=head2 DescribeThingRegistrationTask

=over

=item TaskId => Str


=back

Each argument is described in detail in: L<Paws::IoT::DescribeThingRegistrationTask>

Returns: a L<Paws::IoT::DescribeThingRegistrationTaskResponse> instance

Describes a bulk thing provisioning task.


=head2 DescribeThingType

=over

=item ThingTypeName => Str


=back

Each argument is described in detail in: L<Paws::IoT::DescribeThingType>

Returns: a L<Paws::IoT::DescribeThingTypeResponse> instance

Gets information about the specified thing type.


=head2 DetachPolicy

=over

=item PolicyName => Str

=item Target => Str


=back

Each argument is described in detail in: L<Paws::IoT::DetachPolicy>

Returns: nothing

Detaches a policy from the specified target.


=head2 DetachPrincipalPolicy

=over

=item PolicyName => Str

=item Principal => Str


=back

Each argument is described in detail in: L<Paws::IoT::DetachPrincipalPolicy>

Returns: nothing

Removes the specified policy from the specified certificate.

B<Note:> This API is deprecated. Please use DetachPolicy instead.


=head2 DetachSecurityProfile

=over

=item SecurityProfileName => Str

=item SecurityProfileTargetArn => Str


=back

Each argument is described in detail in: L<Paws::IoT::DetachSecurityProfile>

Returns: a L<Paws::IoT::DetachSecurityProfileResponse> instance

Disassociates a Device Defender security profile from a thing group or
from this account.


=head2 DetachThingPrincipal

=over

=item Principal => Str

=item ThingName => Str


=back

Each argument is described in detail in: L<Paws::IoT::DetachThingPrincipal>

Returns: a L<Paws::IoT::DetachThingPrincipalResponse> instance

Detaches the specified principal from the specified thing.

This call is asynchronous. It might take several seconds for the
detachment to propagate.


=head2 DisableTopicRule

=over

=item RuleName => Str


=back

Each argument is described in detail in: L<Paws::IoT::DisableTopicRule>

Returns: nothing

Disables the rule.


=head2 EnableTopicRule

=over

=item RuleName => Str


=back

Each argument is described in detail in: L<Paws::IoT::EnableTopicRule>

Returns: nothing

Enables the rule.


=head2 GetEffectivePolicies

=over

=item [CognitoIdentityPoolId => Str]

=item [Principal => Str]

=item [ThingName => Str]


=back

Each argument is described in detail in: L<Paws::IoT::GetEffectivePolicies>

Returns: a L<Paws::IoT::GetEffectivePoliciesResponse> instance

Gets a list of the policies that have an effect on the authorization
behavior of the specified device when it connects to the AWS IoT device
gateway.


=head2 GetIndexingConfiguration






Each argument is described in detail in: L<Paws::IoT::GetIndexingConfiguration>

Returns: a L<Paws::IoT::GetIndexingConfigurationResponse> instance

Gets the search configuration.


=head2 GetJobDocument

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::IoT::GetJobDocument>

Returns: a L<Paws::IoT::GetJobDocumentResponse> instance

Gets a job document.


=head2 GetLoggingOptions






Each argument is described in detail in: L<Paws::IoT::GetLoggingOptions>

Returns: a L<Paws::IoT::GetLoggingOptionsResponse> instance

Gets the logging options.

NOTE: use of this command is not recommended. Use
C<GetV2LoggingOptions> instead.


=head2 GetOTAUpdate

=over

=item OtaUpdateId => Str


=back

Each argument is described in detail in: L<Paws::IoT::GetOTAUpdate>

Returns: a L<Paws::IoT::GetOTAUpdateResponse> instance

Gets an OTA update.


=head2 GetPolicy

=over

=item PolicyName => Str


=back

Each argument is described in detail in: L<Paws::IoT::GetPolicy>

Returns: a L<Paws::IoT::GetPolicyResponse> instance

Gets information about the specified policy with the policy document of
the default version.


=head2 GetPolicyVersion

=over

=item PolicyName => Str

=item PolicyVersionId => Str


=back

Each argument is described in detail in: L<Paws::IoT::GetPolicyVersion>

Returns: a L<Paws::IoT::GetPolicyVersionResponse> instance

Gets information about the specified policy version.


=head2 GetRegistrationCode






Each argument is described in detail in: L<Paws::IoT::GetRegistrationCode>

Returns: a L<Paws::IoT::GetRegistrationCodeResponse> instance

Gets a registration code used to register a CA certificate with AWS
IoT.


=head2 GetTopicRule

=over

=item RuleName => Str


=back

Each argument is described in detail in: L<Paws::IoT::GetTopicRule>

Returns: a L<Paws::IoT::GetTopicRuleResponse> instance

Gets information about the rule.


=head2 GetV2LoggingOptions






Each argument is described in detail in: L<Paws::IoT::GetV2LoggingOptions>

Returns: a L<Paws::IoT::GetV2LoggingOptionsResponse> instance

Gets the fine grained logging options.


=head2 ListActiveViolations

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SecurityProfileName => Str]

=item [ThingName => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListActiveViolations>

Returns: a L<Paws::IoT::ListActiveViolationsResponse> instance

Lists the active violations for a given Device Defender security
profile.


=head2 ListAttachedPolicies

=over

=item Target => Str

=item [Marker => Str]

=item [PageSize => Int]

=item [Recursive => Bool]


=back

Each argument is described in detail in: L<Paws::IoT::ListAttachedPolicies>

Returns: a L<Paws::IoT::ListAttachedPoliciesResponse> instance

Lists the policies attached to the specified thing group.


=head2 ListAuditFindings

=over

=item [CheckName => Str]

=item [EndTime => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceIdentifier => L<Paws::IoT::ResourceIdentifier>]

=item [StartTime => Str]

=item [TaskId => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListAuditFindings>

Returns: a L<Paws::IoT::ListAuditFindingsResponse> instance

Lists the findings (results) of a Device Defender audit or of the
audits performed during a specified time period. (Findings are retained
for 180 days.)


=head2 ListAuditTasks

=over

=item EndTime => Str

=item StartTime => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TaskStatus => Str]

=item [TaskType => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListAuditTasks>

Returns: a L<Paws::IoT::ListAuditTasksResponse> instance

Lists the Device Defender audits that have been performed during a
given time period.


=head2 ListAuthorizers

=over

=item [AscendingOrder => Bool]

=item [Marker => Str]

=item [PageSize => Int]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListAuthorizers>

Returns: a L<Paws::IoT::ListAuthorizersResponse> instance

Lists the authorizers registered in your account.


=head2 ListBillingGroups

=over

=item [MaxResults => Int]

=item [NamePrefixFilter => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListBillingGroups>

Returns: a L<Paws::IoT::ListBillingGroupsResponse> instance

Lists the billing groups you have created.


=head2 ListCACertificates

=over

=item [AscendingOrder => Bool]

=item [Marker => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::IoT::ListCACertificates>

Returns: a L<Paws::IoT::ListCACertificatesResponse> instance

Lists the CA certificates registered for your AWS account.

The results are paginated with a default page size of 25. You can use
the returned marker to retrieve additional results.


=head2 ListCertificates

=over

=item [AscendingOrder => Bool]

=item [Marker => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::IoT::ListCertificates>

Returns: a L<Paws::IoT::ListCertificatesResponse> instance

Lists the certificates registered in your AWS account.

The results are paginated with a default page size of 25. You can use
the returned marker to retrieve additional results.


=head2 ListCertificatesByCA

=over

=item CaCertificateId => Str

=item [AscendingOrder => Bool]

=item [Marker => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::IoT::ListCertificatesByCA>

Returns: a L<Paws::IoT::ListCertificatesByCAResponse> instance

List the device certificates signed by the specified CA certificate.


=head2 ListIndices

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListIndices>

Returns: a L<Paws::IoT::ListIndicesResponse> instance

Lists the search indices.


=head2 ListJobExecutionsForJob

=over

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListJobExecutionsForJob>

Returns: a L<Paws::IoT::ListJobExecutionsForJobResponse> instance

Lists the job executions for a job.


=head2 ListJobExecutionsForThing

=over

=item ThingName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListJobExecutionsForThing>

Returns: a L<Paws::IoT::ListJobExecutionsForThingResponse> instance

Lists the job executions for the specified thing.


=head2 ListJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]

=item [TargetSelection => Str]

=item [ThingGroupId => Str]

=item [ThingGroupName => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListJobs>

Returns: a L<Paws::IoT::ListJobsResponse> instance

Lists jobs.


=head2 ListOTAUpdates

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OtaUpdateStatus => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListOTAUpdates>

Returns: a L<Paws::IoT::ListOTAUpdatesResponse> instance

Lists OTA updates.


=head2 ListOutgoingCertificates

=over

=item [AscendingOrder => Bool]

=item [Marker => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::IoT::ListOutgoingCertificates>

Returns: a L<Paws::IoT::ListOutgoingCertificatesResponse> instance

Lists certificates that are being transferred but not yet accepted.


=head2 ListPolicies

=over

=item [AscendingOrder => Bool]

=item [Marker => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::IoT::ListPolicies>

Returns: a L<Paws::IoT::ListPoliciesResponse> instance

Lists your policies.


=head2 ListPolicyPrincipals

=over

=item PolicyName => Str

=item [AscendingOrder => Bool]

=item [Marker => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::IoT::ListPolicyPrincipals>

Returns: a L<Paws::IoT::ListPolicyPrincipalsResponse> instance

Lists the principals associated with the specified policy.

B<Note:> This API is deprecated. Please use ListTargetsForPolicy
instead.


=head2 ListPolicyVersions

=over

=item PolicyName => Str


=back

Each argument is described in detail in: L<Paws::IoT::ListPolicyVersions>

Returns: a L<Paws::IoT::ListPolicyVersionsResponse> instance

Lists the versions of the specified policy and identifies the default
version.


=head2 ListPrincipalPolicies

=over

=item Principal => Str

=item [AscendingOrder => Bool]

=item [Marker => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::IoT::ListPrincipalPolicies>

Returns: a L<Paws::IoT::ListPrincipalPoliciesResponse> instance

Lists the policies attached to the specified principal. If you use an
Cognito identity, the ID must be in AmazonCognito Identity format
(http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax).

B<Note:> This API is deprecated. Please use ListAttachedPolicies
instead.


=head2 ListPrincipalThings

=over

=item Principal => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListPrincipalThings>

Returns: a L<Paws::IoT::ListPrincipalThingsResponse> instance

Lists the things associated with the specified principal.


=head2 ListRoleAliases

=over

=item [AscendingOrder => Bool]

=item [Marker => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::IoT::ListRoleAliases>

Returns: a L<Paws::IoT::ListRoleAliasesResponse> instance

Lists the role aliases registered in your account.


=head2 ListScheduledAudits

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListScheduledAudits>

Returns: a L<Paws::IoT::ListScheduledAuditsResponse> instance

Lists all of your scheduled audits.


=head2 ListSecurityProfiles

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListSecurityProfiles>

Returns: a L<Paws::IoT::ListSecurityProfilesResponse> instance

Lists the Device Defender security profiles you have created. You can
use filters to list only those security profiles associated with a
thing group or only those associated with your account.


=head2 ListSecurityProfilesForTarget

=over

=item SecurityProfileTargetArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Recursive => Bool]


=back

Each argument is described in detail in: L<Paws::IoT::ListSecurityProfilesForTarget>

Returns: a L<Paws::IoT::ListSecurityProfilesForTargetResponse> instance

Lists the Device Defender security profiles attached to a target (thing
group).


=head2 ListStreams

=over

=item [AscendingOrder => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListStreams>

Returns: a L<Paws::IoT::ListStreamsResponse> instance

Lists all of the streams in your AWS account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListTagsForResource>

Returns: a L<Paws::IoT::ListTagsForResourceResponse> instance

Lists the tags (metadata) you have assigned to the resource.


=head2 ListTargetsForPolicy

=over

=item PolicyName => Str

=item [Marker => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::IoT::ListTargetsForPolicy>

Returns: a L<Paws::IoT::ListTargetsForPolicyResponse> instance

List targets for the specified policy.


=head2 ListTargetsForSecurityProfile

=over

=item SecurityProfileName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListTargetsForSecurityProfile>

Returns: a L<Paws::IoT::ListTargetsForSecurityProfileResponse> instance

Lists the targets (thing groups) associated with a given Device
Defender security profile.


=head2 ListThingGroups

=over

=item [MaxResults => Int]

=item [NamePrefixFilter => Str]

=item [NextToken => Str]

=item [ParentGroup => Str]

=item [Recursive => Bool]


=back

Each argument is described in detail in: L<Paws::IoT::ListThingGroups>

Returns: a L<Paws::IoT::ListThingGroupsResponse> instance

List the thing groups in your account.


=head2 ListThingGroupsForThing

=over

=item ThingName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListThingGroupsForThing>

Returns: a L<Paws::IoT::ListThingGroupsForThingResponse> instance

List the thing groups to which the specified thing belongs.


=head2 ListThingPrincipals

=over

=item ThingName => Str


=back

Each argument is described in detail in: L<Paws::IoT::ListThingPrincipals>

Returns: a L<Paws::IoT::ListThingPrincipalsResponse> instance

Lists the principals associated with the specified thing.


=head2 ListThingRegistrationTaskReports

=over

=item ReportType => Str

=item TaskId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListThingRegistrationTaskReports>

Returns: a L<Paws::IoT::ListThingRegistrationTaskReportsResponse> instance

Information about the thing registration tasks.


=head2 ListThingRegistrationTasks

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListThingRegistrationTasks>

Returns: a L<Paws::IoT::ListThingRegistrationTasksResponse> instance

List bulk thing provisioning tasks.


=head2 ListThings

=over

=item [AttributeName => Str]

=item [AttributeValue => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ThingTypeName => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListThings>

Returns: a L<Paws::IoT::ListThingsResponse> instance

Lists your things. Use the B<attributeName> and B<attributeValue>
parameters to filter your things. For example, calling C<ListThings>
with attributeName=Color and attributeValue=Red retrieves all things in
the registry that contain an attribute B<Color> with the value B<Red>.


=head2 ListThingsInBillingGroup

=over

=item BillingGroupName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListThingsInBillingGroup>

Returns: a L<Paws::IoT::ListThingsInBillingGroupResponse> instance

Lists the things you have added to the given billing group.


=head2 ListThingsInThingGroup

=over

=item ThingGroupName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Recursive => Bool]


=back

Each argument is described in detail in: L<Paws::IoT::ListThingsInThingGroup>

Returns: a L<Paws::IoT::ListThingsInThingGroupResponse> instance

Lists the things in the specified group.


=head2 ListThingTypes

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ThingTypeName => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListThingTypes>

Returns: a L<Paws::IoT::ListThingTypesResponse> instance

Lists the existing thing types.


=head2 ListTopicRules

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RuleDisabled => Bool]

=item [Topic => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListTopicRules>

Returns: a L<Paws::IoT::ListTopicRulesResponse> instance

Lists the rules for the specific topic.


=head2 ListV2LoggingLevels

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TargetType => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListV2LoggingLevels>

Returns: a L<Paws::IoT::ListV2LoggingLevelsResponse> instance

Lists logging levels.


=head2 ListViolationEvents

=over

=item EndTime => Str

=item StartTime => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SecurityProfileName => Str]

=item [ThingName => Str]


=back

Each argument is described in detail in: L<Paws::IoT::ListViolationEvents>

Returns: a L<Paws::IoT::ListViolationEventsResponse> instance

Lists the Device Defender security profile violations discovered during
the given time period. You can use filters to limit the results to
those alerts issued for a particular security profile, behavior or
thing (device).


=head2 RegisterCACertificate

=over

=item CaCertificate => Str

=item VerificationCertificate => Str

=item [AllowAutoRegistration => Bool]

=item [RegistrationConfig => L<Paws::IoT::RegistrationConfig>]

=item [SetAsActive => Bool]


=back

Each argument is described in detail in: L<Paws::IoT::RegisterCACertificate>

Returns: a L<Paws::IoT::RegisterCACertificateResponse> instance

Registers a CA certificate with AWS IoT. This CA certificate can then
be used to sign device certificates, which can be then registered with
AWS IoT. You can register up to 10 CA certificates per AWS account that
have the same subject field. This enables you to have up to 10
certificate authorities sign your device certificates. If you have more
than one CA certificate registered, make sure you pass the CA
certificate when you register your device certificates with the
RegisterCertificate API.


=head2 RegisterCertificate

=over

=item CertificatePem => Str

=item [CaCertificatePem => Str]

=item [SetAsActive => Bool]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::IoT::RegisterCertificate>

Returns: a L<Paws::IoT::RegisterCertificateResponse> instance

Registers a device certificate with AWS IoT. If you have more than one
CA certificate that has the same subject field, you must specify the CA
certificate that was used to sign the device certificate being
registered.


=head2 RegisterThing

=over

=item TemplateBody => Str

=item [Parameters => L<Paws::IoT::Parameters>]


=back

Each argument is described in detail in: L<Paws::IoT::RegisterThing>

Returns: a L<Paws::IoT::RegisterThingResponse> instance

Provisions a thing.


=head2 RejectCertificateTransfer

=over

=item CertificateId => Str

=item [RejectReason => Str]


=back

Each argument is described in detail in: L<Paws::IoT::RejectCertificateTransfer>

Returns: nothing

Rejects a pending certificate transfer. After AWS IoT rejects a
certificate transfer, the certificate status changes from
B<PENDING_TRANSFER> to B<INACTIVE>.

To check for pending certificate transfers, call ListCertificates to
enumerate your certificates.

This operation can only be called by the transfer destination. After it
is called, the certificate will be returned to the source's account in
the INACTIVE state.


=head2 RemoveThingFromBillingGroup

=over

=item [BillingGroupArn => Str]

=item [BillingGroupName => Str]

=item [ThingArn => Str]

=item [ThingName => Str]


=back

Each argument is described in detail in: L<Paws::IoT::RemoveThingFromBillingGroup>

Returns: a L<Paws::IoT::RemoveThingFromBillingGroupResponse> instance

Removes the given thing from the billing group.


=head2 RemoveThingFromThingGroup

=over

=item [ThingArn => Str]

=item [ThingGroupArn => Str]

=item [ThingGroupName => Str]

=item [ThingName => Str]


=back

Each argument is described in detail in: L<Paws::IoT::RemoveThingFromThingGroup>

Returns: a L<Paws::IoT::RemoveThingFromThingGroupResponse> instance

Remove the specified thing from the specified group.


=head2 ReplaceTopicRule

=over

=item RuleName => Str

=item TopicRulePayload => L<Paws::IoT::TopicRulePayload>


=back

Each argument is described in detail in: L<Paws::IoT::ReplaceTopicRule>

Returns: nothing

Replaces the rule. You must specify all parameters for the new rule.
Creating rules is an administrator-level action. Any user who has
permission to create rules will be able to access data processed by the
rule.


=head2 SearchIndex

=over

=item QueryString => Str

=item [IndexName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [QueryVersion => Str]


=back

Each argument is described in detail in: L<Paws::IoT::SearchIndex>

Returns: a L<Paws::IoT::SearchIndexResponse> instance

The query search index.


=head2 SetDefaultAuthorizer

=over

=item AuthorizerName => Str


=back

Each argument is described in detail in: L<Paws::IoT::SetDefaultAuthorizer>

Returns: a L<Paws::IoT::SetDefaultAuthorizerResponse> instance

Sets the default authorizer. This will be used if a websocket
connection is made without specifying an authorizer.


=head2 SetDefaultPolicyVersion

=over

=item PolicyName => Str

=item PolicyVersionId => Str


=back

Each argument is described in detail in: L<Paws::IoT::SetDefaultPolicyVersion>

Returns: nothing

Sets the specified version of the specified policy as the policy's
default (operative) version. This action affects all certificates to
which the policy is attached. To list the principals the policy is
attached to, use the ListPrincipalPolicy API.


=head2 SetLoggingOptions

=over

=item LoggingOptionsPayload => L<Paws::IoT::LoggingOptionsPayload>


=back

Each argument is described in detail in: L<Paws::IoT::SetLoggingOptions>

Returns: nothing

Sets the logging options.

NOTE: use of this command is not recommended. Use
C<SetV2LoggingOptions> instead.


=head2 SetV2LoggingLevel

=over

=item LogLevel => Str

=item LogTarget => L<Paws::IoT::LogTarget>


=back

Each argument is described in detail in: L<Paws::IoT::SetV2LoggingLevel>

Returns: nothing

Sets the logging level.


=head2 SetV2LoggingOptions

=over

=item [DefaultLogLevel => Str]

=item [DisableAllLogs => Bool]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::IoT::SetV2LoggingOptions>

Returns: nothing

Sets the logging options for the V2 logging service.


=head2 StartOnDemandAuditTask

=over

=item TargetCheckNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::IoT::StartOnDemandAuditTask>

Returns: a L<Paws::IoT::StartOnDemandAuditTaskResponse> instance

Starts an on-demand Device Defender audit.


=head2 StartThingRegistrationTask

=over

=item InputFileBucket => Str

=item InputFileKey => Str

=item RoleArn => Str

=item TemplateBody => Str


=back

Each argument is described in detail in: L<Paws::IoT::StartThingRegistrationTask>

Returns: a L<Paws::IoT::StartThingRegistrationTaskResponse> instance

Creates a bulk thing provisioning task.


=head2 StopThingRegistrationTask

=over

=item TaskId => Str


=back

Each argument is described in detail in: L<Paws::IoT::StopThingRegistrationTask>

Returns: a L<Paws::IoT::StopThingRegistrationTaskResponse> instance

Cancels a bulk thing provisioning task.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::IoT::Tag>]


=back

Each argument is described in detail in: L<Paws::IoT::TagResource>

Returns: a L<Paws::IoT::TagResourceResponse> instance

Adds to or modifies the tags of the given resource. Tags are metadata
which can be used to manage a resource.


=head2 TestAuthorization

=over

=item AuthInfos => ArrayRef[L<Paws::IoT::AuthInfo>]

=item [ClientId => Str]

=item [CognitoIdentityPoolId => Str]

=item [PolicyNamesToAdd => ArrayRef[Str|Undef]]

=item [PolicyNamesToSkip => ArrayRef[Str|Undef]]

=item [Principal => Str]


=back

Each argument is described in detail in: L<Paws::IoT::TestAuthorization>

Returns: a L<Paws::IoT::TestAuthorizationResponse> instance

Tests if a specified principal is authorized to perform an AWS IoT
action on a specified resource. Use this to test and debug the
authorization behavior of devices that connect to the AWS IoT device
gateway.


=head2 TestInvokeAuthorizer

=over

=item AuthorizerName => Str

=item Token => Str

=item TokenSignature => Str


=back

Each argument is described in detail in: L<Paws::IoT::TestInvokeAuthorizer>

Returns: a L<Paws::IoT::TestInvokeAuthorizerResponse> instance

Tests a custom authorization behavior by invoking a specified custom
authorizer. Use this to test and debug the custom authorization
behavior of devices that connect to the AWS IoT device gateway.


=head2 TransferCertificate

=over

=item CertificateId => Str

=item TargetAwsAccount => Str

=item [TransferMessage => Str]


=back

Each argument is described in detail in: L<Paws::IoT::TransferCertificate>

Returns: a L<Paws::IoT::TransferCertificateResponse> instance

Transfers the specified certificate to the specified AWS account.

You can cancel the transfer until it is acknowledged by the recipient.

No notification is sent to the transfer destination's account. It is up
to the caller to notify the transfer target.

The certificate being transferred must not be in the ACTIVE state. You
can use the UpdateCertificate API to deactivate it.

The certificate must not have any policies attached to it. You can use
the DetachPrincipalPolicy API to detach them.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::IoT::UntagResource>

Returns: a L<Paws::IoT::UntagResourceResponse> instance

Removes the given tags (metadata) from the resource.


=head2 UpdateAccountAuditConfiguration

=over

=item [AuditCheckConfigurations => L<Paws::IoT::AuditCheckConfigurations>]

=item [AuditNotificationTargetConfigurations => L<Paws::IoT::AuditNotificationTargetConfigurations>]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::IoT::UpdateAccountAuditConfiguration>

Returns: a L<Paws::IoT::UpdateAccountAuditConfigurationResponse> instance

Configures or reconfigures the Device Defender audit settings for this
account. Settings include how audit notifications are sent and which
audit checks are enabled or disabled.


=head2 UpdateAuthorizer

=over

=item AuthorizerName => Str

=item [AuthorizerFunctionArn => Str]

=item [Status => Str]

=item [TokenKeyName => Str]

=item [TokenSigningPublicKeys => L<Paws::IoT::PublicKeyMap>]


=back

Each argument is described in detail in: L<Paws::IoT::UpdateAuthorizer>

Returns: a L<Paws::IoT::UpdateAuthorizerResponse> instance

Updates an authorizer.


=head2 UpdateBillingGroup

=over

=item BillingGroupName => Str

=item BillingGroupProperties => L<Paws::IoT::BillingGroupProperties>

=item [ExpectedVersion => Int]


=back

Each argument is described in detail in: L<Paws::IoT::UpdateBillingGroup>

Returns: a L<Paws::IoT::UpdateBillingGroupResponse> instance

Updates information about the billing group.


=head2 UpdateCACertificate

=over

=item CertificateId => Str

=item [NewAutoRegistrationStatus => Str]

=item [NewStatus => Str]

=item [RegistrationConfig => L<Paws::IoT::RegistrationConfig>]

=item [RemoveAutoRegistration => Bool]


=back

Each argument is described in detail in: L<Paws::IoT::UpdateCACertificate>

Returns: nothing

Updates a registered CA certificate.


=head2 UpdateCertificate

=over

=item CertificateId => Str

=item NewStatus => Str


=back

Each argument is described in detail in: L<Paws::IoT::UpdateCertificate>

Returns: nothing

Updates the status of the specified certificate. This operation is
idempotent.

Moving a certificate from the ACTIVE state (including REVOKED) will not
disconnect currently connected devices, but these devices will be
unable to reconnect.

The ACTIVE state is required to authenticate devices connecting to AWS
IoT using a certificate.


=head2 UpdateDynamicThingGroup

=over

=item ThingGroupName => Str

=item ThingGroupProperties => L<Paws::IoT::ThingGroupProperties>

=item [ExpectedVersion => Int]

=item [IndexName => Str]

=item [QueryString => Str]

=item [QueryVersion => Str]


=back

Each argument is described in detail in: L<Paws::IoT::UpdateDynamicThingGroup>

Returns: a L<Paws::IoT::UpdateDynamicThingGroupResponse> instance

Updates a dynamic thing group.


=head2 UpdateEventConfigurations

=over

=item [EventConfigurations => L<Paws::IoT::EventConfigurations>]


=back

Each argument is described in detail in: L<Paws::IoT::UpdateEventConfigurations>

Returns: a L<Paws::IoT::UpdateEventConfigurationsResponse> instance

Updates the event configurations.


=head2 UpdateIndexingConfiguration

=over

=item [ThingGroupIndexingConfiguration => L<Paws::IoT::ThingGroupIndexingConfiguration>]

=item [ThingIndexingConfiguration => L<Paws::IoT::ThingIndexingConfiguration>]


=back

Each argument is described in detail in: L<Paws::IoT::UpdateIndexingConfiguration>

Returns: a L<Paws::IoT::UpdateIndexingConfigurationResponse> instance

Updates the search configuration.


=head2 UpdateJob

=over

=item JobId => Str

=item [AbortConfig => L<Paws::IoT::AbortConfig>]

=item [Description => Str]

=item [JobExecutionsRolloutConfig => L<Paws::IoT::JobExecutionsRolloutConfig>]

=item [PresignedUrlConfig => L<Paws::IoT::PresignedUrlConfig>]

=item [TimeoutConfig => L<Paws::IoT::TimeoutConfig>]


=back

Each argument is described in detail in: L<Paws::IoT::UpdateJob>

Returns: nothing

Updates supported fields of the specified job.


=head2 UpdateRoleAlias

=over

=item RoleAlias => Str

=item [CredentialDurationSeconds => Int]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::IoT::UpdateRoleAlias>

Returns: a L<Paws::IoT::UpdateRoleAliasResponse> instance

Updates a role alias.


=head2 UpdateScheduledAudit

=over

=item ScheduledAuditName => Str

=item [DayOfMonth => Str]

=item [DayOfWeek => Str]

=item [Frequency => Str]

=item [TargetCheckNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::IoT::UpdateScheduledAudit>

Returns: a L<Paws::IoT::UpdateScheduledAuditResponse> instance

Updates a scheduled audit, including what checks are performed and how
often the audit takes place.


=head2 UpdateSecurityProfile

=over

=item SecurityProfileName => Str

=item [AlertTargets => L<Paws::IoT::AlertTargets>]

=item [Behaviors => ArrayRef[L<Paws::IoT::Behavior>]]

=item [ExpectedVersion => Int]

=item [SecurityProfileDescription => Str]


=back

Each argument is described in detail in: L<Paws::IoT::UpdateSecurityProfile>

Returns: a L<Paws::IoT::UpdateSecurityProfileResponse> instance

Updates a Device Defender security profile.


=head2 UpdateStream

=over

=item StreamId => Str

=item [Description => Str]

=item [Files => ArrayRef[L<Paws::IoT::StreamFile>]]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::IoT::UpdateStream>

Returns: a L<Paws::IoT::UpdateStreamResponse> instance

Updates an existing stream. The stream version will be incremented by
one.


=head2 UpdateThing

=over

=item ThingName => Str

=item [AttributePayload => L<Paws::IoT::AttributePayload>]

=item [ExpectedVersion => Int]

=item [RemoveThingType => Bool]

=item [ThingTypeName => Str]


=back

Each argument is described in detail in: L<Paws::IoT::UpdateThing>

Returns: a L<Paws::IoT::UpdateThingResponse> instance

Updates the data for a thing.


=head2 UpdateThingGroup

=over

=item ThingGroupName => Str

=item ThingGroupProperties => L<Paws::IoT::ThingGroupProperties>

=item [ExpectedVersion => Int]


=back

Each argument is described in detail in: L<Paws::IoT::UpdateThingGroup>

Returns: a L<Paws::IoT::UpdateThingGroupResponse> instance

Update a thing group.


=head2 UpdateThingGroupsForThing

=over

=item [OverrideDynamicGroups => Bool]

=item [ThingGroupsToAdd => ArrayRef[Str|Undef]]

=item [ThingGroupsToRemove => ArrayRef[Str|Undef]]

=item [ThingName => Str]


=back

Each argument is described in detail in: L<Paws::IoT::UpdateThingGroupsForThing>

Returns: a L<Paws::IoT::UpdateThingGroupsForThingResponse> instance

Updates the groups to which the thing belongs.


=head2 ValidateSecurityProfileBehaviors

=over

=item Behaviors => ArrayRef[L<Paws::IoT::Behavior>]


=back

Each argument is described in detail in: L<Paws::IoT::ValidateSecurityProfileBehaviors>

Returns: a L<Paws::IoT::ValidateSecurityProfileBehaviorsResponse> instance

Validates a Device Defender security profile behaviors specification.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllActiveViolations(sub { },[MaxResults => Int, NextToken => Str, SecurityProfileName => Str, ThingName => Str])

=head2 ListAllActiveViolations([MaxResults => Int, NextToken => Str, SecurityProfileName => Str, ThingName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - activeViolations, passing the object as the first parameter, and the string 'activeViolations' as the second parameter 

If not, it will return a a L<Paws::IoT::ListActiveViolationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAttachedPolicies(sub { },Target => Str, [Marker => Str, PageSize => Int, Recursive => Bool])

=head2 ListAllAttachedPolicies(Target => Str, [Marker => Str, PageSize => Int, Recursive => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - policies, passing the object as the first parameter, and the string 'policies' as the second parameter 

If not, it will return a a L<Paws::IoT::ListAttachedPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAuditFindings(sub { },[CheckName => Str, EndTime => Str, MaxResults => Int, NextToken => Str, ResourceIdentifier => L<Paws::IoT::ResourceIdentifier>, StartTime => Str, TaskId => Str])

=head2 ListAllAuditFindings([CheckName => Str, EndTime => Str, MaxResults => Int, NextToken => Str, ResourceIdentifier => L<Paws::IoT::ResourceIdentifier>, StartTime => Str, TaskId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - findings, passing the object as the first parameter, and the string 'findings' as the second parameter 

If not, it will return a a L<Paws::IoT::ListAuditFindingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAuditTasks(sub { },EndTime => Str, StartTime => Str, [MaxResults => Int, NextToken => Str, TaskStatus => Str, TaskType => Str])

=head2 ListAllAuditTasks(EndTime => Str, StartTime => Str, [MaxResults => Int, NextToken => Str, TaskStatus => Str, TaskType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tasks, passing the object as the first parameter, and the string 'tasks' as the second parameter 

If not, it will return a a L<Paws::IoT::ListAuditTasksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAuthorizers(sub { },[AscendingOrder => Bool, Marker => Str, PageSize => Int, Status => Str])

=head2 ListAllAuthorizers([AscendingOrder => Bool, Marker => Str, PageSize => Int, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - authorizers, passing the object as the first parameter, and the string 'authorizers' as the second parameter 

If not, it will return a a L<Paws::IoT::ListAuthorizersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBillingGroups(sub { },[MaxResults => Int, NamePrefixFilter => Str, NextToken => Str])

=head2 ListAllBillingGroups([MaxResults => Int, NamePrefixFilter => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - billingGroups, passing the object as the first parameter, and the string 'billingGroups' as the second parameter 

If not, it will return a a L<Paws::IoT::ListBillingGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCACertificates(sub { },[AscendingOrder => Bool, Marker => Str, PageSize => Int])

=head2 ListAllCACertificates([AscendingOrder => Bool, Marker => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - certificates, passing the object as the first parameter, and the string 'certificates' as the second parameter 

If not, it will return a a L<Paws::IoT::ListCACertificatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCertificates(sub { },[AscendingOrder => Bool, Marker => Str, PageSize => Int])

=head2 ListAllCertificates([AscendingOrder => Bool, Marker => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - certificates, passing the object as the first parameter, and the string 'certificates' as the second parameter 

If not, it will return a a L<Paws::IoT::ListCertificatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCertificatesByCA(sub { },CaCertificateId => Str, [AscendingOrder => Bool, Marker => Str, PageSize => Int])

=head2 ListAllCertificatesByCA(CaCertificateId => Str, [AscendingOrder => Bool, Marker => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - certificates, passing the object as the first parameter, and the string 'certificates' as the second parameter 

If not, it will return a a L<Paws::IoT::ListCertificatesByCAResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIndices(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllIndices([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - indexNames, passing the object as the first parameter, and the string 'indexNames' as the second parameter 

If not, it will return a a L<Paws::IoT::ListIndicesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobExecutionsForJob(sub { },JobId => Str, [MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllJobExecutionsForJob(JobId => Str, [MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - executionSummaries, passing the object as the first parameter, and the string 'executionSummaries' as the second parameter 

If not, it will return a a L<Paws::IoT::ListJobExecutionsForJobResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobExecutionsForThing(sub { },ThingName => Str, [MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllJobExecutionsForThing(ThingName => Str, [MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - executionSummaries, passing the object as the first parameter, and the string 'executionSummaries' as the second parameter 

If not, it will return a a L<Paws::IoT::ListJobExecutionsForThingResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllJobs(sub { },[MaxResults => Int, NextToken => Str, Status => Str, TargetSelection => Str, ThingGroupId => Str, ThingGroupName => Str])

=head2 ListAllJobs([MaxResults => Int, NextToken => Str, Status => Str, TargetSelection => Str, ThingGroupId => Str, ThingGroupName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - jobs, passing the object as the first parameter, and the string 'jobs' as the second parameter 

If not, it will return a a L<Paws::IoT::ListJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOTAUpdates(sub { },[MaxResults => Int, NextToken => Str, OtaUpdateStatus => Str])

=head2 ListAllOTAUpdates([MaxResults => Int, NextToken => Str, OtaUpdateStatus => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - otaUpdates, passing the object as the first parameter, and the string 'otaUpdates' as the second parameter 

If not, it will return a a L<Paws::IoT::ListOTAUpdatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOutgoingCertificates(sub { },[AscendingOrder => Bool, Marker => Str, PageSize => Int])

=head2 ListAllOutgoingCertificates([AscendingOrder => Bool, Marker => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - outgoingCertificates, passing the object as the first parameter, and the string 'outgoingCertificates' as the second parameter 

If not, it will return a a L<Paws::IoT::ListOutgoingCertificatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPolicies(sub { },[AscendingOrder => Bool, Marker => Str, PageSize => Int])

=head2 ListAllPolicies([AscendingOrder => Bool, Marker => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - policies, passing the object as the first parameter, and the string 'policies' as the second parameter 

If not, it will return a a L<Paws::IoT::ListPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPolicyPrincipals(sub { },PolicyName => Str, [AscendingOrder => Bool, Marker => Str, PageSize => Int])

=head2 ListAllPolicyPrincipals(PolicyName => Str, [AscendingOrder => Bool, Marker => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - principals, passing the object as the first parameter, and the string 'principals' as the second parameter 

If not, it will return a a L<Paws::IoT::ListPolicyPrincipalsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPrincipalPolicies(sub { },Principal => Str, [AscendingOrder => Bool, Marker => Str, PageSize => Int])

=head2 ListAllPrincipalPolicies(Principal => Str, [AscendingOrder => Bool, Marker => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - policies, passing the object as the first parameter, and the string 'policies' as the second parameter 

If not, it will return a a L<Paws::IoT::ListPrincipalPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPrincipalThings(sub { },Principal => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPrincipalThings(Principal => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - things, passing the object as the first parameter, and the string 'things' as the second parameter 

If not, it will return a a L<Paws::IoT::ListPrincipalThingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRoleAliases(sub { },[AscendingOrder => Bool, Marker => Str, PageSize => Int])

=head2 ListAllRoleAliases([AscendingOrder => Bool, Marker => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - roleAliases, passing the object as the first parameter, and the string 'roleAliases' as the second parameter 

If not, it will return a a L<Paws::IoT::ListRoleAliasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllScheduledAudits(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllScheduledAudits([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - scheduledAudits, passing the object as the first parameter, and the string 'scheduledAudits' as the second parameter 

If not, it will return a a L<Paws::IoT::ListScheduledAuditsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSecurityProfiles(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSecurityProfiles([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - securityProfileIdentifiers, passing the object as the first parameter, and the string 'securityProfileIdentifiers' as the second parameter 

If not, it will return a a L<Paws::IoT::ListSecurityProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSecurityProfilesForTarget(sub { },SecurityProfileTargetArn => Str, [MaxResults => Int, NextToken => Str, Recursive => Bool])

=head2 ListAllSecurityProfilesForTarget(SecurityProfileTargetArn => Str, [MaxResults => Int, NextToken => Str, Recursive => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - securityProfileTargetMappings, passing the object as the first parameter, and the string 'securityProfileTargetMappings' as the second parameter 

If not, it will return a a L<Paws::IoT::ListSecurityProfilesForTargetResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllStreams(sub { },[AscendingOrder => Bool, MaxResults => Int, NextToken => Str])

=head2 ListAllStreams([AscendingOrder => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - streams, passing the object as the first parameter, and the string 'streams' as the second parameter 

If not, it will return a a L<Paws::IoT::ListStreamsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceArn => Str, [NextToken => Str])

=head2 ListAllTagsForResource(ResourceArn => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tags, passing the object as the first parameter, and the string 'tags' as the second parameter 

If not, it will return a a L<Paws::IoT::ListTagsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTargetsForPolicy(sub { },PolicyName => Str, [Marker => Str, PageSize => Int])

=head2 ListAllTargetsForPolicy(PolicyName => Str, [Marker => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - targets, passing the object as the first parameter, and the string 'targets' as the second parameter 

If not, it will return a a L<Paws::IoT::ListTargetsForPolicyResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTargetsForSecurityProfile(sub { },SecurityProfileName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTargetsForSecurityProfile(SecurityProfileName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - securityProfileTargets, passing the object as the first parameter, and the string 'securityProfileTargets' as the second parameter 

If not, it will return a a L<Paws::IoT::ListTargetsForSecurityProfileResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllThingGroups(sub { },[MaxResults => Int, NamePrefixFilter => Str, NextToken => Str, ParentGroup => Str, Recursive => Bool])

=head2 ListAllThingGroups([MaxResults => Int, NamePrefixFilter => Str, NextToken => Str, ParentGroup => Str, Recursive => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - thingGroups, passing the object as the first parameter, and the string 'thingGroups' as the second parameter 

If not, it will return a a L<Paws::IoT::ListThingGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllThingGroupsForThing(sub { },ThingName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllThingGroupsForThing(ThingName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - thingGroups, passing the object as the first parameter, and the string 'thingGroups' as the second parameter 

If not, it will return a a L<Paws::IoT::ListThingGroupsForThingResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllThingRegistrationTasks(sub { },[MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllThingRegistrationTasks([MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - taskIds, passing the object as the first parameter, and the string 'taskIds' as the second parameter 

If not, it will return a a L<Paws::IoT::ListThingRegistrationTasksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllThings(sub { },[AttributeName => Str, AttributeValue => Str, MaxResults => Int, NextToken => Str, ThingTypeName => Str])

=head2 ListAllThings([AttributeName => Str, AttributeValue => Str, MaxResults => Int, NextToken => Str, ThingTypeName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - things, passing the object as the first parameter, and the string 'things' as the second parameter 

If not, it will return a a L<Paws::IoT::ListThingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllThingsInBillingGroup(sub { },BillingGroupName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllThingsInBillingGroup(BillingGroupName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - things, passing the object as the first parameter, and the string 'things' as the second parameter 

If not, it will return a a L<Paws::IoT::ListThingsInBillingGroupResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllThingsInThingGroup(sub { },ThingGroupName => Str, [MaxResults => Int, NextToken => Str, Recursive => Bool])

=head2 ListAllThingsInThingGroup(ThingGroupName => Str, [MaxResults => Int, NextToken => Str, Recursive => Bool])


If passed a sub as first parameter, it will call the sub for each element found in :

 - things, passing the object as the first parameter, and the string 'things' as the second parameter 

If not, it will return a a L<Paws::IoT::ListThingsInThingGroupResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllThingTypes(sub { },[MaxResults => Int, NextToken => Str, ThingTypeName => Str])

=head2 ListAllThingTypes([MaxResults => Int, NextToken => Str, ThingTypeName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - thingTypes, passing the object as the first parameter, and the string 'thingTypes' as the second parameter 

If not, it will return a a L<Paws::IoT::ListThingTypesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTopicRules(sub { },[MaxResults => Int, NextToken => Str, RuleDisabled => Bool, Topic => Str])

=head2 ListAllTopicRules([MaxResults => Int, NextToken => Str, RuleDisabled => Bool, Topic => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - rules, passing the object as the first parameter, and the string 'rules' as the second parameter 

If not, it will return a a L<Paws::IoT::ListTopicRulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllV2LoggingLevels(sub { },[MaxResults => Int, NextToken => Str, TargetType => Str])

=head2 ListAllV2LoggingLevels([MaxResults => Int, NextToken => Str, TargetType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - logTargetConfigurations, passing the object as the first parameter, and the string 'logTargetConfigurations' as the second parameter 

If not, it will return a a L<Paws::IoT::ListV2LoggingLevelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllViolationEvents(sub { },EndTime => Str, StartTime => Str, [MaxResults => Int, NextToken => Str, SecurityProfileName => Str, ThingName => Str])

=head2 ListAllViolationEvents(EndTime => Str, StartTime => Str, [MaxResults => Int, NextToken => Str, SecurityProfileName => Str, ThingName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - violationEvents, passing the object as the first parameter, and the string 'violationEvents' as the second parameter 

If not, it will return a a L<Paws::IoT::ListViolationEventsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

