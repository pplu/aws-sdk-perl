package Paws::ApiGateway;
  use Moose;
  sub service { 'apigateway' }
  sub signing_name { 'apigateway' }
  sub version { '2015-07-09' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateApiKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::CreateApiKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAuthorizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::CreateAuthorizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBasePathMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::CreateBasePathMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::CreateDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDocumentationPart {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::CreateDocumentationPart', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDocumentationVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::CreateDocumentationVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomainName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::CreateDomainName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::CreateModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRequestValidator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::CreateRequestValidator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::CreateResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRestApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::CreateRestApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::CreateStage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUsagePlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::CreateUsagePlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUsagePlanKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::CreateUsagePlanKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::CreateVpcLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApiKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteApiKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAuthorizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteAuthorizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBasePathMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteBasePathMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteClientCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteClientCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDocumentationPart {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteDocumentationPart', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDocumentationVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteDocumentationVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomainName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteDomainName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGatewayResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteGatewayResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIntegrationResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteIntegrationResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMethod {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteMethod', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMethodResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteMethodResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRequestValidator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteRequestValidator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRestApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteRestApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteStage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUsagePlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteUsagePlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUsagePlanKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteUsagePlanKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::DeleteVpcLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub FlushStageAuthorizersCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::FlushStageAuthorizersCache', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub FlushStageCache {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::FlushStageCache', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateClientCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GenerateClientCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApiKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetApiKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApiKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetApiKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAuthorizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetAuthorizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAuthorizers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetAuthorizers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBasePathMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetBasePathMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBasePathMappings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetBasePathMappings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetClientCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetClientCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetClientCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetClientCertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeployments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetDeployments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDocumentationPart {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetDocumentationPart', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDocumentationParts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetDocumentationParts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDocumentationVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetDocumentationVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDocumentationVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetDocumentationVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomainName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetDomainName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomainNames {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetDomainNames', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGatewayResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetGatewayResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGatewayResponses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetGatewayResponses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIntegrationResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetIntegrationResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMethod {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetMethod', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMethodResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetMethodResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetModelTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetModelTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRequestValidator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetRequestValidator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRequestValidators {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetRequestValidators', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRestApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetRestApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRestApis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetRestApis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSdk {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetSdk', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSdkType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetSdkType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSdkTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetSdkTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetStage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetStages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUsagePlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetUsagePlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUsagePlanKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetUsagePlanKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUsagePlanKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetUsagePlanKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUsagePlans {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetUsagePlans', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVpcLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetVpcLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVpcLinks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::GetVpcLinks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportApiKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::ImportApiKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportDocumentationParts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::ImportDocumentationParts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportRestApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::ImportRestApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutGatewayResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::PutGatewayResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::PutIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutIntegrationResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::PutIntegrationResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutMethod {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::PutMethod', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutMethodResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::PutMethodResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRestApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::PutRestApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestInvokeAuthorizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::TestInvokeAuthorizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestInvokeMethod {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::TestInvokeMethod', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApiKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateApiKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAuthorizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateAuthorizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBasePathMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateBasePathMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateClientCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateClientCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDocumentationPart {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateDocumentationPart', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDocumentationVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateDocumentationVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomainName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateDomainName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGatewayResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateGatewayResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIntegrationResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateIntegrationResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMethod {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateMethod', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMethodResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateMethodResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRequestValidator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateRequestValidator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRestApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateRestApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateStage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUsagePlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateUsagePlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVpcLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGateway::UpdateVpcLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllApiKeys {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetApiKeys(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->position) {
        $next_result = $self->GetApiKeys(@_, position => $next_result->position);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->GetApiKeys(@_, position => $result->position);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub GetAllAuthorizers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetAuthorizers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->position) {
        $next_result = $self->GetAuthorizers(@_, position => $next_result->position);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->GetAuthorizers(@_, position => $result->position);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub GetAllBasePathMappings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetBasePathMappings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->position) {
        $next_result = $self->GetBasePathMappings(@_, position => $next_result->position);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->GetBasePathMappings(@_, position => $result->position);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub GetAllClientCertificates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetClientCertificates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->position) {
        $next_result = $self->GetClientCertificates(@_, position => $next_result->position);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->GetClientCertificates(@_, position => $result->position);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub GetAllDeployments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDeployments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->position) {
        $next_result = $self->GetDeployments(@_, position => $next_result->position);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->GetDeployments(@_, position => $result->position);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub GetAllDocumentationParts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDocumentationParts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->position) {
        $next_result = $self->GetDocumentationParts(@_, position => $next_result->position);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->GetDocumentationParts(@_, position => $result->position);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub GetAllDocumentationVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDocumentationVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->position) {
        $next_result = $self->GetDocumentationVersions(@_, position => $next_result->position);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->GetDocumentationVersions(@_, position => $result->position);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub GetAllDomainNames {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDomainNames(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->position) {
        $next_result = $self->GetDomainNames(@_, position => $next_result->position);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->GetDomainNames(@_, position => $result->position);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub GetAllGatewayResponses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetGatewayResponses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->position) {
        $next_result = $self->GetGatewayResponses(@_, position => $next_result->position);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->GetGatewayResponses(@_, position => $result->position);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub GetAllModels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetModels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->position) {
        $next_result = $self->GetModels(@_, position => $next_result->position);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->GetModels(@_, position => $result->position);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub GetAllRequestValidators {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetRequestValidators(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->position) {
        $next_result = $self->GetRequestValidators(@_, position => $next_result->position);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->GetRequestValidators(@_, position => $result->position);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub GetAllResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->position) {
        $next_result = $self->GetResources(@_, position => $next_result->position);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->GetResources(@_, position => $result->position);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub GetAllRestApis {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetRestApis(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->position) {
        $next_result = $self->GetRestApis(@_, position => $next_result->position);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->GetRestApis(@_, position => $result->position);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub GetAllSdkTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetSdkTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->position) {
        $next_result = $self->GetSdkTypes(@_, position => $next_result->position);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->GetSdkTypes(@_, position => $result->position);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub GetAllUsage {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetUsage(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->position) {
        $next_result = $self->GetUsage(@_, position => $next_result->position);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->GetUsage(@_, position => $result->position);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub GetAllUsagePlanKeys {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetUsagePlanKeys(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->position) {
        $next_result = $self->GetUsagePlanKeys(@_, position => $next_result->position);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->GetUsagePlanKeys(@_, position => $result->position);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub GetAllUsagePlans {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetUsagePlans(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->position) {
        $next_result = $self->GetUsagePlans(@_, position => $next_result->position);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->GetUsagePlans(@_, position => $result->position);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub GetAllVpcLinks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetVpcLinks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->position) {
        $next_result = $self->GetVpcLinks(@_, position => $next_result->position);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->GetVpcLinks(@_, position => $result->position);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }


  sub operations { qw/CreateApiKey CreateAuthorizer CreateBasePathMapping CreateDeployment CreateDocumentationPart CreateDocumentationVersion CreateDomainName CreateModel CreateRequestValidator CreateResource CreateRestApi CreateStage CreateUsagePlan CreateUsagePlanKey CreateVpcLink DeleteApiKey DeleteAuthorizer DeleteBasePathMapping DeleteClientCertificate DeleteDeployment DeleteDocumentationPart DeleteDocumentationVersion DeleteDomainName DeleteGatewayResponse DeleteIntegration DeleteIntegrationResponse DeleteMethod DeleteMethodResponse DeleteModel DeleteRequestValidator DeleteResource DeleteRestApi DeleteStage DeleteUsagePlan DeleteUsagePlanKey DeleteVpcLink FlushStageAuthorizersCache FlushStageCache GenerateClientCertificate GetAccount GetApiKey GetApiKeys GetAuthorizer GetAuthorizers GetBasePathMapping GetBasePathMappings GetClientCertificate GetClientCertificates GetDeployment GetDeployments GetDocumentationPart GetDocumentationParts GetDocumentationVersion GetDocumentationVersions GetDomainName GetDomainNames GetExport GetGatewayResponse GetGatewayResponses GetIntegration GetIntegrationResponse GetMethod GetMethodResponse GetModel GetModels GetModelTemplate GetRequestValidator GetRequestValidators GetResource GetResources GetRestApi GetRestApis GetSdk GetSdkType GetSdkTypes GetStage GetStages GetTags GetUsage GetUsagePlan GetUsagePlanKey GetUsagePlanKeys GetUsagePlans GetVpcLink GetVpcLinks ImportApiKeys ImportDocumentationParts ImportRestApi PutGatewayResponse PutIntegration PutIntegrationResponse PutMethod PutMethodResponse PutRestApi TagResource TestInvokeAuthorizer TestInvokeMethod UntagResource UpdateAccount UpdateApiKey UpdateAuthorizer UpdateBasePathMapping UpdateClientCertificate UpdateDeployment UpdateDocumentationPart UpdateDocumentationVersion UpdateDomainName UpdateGatewayResponse UpdateIntegration UpdateIntegrationResponse UpdateMethod UpdateMethodResponse UpdateModel UpdateRequestValidator UpdateResource UpdateRestApi UpdateStage UpdateUsage UpdateUsagePlan UpdateVpcLink / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway - Perl Interface to AWS Amazon API Gateway

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ApiGateway');
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

Amazon API Gateway

Amazon API Gateway helps developers deliver robust, secure, and
scalable mobile and web application back ends. API Gateway allows
developers to securely connect mobile and web applications to APIs that
run on AWS Lambda, Amazon EC2, or other publicly addressable web
services that are hosted outside of AWS.

For the AWS API documentation, see L<https://docs.aws.amazon.com/apigateway/>


=head1 METHODS

=head2 CreateApiKey

=over

=item [CustomerId => Str]

=item [Description => Str]

=item [Enabled => Bool]

=item [GenerateDistinctId => Bool]

=item [Name => Str]

=item [StageKeys => ArrayRef[L<Paws::ApiGateway::StageKey>]]

=item [Value => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::CreateApiKey>

Returns: a L<Paws::ApiGateway::ApiKey> instance

Create an ApiKey resource.

AWS CLI
(https://docs.aws.amazon.com/cli/latest/reference/apigateway/create-api-key.html)


=head2 CreateAuthorizer

=over

=item Name => Str

=item RestApiId => Str

=item Type => Str

=item [AuthorizerCredentials => Str]

=item [AuthorizerResultTtlInSeconds => Int]

=item [AuthorizerUri => Str]

=item [AuthType => Str]

=item [IdentitySource => Str]

=item [IdentityValidationExpression => Str]

=item [ProviderARNs => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::CreateAuthorizer>

Returns: a L<Paws::ApiGateway::Authorizer> instance

Adds a new Authorizer resource to an existing RestApi resource.

AWS CLI
(https://docs.aws.amazon.com/cli/latest/reference/apigateway/create-authorizer.html)


=head2 CreateBasePathMapping

=over

=item DomainName => Str

=item RestApiId => Str

=item [BasePath => Str]

=item [Stage => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::CreateBasePathMapping>

Returns: a L<Paws::ApiGateway::BasePathMapping> instance

Creates a new BasePathMapping resource.


=head2 CreateDeployment

=over

=item RestApiId => Str

=item [CacheClusterEnabled => Bool]

=item [CacheClusterSize => Str]

=item [CanarySettings => L<Paws::ApiGateway::DeploymentCanarySettings>]

=item [Description => Str]

=item [StageDescription => Str]

=item [StageName => Str]

=item [TracingEnabled => Bool]

=item [Variables => L<Paws::ApiGateway::MapOfStringToString>]


=back

Each argument is described in detail in: L<Paws::ApiGateway::CreateDeployment>

Returns: a L<Paws::ApiGateway::Deployment> instance

Creates a Deployment resource, which makes a specified RestApi callable
over the internet.


=head2 CreateDocumentationPart

=over

=item Location => L<Paws::ApiGateway::DocumentationPartLocation>

=item Properties => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::CreateDocumentationPart>

Returns: a L<Paws::ApiGateway::DocumentationPart> instance




=head2 CreateDocumentationVersion

=over

=item DocumentationVersion => Str

=item RestApiId => Str

=item [Description => Str]

=item [StageName => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::CreateDocumentationVersion>

Returns: a L<Paws::ApiGateway::DocumentationVersion> instance




=head2 CreateDomainName

=over

=item DomainName => Str

=item [CertificateArn => Str]

=item [CertificateBody => Str]

=item [CertificateChain => Str]

=item [CertificateName => Str]

=item [CertificatePrivateKey => Str]

=item [EndpointConfiguration => L<Paws::ApiGateway::EndpointConfiguration>]

=item [RegionalCertificateArn => Str]

=item [RegionalCertificateName => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::CreateDomainName>

Returns: a L<Paws::ApiGateway::DomainName> instance

Creates a new domain name.


=head2 CreateModel

=over

=item ContentType => Str

=item Name => Str

=item RestApiId => Str

=item [Description => Str]

=item [Schema => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::CreateModel>

Returns: a L<Paws::ApiGateway::Model> instance

Adds a new Model resource to an existing RestApi resource.


=head2 CreateRequestValidator

=over

=item RestApiId => Str

=item [Name => Str]

=item [ValidateRequestBody => Bool]

=item [ValidateRequestParameters => Bool]


=back

Each argument is described in detail in: L<Paws::ApiGateway::CreateRequestValidator>

Returns: a L<Paws::ApiGateway::RequestValidator> instance

Creates a ReqeustValidator of a given RestApi.


=head2 CreateResource

=over

=item ParentId => Str

=item PathPart => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::CreateResource>

Returns: a L<Paws::ApiGateway::Resource> instance

Creates a Resource resource.


=head2 CreateRestApi

=over

=item Name => Str

=item [ApiKeySource => Str]

=item [BinaryMediaTypes => ArrayRef[Str|Undef]]

=item [CloneFrom => Str]

=item [Description => Str]

=item [EndpointConfiguration => L<Paws::ApiGateway::EndpointConfiguration>]

=item [MinimumCompressionSize => Int]

=item [Policy => Str]

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::CreateRestApi>

Returns: a L<Paws::ApiGateway::RestApi> instance

Creates a new RestApi resource.


=head2 CreateStage

=over

=item DeploymentId => Str

=item RestApiId => Str

=item StageName => Str

=item [CacheClusterEnabled => Bool]

=item [CacheClusterSize => Str]

=item [CanarySettings => L<Paws::ApiGateway::CanarySettings>]

=item [Description => Str]

=item [DocumentationVersion => Str]

=item [Tags => L<Paws::ApiGateway::MapOfStringToString>]

=item [TracingEnabled => Bool]

=item [Variables => L<Paws::ApiGateway::MapOfStringToString>]


=back

Each argument is described in detail in: L<Paws::ApiGateway::CreateStage>

Returns: a L<Paws::ApiGateway::Stage> instance

Creates a new Stage resource that references a pre-existing Deployment
for the API.


=head2 CreateUsagePlan

=over

=item Name => Str

=item [ApiStages => ArrayRef[L<Paws::ApiGateway::ApiStage>]]

=item [Description => Str]

=item [Quota => L<Paws::ApiGateway::QuotaSettings>]

=item [Throttle => L<Paws::ApiGateway::ThrottleSettings>]


=back

Each argument is described in detail in: L<Paws::ApiGateway::CreateUsagePlan>

Returns: a L<Paws::ApiGateway::UsagePlan> instance

Creates a usage plan with the throttle and quota limits, as well as the
associated API stages, specified in the payload.


=head2 CreateUsagePlanKey

=over

=item KeyId => Str

=item KeyType => Str

=item UsagePlanId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::CreateUsagePlanKey>

Returns: a L<Paws::ApiGateway::UsagePlanKey> instance

Creates a usage plan key for adding an existing API key to a usage
plan.


=head2 CreateVpcLink

=over

=item Name => Str

=item TargetArns => ArrayRef[Str|Undef]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::CreateVpcLink>

Returns: a L<Paws::ApiGateway::VpcLink> instance

Creates a VPC link, under the caller's account in a selected region, in
an asynchronous operation that typically takes 2-4 minutes to complete
and become operational. The caller must have permissions to create and
update VPC Endpoint services.


=head2 DeleteApiKey

=over

=item ApiKey => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteApiKey>

Returns: nothing

Deletes the ApiKey resource.


=head2 DeleteAuthorizer

=over

=item AuthorizerId => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteAuthorizer>

Returns: nothing

Deletes an existing Authorizer resource.

AWS CLI
(https://docs.aws.amazon.com/cli/latest/reference/apigateway/delete-authorizer.html)


=head2 DeleteBasePathMapping

=over

=item BasePath => Str

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteBasePathMapping>

Returns: nothing

Deletes the BasePathMapping resource.


=head2 DeleteClientCertificate

=over

=item ClientCertificateId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteClientCertificate>

Returns: nothing

Deletes the ClientCertificate resource.


=head2 DeleteDeployment

=over

=item DeploymentId => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteDeployment>

Returns: nothing

Deletes a Deployment resource. Deleting a deployment will only succeed
if there are no Stage resources associated with it.


=head2 DeleteDocumentationPart

=over

=item DocumentationPartId => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteDocumentationPart>

Returns: nothing




=head2 DeleteDocumentationVersion

=over

=item DocumentationVersion => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteDocumentationVersion>

Returns: nothing




=head2 DeleteDomainName

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteDomainName>

Returns: nothing

Deletes the DomainName resource.


=head2 DeleteGatewayResponse

=over

=item ResponseType => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteGatewayResponse>

Returns: nothing

Clears any customization of a GatewayResponse of a specified response
type on the given RestApi and resets it with the default settings.


=head2 DeleteIntegration

=over

=item HttpMethod => Str

=item ResourceId => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteIntegration>

Returns: nothing

Represents a delete integration.


=head2 DeleteIntegrationResponse

=over

=item HttpMethod => Str

=item ResourceId => Str

=item RestApiId => Str

=item StatusCode => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteIntegrationResponse>

Returns: nothing

Represents a delete integration response.


=head2 DeleteMethod

=over

=item HttpMethod => Str

=item ResourceId => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteMethod>

Returns: nothing

Deletes an existing Method resource.


=head2 DeleteMethodResponse

=over

=item HttpMethod => Str

=item ResourceId => Str

=item RestApiId => Str

=item StatusCode => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteMethodResponse>

Returns: nothing

Deletes an existing MethodResponse resource.


=head2 DeleteModel

=over

=item ModelName => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteModel>

Returns: nothing

Deletes a model.


=head2 DeleteRequestValidator

=over

=item RequestValidatorId => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteRequestValidator>

Returns: nothing

Deletes a RequestValidator of a given RestApi.


=head2 DeleteResource

=over

=item ResourceId => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteResource>

Returns: nothing

Deletes a Resource resource.


=head2 DeleteRestApi

=over

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteRestApi>

Returns: nothing

Deletes the specified API.


=head2 DeleteStage

=over

=item RestApiId => Str

=item StageName => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteStage>

Returns: nothing

Deletes a Stage resource.


=head2 DeleteUsagePlan

=over

=item UsagePlanId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteUsagePlan>

Returns: nothing

Deletes a usage plan of a given plan Id.


=head2 DeleteUsagePlanKey

=over

=item KeyId => Str

=item UsagePlanId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteUsagePlanKey>

Returns: nothing

Deletes a usage plan key and remove the underlying API key from the
associated usage plan.


=head2 DeleteVpcLink

=over

=item VpcLinkId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::DeleteVpcLink>

Returns: nothing

Deletes an existing VpcLink of a specified identifier.


=head2 FlushStageAuthorizersCache

=over

=item RestApiId => Str

=item StageName => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::FlushStageAuthorizersCache>

Returns: nothing

Flushes all authorizer cache entries on a stage.


=head2 FlushStageCache

=over

=item RestApiId => Str

=item StageName => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::FlushStageCache>

Returns: nothing

Flushes a stage's cache.


=head2 GenerateClientCertificate

=over

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GenerateClientCertificate>

Returns: a L<Paws::ApiGateway::ClientCertificate> instance

Generates a ClientCertificate resource.


=head2 GetAccount






Each argument is described in detail in: L<Paws::ApiGateway::GetAccount>

Returns: a L<Paws::ApiGateway::Account> instance

Gets information about the current Account resource.


=head2 GetApiKey

=over

=item ApiKey => Str

=item [IncludeValue => Bool]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetApiKey>

Returns: a L<Paws::ApiGateway::ApiKey> instance

Gets information about the current ApiKey resource.


=head2 GetApiKeys

=over

=item [CustomerId => Str]

=item [IncludeValues => Bool]

=item [Limit => Int]

=item [NameQuery => Str]

=item [Position => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetApiKeys>

Returns: a L<Paws::ApiGateway::ApiKeys> instance

Gets information about the current ApiKeys resource.


=head2 GetAuthorizer

=over

=item AuthorizerId => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetAuthorizer>

Returns: a L<Paws::ApiGateway::Authorizer> instance

Describe an existing Authorizer resource.

AWS CLI
(https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizer.html)


=head2 GetAuthorizers

=over

=item RestApiId => Str

=item [Limit => Int]

=item [Position => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetAuthorizers>

Returns: a L<Paws::ApiGateway::Authorizers> instance

Describe an existing Authorizers resource.

AWS CLI
(https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizers.html)


=head2 GetBasePathMapping

=over

=item BasePath => Str

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetBasePathMapping>

Returns: a L<Paws::ApiGateway::BasePathMapping> instance

Describe a BasePathMapping resource.


=head2 GetBasePathMappings

=over

=item DomainName => Str

=item [Limit => Int]

=item [Position => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetBasePathMappings>

Returns: a L<Paws::ApiGateway::BasePathMappings> instance

Represents a collection of BasePathMapping resources.


=head2 GetClientCertificate

=over

=item ClientCertificateId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetClientCertificate>

Returns: a L<Paws::ApiGateway::ClientCertificate> instance

Gets information about the current ClientCertificate resource.


=head2 GetClientCertificates

=over

=item [Limit => Int]

=item [Position => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetClientCertificates>

Returns: a L<Paws::ApiGateway::ClientCertificates> instance

Gets a collection of ClientCertificate resources.


=head2 GetDeployment

=over

=item DeploymentId => Str

=item RestApiId => Str

=item [Embed => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetDeployment>

Returns: a L<Paws::ApiGateway::Deployment> instance

Gets information about a Deployment resource.


=head2 GetDeployments

=over

=item RestApiId => Str

=item [Limit => Int]

=item [Position => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetDeployments>

Returns: a L<Paws::ApiGateway::Deployments> instance

Gets information about a Deployments collection.


=head2 GetDocumentationPart

=over

=item DocumentationPartId => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetDocumentationPart>

Returns: a L<Paws::ApiGateway::DocumentationPart> instance




=head2 GetDocumentationParts

=over

=item RestApiId => Str

=item [Limit => Int]

=item [LocationStatus => Str]

=item [NameQuery => Str]

=item [Path => Str]

=item [Position => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetDocumentationParts>

Returns: a L<Paws::ApiGateway::DocumentationParts> instance




=head2 GetDocumentationVersion

=over

=item DocumentationVersion => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetDocumentationVersion>

Returns: a L<Paws::ApiGateway::DocumentationVersion> instance




=head2 GetDocumentationVersions

=over

=item RestApiId => Str

=item [Limit => Int]

=item [Position => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetDocumentationVersions>

Returns: a L<Paws::ApiGateway::DocumentationVersions> instance




=head2 GetDomainName

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetDomainName>

Returns: a L<Paws::ApiGateway::DomainName> instance

Represents a domain name that is contained in a simpler, more intuitive
URL that can be called.


=head2 GetDomainNames

=over

=item [Limit => Int]

=item [Position => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetDomainNames>

Returns: a L<Paws::ApiGateway::DomainNames> instance

Represents a collection of DomainName resources.


=head2 GetExport

=over

=item ExportType => Str

=item RestApiId => Str

=item StageName => Str

=item [Accepts => Str]

=item [Parameters => L<Paws::ApiGateway::MapOfStringToString>]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetExport>

Returns: a L<Paws::ApiGateway::ExportResponse> instance

Exports a deployed version of a RestApi in a specified format.


=head2 GetGatewayResponse

=over

=item ResponseType => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetGatewayResponse>

Returns: a L<Paws::ApiGateway::GatewayResponse> instance

Gets a GatewayResponse of a specified response type on the given
RestApi.


=head2 GetGatewayResponses

=over

=item RestApiId => Str

=item [Limit => Int]

=item [Position => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetGatewayResponses>

Returns: a L<Paws::ApiGateway::GatewayResponses> instance

Gets the GatewayResponses collection on the given RestApi. If an API
developer has not added any definitions for gateway responses, the
result will be the API Gateway-generated default GatewayResponses
collection for the supported response types.


=head2 GetIntegration

=over

=item HttpMethod => Str

=item ResourceId => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetIntegration>

Returns: a L<Paws::ApiGateway::Integration> instance

Get the integration settings.


=head2 GetIntegrationResponse

=over

=item HttpMethod => Str

=item ResourceId => Str

=item RestApiId => Str

=item StatusCode => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetIntegrationResponse>

Returns: a L<Paws::ApiGateway::IntegrationResponse> instance

Represents a get integration response.


=head2 GetMethod

=over

=item HttpMethod => Str

=item ResourceId => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetMethod>

Returns: a L<Paws::ApiGateway::Method> instance

Describe an existing Method resource.


=head2 GetMethodResponse

=over

=item HttpMethod => Str

=item ResourceId => Str

=item RestApiId => Str

=item StatusCode => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetMethodResponse>

Returns: a L<Paws::ApiGateway::MethodResponse> instance

Describes a MethodResponse resource.


=head2 GetModel

=over

=item ModelName => Str

=item RestApiId => Str

=item [Flatten => Bool]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetModel>

Returns: a L<Paws::ApiGateway::Model> instance

Describes an existing model defined for a RestApi resource.


=head2 GetModels

=over

=item RestApiId => Str

=item [Limit => Int]

=item [Position => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetModels>

Returns: a L<Paws::ApiGateway::Models> instance

Describes existing Models defined for a RestApi resource.


=head2 GetModelTemplate

=over

=item ModelName => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetModelTemplate>

Returns: a L<Paws::ApiGateway::Template> instance

Generates a sample mapping template that can be used to transform a
payload into the structure of a model.


=head2 GetRequestValidator

=over

=item RequestValidatorId => Str

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetRequestValidator>

Returns: a L<Paws::ApiGateway::RequestValidator> instance

Gets a RequestValidator of a given RestApi.


=head2 GetRequestValidators

=over

=item RestApiId => Str

=item [Limit => Int]

=item [Position => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetRequestValidators>

Returns: a L<Paws::ApiGateway::RequestValidators> instance

Gets the RequestValidators collection of a given RestApi.


=head2 GetResource

=over

=item ResourceId => Str

=item RestApiId => Str

=item [Embed => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetResource>

Returns: a L<Paws::ApiGateway::Resource> instance

Lists information about a resource.


=head2 GetResources

=over

=item RestApiId => Str

=item [Embed => ArrayRef[Str|Undef]]

=item [Limit => Int]

=item [Position => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetResources>

Returns: a L<Paws::ApiGateway::Resources> instance

Lists information about a collection of Resource resources.


=head2 GetRestApi

=over

=item RestApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetRestApi>

Returns: a L<Paws::ApiGateway::RestApi> instance

Lists the RestApi resource in the collection.


=head2 GetRestApis

=over

=item [Limit => Int]

=item [Position => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetRestApis>

Returns: a L<Paws::ApiGateway::RestApis> instance

Lists the RestApis resources for your collection.


=head2 GetSdk

=over

=item RestApiId => Str

=item SdkType => Str

=item StageName => Str

=item [Parameters => L<Paws::ApiGateway::MapOfStringToString>]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetSdk>

Returns: a L<Paws::ApiGateway::SdkResponse> instance

Generates a client SDK for a RestApi and Stage.


=head2 GetSdkType

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetSdkType>

Returns: a L<Paws::ApiGateway::SdkType> instance




=head2 GetSdkTypes

=over

=item [Limit => Int]

=item [Position => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetSdkTypes>

Returns: a L<Paws::ApiGateway::SdkTypes> instance




=head2 GetStage

=over

=item RestApiId => Str

=item StageName => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetStage>

Returns: a L<Paws::ApiGateway::Stage> instance

Gets information about a Stage resource.


=head2 GetStages

=over

=item RestApiId => Str

=item [DeploymentId => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetStages>

Returns: a L<Paws::ApiGateway::Stages> instance

Gets information about one or more Stage resources.


=head2 GetTags

=over

=item ResourceArn => Str

=item [Limit => Int]

=item [Position => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetTags>

Returns: a L<Paws::ApiGateway::Tags> instance

Gets the Tags collection for a given resource.


=head2 GetUsage

=over

=item EndDate => Str

=item StartDate => Str

=item UsagePlanId => Str

=item [KeyId => Str]

=item [Limit => Int]

=item [Position => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetUsage>

Returns: a L<Paws::ApiGateway::Usage> instance

Gets the usage data of a usage plan in a specified time interval.


=head2 GetUsagePlan

=over

=item UsagePlanId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetUsagePlan>

Returns: a L<Paws::ApiGateway::UsagePlan> instance

Gets a usage plan of a given plan identifier.


=head2 GetUsagePlanKey

=over

=item KeyId => Str

=item UsagePlanId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetUsagePlanKey>

Returns: a L<Paws::ApiGateway::UsagePlanKey> instance

Gets a usage plan key of a given key identifier.


=head2 GetUsagePlanKeys

=over

=item UsagePlanId => Str

=item [Limit => Int]

=item [NameQuery => Str]

=item [Position => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetUsagePlanKeys>

Returns: a L<Paws::ApiGateway::UsagePlanKeys> instance

Gets all the usage plan keys representing the API keys added to a
specified usage plan.


=head2 GetUsagePlans

=over

=item [KeyId => Str]

=item [Limit => Int]

=item [Position => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetUsagePlans>

Returns: a L<Paws::ApiGateway::UsagePlans> instance

Gets all the usage plans of the caller's account.


=head2 GetVpcLink

=over

=item VpcLinkId => Str


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetVpcLink>

Returns: a L<Paws::ApiGateway::VpcLink> instance

Gets a specified VPC link under the caller's account in a region.


=head2 GetVpcLinks

=over

=item [Limit => Int]

=item [Position => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::GetVpcLinks>

Returns: a L<Paws::ApiGateway::VpcLinks> instance

Gets the VpcLinks collection under the caller's account in a selected
region.


=head2 ImportApiKeys

=over

=item Body => Str

=item Format => Str

=item [FailOnWarnings => Bool]


=back

Each argument is described in detail in: L<Paws::ApiGateway::ImportApiKeys>

Returns: a L<Paws::ApiGateway::ApiKeyIds> instance

Import API keys from an external source, such as a CSV-formatted file.


=head2 ImportDocumentationParts

=over

=item Body => Str

=item RestApiId => Str

=item [FailOnWarnings => Bool]

=item [Mode => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::ImportDocumentationParts>

Returns: a L<Paws::ApiGateway::DocumentationPartIds> instance




=head2 ImportRestApi

=over

=item Body => Str

=item [FailOnWarnings => Bool]

=item [Parameters => L<Paws::ApiGateway::MapOfStringToString>]


=back

Each argument is described in detail in: L<Paws::ApiGateway::ImportRestApi>

Returns: a L<Paws::ApiGateway::RestApi> instance

A feature of the API Gateway control service for creating a new API
from an external API definition file.


=head2 PutGatewayResponse

=over

=item ResponseType => Str

=item RestApiId => Str

=item [ResponseParameters => L<Paws::ApiGateway::MapOfStringToString>]

=item [ResponseTemplates => L<Paws::ApiGateway::MapOfStringToString>]

=item [StatusCode => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::PutGatewayResponse>

Returns: a L<Paws::ApiGateway::GatewayResponse> instance

Creates a customization of a GatewayResponse of a specified response
type and status code on the given RestApi.


=head2 PutIntegration

=over

=item HttpMethod => Str

=item ResourceId => Str

=item RestApiId => Str

=item Type => Str

=item [CacheKeyParameters => ArrayRef[Str|Undef]]

=item [CacheNamespace => Str]

=item [ConnectionId => Str]

=item [ConnectionType => Str]

=item [ContentHandling => Str]

=item [Credentials => Str]

=item [IntegrationHttpMethod => Str]

=item [PassthroughBehavior => Str]

=item [RequestParameters => L<Paws::ApiGateway::MapOfStringToString>]

=item [RequestTemplates => L<Paws::ApiGateway::MapOfStringToString>]

=item [TimeoutInMillis => Int]

=item [Uri => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::PutIntegration>

Returns: a L<Paws::ApiGateway::Integration> instance

Sets up a method's integration.


=head2 PutIntegrationResponse

=over

=item HttpMethod => Str

=item ResourceId => Str

=item RestApiId => Str

=item StatusCode => Str

=item [ContentHandling => Str]

=item [ResponseParameters => L<Paws::ApiGateway::MapOfStringToString>]

=item [ResponseTemplates => L<Paws::ApiGateway::MapOfStringToString>]

=item [SelectionPattern => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::PutIntegrationResponse>

Returns: a L<Paws::ApiGateway::IntegrationResponse> instance

Represents a put integration.


=head2 PutMethod

=over

=item AuthorizationType => Str

=item HttpMethod => Str

=item ResourceId => Str

=item RestApiId => Str

=item [ApiKeyRequired => Bool]

=item [AuthorizationScopes => ArrayRef[Str|Undef]]

=item [AuthorizerId => Str]

=item [OperationName => Str]

=item [RequestModels => L<Paws::ApiGateway::MapOfStringToString>]

=item [RequestParameters => L<Paws::ApiGateway::MapOfStringToBoolean>]

=item [RequestValidatorId => Str]


=back

Each argument is described in detail in: L<Paws::ApiGateway::PutMethod>

Returns: a L<Paws::ApiGateway::Method> instance

Add a method to an existing Resource resource.


=head2 PutMethodResponse

=over

=item HttpMethod => Str

=item ResourceId => Str

=item RestApiId => Str

=item StatusCode => Str

=item [ResponseModels => L<Paws::ApiGateway::MapOfStringToString>]

=item [ResponseParameters => L<Paws::ApiGateway::MapOfStringToBoolean>]


=back

Each argument is described in detail in: L<Paws::ApiGateway::PutMethodResponse>

Returns: a L<Paws::ApiGateway::MethodResponse> instance

Adds a MethodResponse to an existing Method resource.


=head2 PutRestApi

=over

=item Body => Str

=item RestApiId => Str

=item [FailOnWarnings => Bool]

=item [Mode => Str]

=item [Parameters => L<Paws::ApiGateway::MapOfStringToString>]


=back

Each argument is described in detail in: L<Paws::ApiGateway::PutRestApi>

Returns: a L<Paws::ApiGateway::RestApi> instance

A feature of the API Gateway control service for updating an existing
API with an input of external API definitions. The update can take the
form of merging the supplied definition into the existing API or
overwriting the existing API.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::ApiGateway::MapOfStringToString>


=back

Each argument is described in detail in: L<Paws::ApiGateway::TagResource>

Returns: nothing

Adds or updates a tag on a given resource.


=head2 TestInvokeAuthorizer

=over

=item AuthorizerId => Str

=item RestApiId => Str

=item [AdditionalContext => L<Paws::ApiGateway::MapOfStringToString>]

=item [Body => Str]

=item [Headers => L<Paws::ApiGateway::MapOfStringToString>]

=item [MultiValueHeaders => L<Paws::ApiGateway::MapOfStringToList>]

=item [PathWithQueryString => Str]

=item [StageVariables => L<Paws::ApiGateway::MapOfStringToString>]


=back

Each argument is described in detail in: L<Paws::ApiGateway::TestInvokeAuthorizer>

Returns: a L<Paws::ApiGateway::TestInvokeAuthorizerResponse> instance

Simulate the execution of an Authorizer in your RestApi with headers,
parameters, and an incoming request body.

Enable custom authorizers
(https://docs.aws.amazon.com/apigateway/latest/developerguide/use-custom-authorizer.html)


=head2 TestInvokeMethod

=over

=item HttpMethod => Str

=item ResourceId => Str

=item RestApiId => Str

=item [Body => Str]

=item [ClientCertificateId => Str]

=item [Headers => L<Paws::ApiGateway::MapOfStringToString>]

=item [MultiValueHeaders => L<Paws::ApiGateway::MapOfStringToList>]

=item [PathWithQueryString => Str]

=item [StageVariables => L<Paws::ApiGateway::MapOfStringToString>]


=back

Each argument is described in detail in: L<Paws::ApiGateway::TestInvokeMethod>

Returns: a L<Paws::ApiGateway::TestInvokeMethodResponse> instance

Simulate the execution of a Method in your RestApi with headers,
parameters, and an incoming request body.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UntagResource>

Returns: nothing

Removes a tag from a given resource.


=head2 UpdateAccount

=over

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateAccount>

Returns: a L<Paws::ApiGateway::Account> instance

Changes information about the current Account resource.


=head2 UpdateApiKey

=over

=item ApiKey => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateApiKey>

Returns: a L<Paws::ApiGateway::ApiKey> instance

Changes information about an ApiKey resource.


=head2 UpdateAuthorizer

=over

=item AuthorizerId => Str

=item RestApiId => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateAuthorizer>

Returns: a L<Paws::ApiGateway::Authorizer> instance

Updates an existing Authorizer resource.

AWS CLI
(https://docs.aws.amazon.com/cli/latest/reference/apigateway/update-authorizer.html)


=head2 UpdateBasePathMapping

=over

=item BasePath => Str

=item DomainName => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateBasePathMapping>

Returns: a L<Paws::ApiGateway::BasePathMapping> instance

Changes information about the BasePathMapping resource.


=head2 UpdateClientCertificate

=over

=item ClientCertificateId => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateClientCertificate>

Returns: a L<Paws::ApiGateway::ClientCertificate> instance

Changes information about an ClientCertificate resource.


=head2 UpdateDeployment

=over

=item DeploymentId => Str

=item RestApiId => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateDeployment>

Returns: a L<Paws::ApiGateway::Deployment> instance

Changes information about a Deployment resource.


=head2 UpdateDocumentationPart

=over

=item DocumentationPartId => Str

=item RestApiId => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateDocumentationPart>

Returns: a L<Paws::ApiGateway::DocumentationPart> instance




=head2 UpdateDocumentationVersion

=over

=item DocumentationVersion => Str

=item RestApiId => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateDocumentationVersion>

Returns: a L<Paws::ApiGateway::DocumentationVersion> instance




=head2 UpdateDomainName

=over

=item DomainName => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateDomainName>

Returns: a L<Paws::ApiGateway::DomainName> instance

Changes information about the DomainName resource.


=head2 UpdateGatewayResponse

=over

=item ResponseType => Str

=item RestApiId => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateGatewayResponse>

Returns: a L<Paws::ApiGateway::GatewayResponse> instance

Updates a GatewayResponse of a specified response type on the given
RestApi.


=head2 UpdateIntegration

=over

=item HttpMethod => Str

=item ResourceId => Str

=item RestApiId => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateIntegration>

Returns: a L<Paws::ApiGateway::Integration> instance

Represents an update integration.


=head2 UpdateIntegrationResponse

=over

=item HttpMethod => Str

=item ResourceId => Str

=item RestApiId => Str

=item StatusCode => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateIntegrationResponse>

Returns: a L<Paws::ApiGateway::IntegrationResponse> instance

Represents an update integration response.


=head2 UpdateMethod

=over

=item HttpMethod => Str

=item ResourceId => Str

=item RestApiId => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateMethod>

Returns: a L<Paws::ApiGateway::Method> instance

Updates an existing Method resource.


=head2 UpdateMethodResponse

=over

=item HttpMethod => Str

=item ResourceId => Str

=item RestApiId => Str

=item StatusCode => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateMethodResponse>

Returns: a L<Paws::ApiGateway::MethodResponse> instance

Updates an existing MethodResponse resource.


=head2 UpdateModel

=over

=item ModelName => Str

=item RestApiId => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateModel>

Returns: a L<Paws::ApiGateway::Model> instance

Changes information about a model.


=head2 UpdateRequestValidator

=over

=item RequestValidatorId => Str

=item RestApiId => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateRequestValidator>

Returns: a L<Paws::ApiGateway::RequestValidator> instance

Updates a RequestValidator of a given RestApi.


=head2 UpdateResource

=over

=item ResourceId => Str

=item RestApiId => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateResource>

Returns: a L<Paws::ApiGateway::Resource> instance

Changes information about a Resource resource.


=head2 UpdateRestApi

=over

=item RestApiId => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateRestApi>

Returns: a L<Paws::ApiGateway::RestApi> instance

Changes information about the specified API.


=head2 UpdateStage

=over

=item RestApiId => Str

=item StageName => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateStage>

Returns: a L<Paws::ApiGateway::Stage> instance

Changes information about a Stage resource.


=head2 UpdateUsage

=over

=item KeyId => Str

=item UsagePlanId => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateUsage>

Returns: a L<Paws::ApiGateway::Usage> instance

Grants a temporary extension to the remaining quota of a usage plan
associated with a specified API key.


=head2 UpdateUsagePlan

=over

=item UsagePlanId => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateUsagePlan>

Returns: a L<Paws::ApiGateway::UsagePlan> instance

Updates a usage plan of a given plan Id.


=head2 UpdateVpcLink

=over

=item VpcLinkId => Str

=item [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]]


=back

Each argument is described in detail in: L<Paws::ApiGateway::UpdateVpcLink>

Returns: a L<Paws::ApiGateway::VpcLink> instance

Updates an existing VpcLink of a specified identifier.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllApiKeys(sub { },[CustomerId => Str, IncludeValues => Bool, Limit => Int, NameQuery => Str, Position => Str])

=head2 GetAllApiKeys([CustomerId => Str, IncludeValues => Bool, Limit => Int, NameQuery => Str, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::ApiKeys> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllAuthorizers(sub { },RestApiId => Str, [Limit => Int, Position => Str])

=head2 GetAllAuthorizers(RestApiId => Str, [Limit => Int, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::Authorizers> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllBasePathMappings(sub { },DomainName => Str, [Limit => Int, Position => Str])

=head2 GetAllBasePathMappings(DomainName => Str, [Limit => Int, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::BasePathMappings> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllClientCertificates(sub { },[Limit => Int, Position => Str])

=head2 GetAllClientCertificates([Limit => Int, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::ClientCertificates> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDeployments(sub { },RestApiId => Str, [Limit => Int, Position => Str])

=head2 GetAllDeployments(RestApiId => Str, [Limit => Int, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::Deployments> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDocumentationParts(sub { },RestApiId => Str, [Limit => Int, LocationStatus => Str, NameQuery => Str, Path => Str, Position => Str, Type => Str])

=head2 GetAllDocumentationParts(RestApiId => Str, [Limit => Int, LocationStatus => Str, NameQuery => Str, Path => Str, Position => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::DocumentationParts> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDocumentationVersions(sub { },RestApiId => Str, [Limit => Int, Position => Str])

=head2 GetAllDocumentationVersions(RestApiId => Str, [Limit => Int, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::DocumentationVersions> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDomainNames(sub { },[Limit => Int, Position => Str])

=head2 GetAllDomainNames([Limit => Int, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::DomainNames> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllGatewayResponses(sub { },RestApiId => Str, [Limit => Int, Position => Str])

=head2 GetAllGatewayResponses(RestApiId => Str, [Limit => Int, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::GatewayResponses> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllModels(sub { },RestApiId => Str, [Limit => Int, Position => Str])

=head2 GetAllModels(RestApiId => Str, [Limit => Int, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::Models> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllRequestValidators(sub { },RestApiId => Str, [Limit => Int, Position => Str])

=head2 GetAllRequestValidators(RestApiId => Str, [Limit => Int, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::RequestValidators> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllResources(sub { },RestApiId => Str, [Embed => ArrayRef[Str|Undef], Limit => Int, Position => Str])

=head2 GetAllResources(RestApiId => Str, [Embed => ArrayRef[Str|Undef], Limit => Int, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::Resources> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllRestApis(sub { },[Limit => Int, Position => Str])

=head2 GetAllRestApis([Limit => Int, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::RestApis> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllSdkTypes(sub { },[Limit => Int, Position => Str])

=head2 GetAllSdkTypes([Limit => Int, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::SdkTypes> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllUsage(sub { },EndDate => Str, StartDate => Str, UsagePlanId => Str, [KeyId => Str, Limit => Int, Position => Str])

=head2 GetAllUsage(EndDate => Str, StartDate => Str, UsagePlanId => Str, [KeyId => Str, Limit => Int, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::Usage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllUsagePlanKeys(sub { },UsagePlanId => Str, [Limit => Int, NameQuery => Str, Position => Str])

=head2 GetAllUsagePlanKeys(UsagePlanId => Str, [Limit => Int, NameQuery => Str, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::UsagePlanKeys> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllUsagePlans(sub { },[KeyId => Str, Limit => Int, Position => Str])

=head2 GetAllUsagePlans([KeyId => Str, Limit => Int, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::UsagePlans> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllVpcLinks(sub { },[Limit => Int, Position => Str])

=head2 GetAllVpcLinks([Limit => Int, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::VpcLinks> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

