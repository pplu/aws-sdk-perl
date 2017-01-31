package Paws::ApiGateway;
  use Moose;
  sub service { 'apigateway' }
  sub version { '2015-07-09' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller', 'Paws::Net::RestJsonResponse';

  
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
  
  sub GetAllApiKeys {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetApiKeys(@_);

    if (not defined $callback) {
      while ($result->position) {
        $result = $self->GetApiKeys(@_, position => $result->position);
        push @{ $result->items }, @{ $result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $result = $self->GetApiKeys(@_, position => $result->position);
        $callback->($_ => 'items') foreach (@{ $result->items });
      }
    }

    return undef
  }
  sub GetAllBasePathMappings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetBasePathMappings(@_);

    if (not defined $callback) {
      while ($result->position) {
        $result = $self->GetBasePathMappings(@_, position => $result->position);
        push @{ $result->items }, @{ $result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $result = $self->GetBasePathMappings(@_, position => $result->position);
        $callback->($_ => 'items') foreach (@{ $result->items });
      }
    }

    return undef
  }
  sub GetAllClientCertificates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetClientCertificates(@_);

    if (not defined $callback) {
      while ($result->position) {
        $result = $self->GetClientCertificates(@_, position => $result->position);
        push @{ $result->items }, @{ $result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $result = $self->GetClientCertificates(@_, position => $result->position);
        $callback->($_ => 'items') foreach (@{ $result->items });
      }
    }

    return undef
  }
  sub GetAllDeployments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDeployments(@_);

    if (not defined $callback) {
      while ($result->position) {
        $result = $self->GetDeployments(@_, position => $result->position);
        push @{ $result->items }, @{ $result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $result = $self->GetDeployments(@_, position => $result->position);
        $callback->($_ => 'items') foreach (@{ $result->items });
      }
    }

    return undef
  }
  sub GetAllDomainNames {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDomainNames(@_);

    if (not defined $callback) {
      while ($result->position) {
        $result = $self->GetDomainNames(@_, position => $result->position);
        push @{ $result->items }, @{ $result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $result = $self->GetDomainNames(@_, position => $result->position);
        $callback->($_ => 'items') foreach (@{ $result->items });
      }
    }

    return undef
  }
  sub GetAllModels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetModels(@_);

    if (not defined $callback) {
      while ($result->position) {
        $result = $self->GetModels(@_, position => $result->position);
        push @{ $result->items }, @{ $result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $result = $self->GetModels(@_, position => $result->position);
        $callback->($_ => 'items') foreach (@{ $result->items });
      }
    }

    return undef
  }
  sub GetAllResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetResources(@_);

    if (not defined $callback) {
      while ($result->position) {
        $result = $self->GetResources(@_, position => $result->position);
        push @{ $result->items }, @{ $result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $result = $self->GetResources(@_, position => $result->position);
        $callback->($_ => 'items') foreach (@{ $result->items });
      }
    }

    return undef
  }
  sub GetAllRestApis {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetRestApis(@_);

    if (not defined $callback) {
      while ($result->position) {
        $result = $self->GetRestApis(@_, position => $result->position);
        push @{ $result->items }, @{ $result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $result = $self->GetRestApis(@_, position => $result->position);
        $callback->($_ => 'items') foreach (@{ $result->items });
      }
    }

    return undef
  }
  sub GetAllUsage {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetUsage(@_);

    if (not defined $callback) {
      while ($result->position) {
        $result = $self->GetUsage(@_, position => $result->position);
        push @{ $result->items }, @{ $result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $result = $self->GetUsage(@_, position => $result->position);
        $callback->($_ => 'items') foreach (@{ $result->items });
      }
    }

    return undef
  }
  sub GetAllUsagePlanKeys {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetUsagePlanKeys(@_);

    if (not defined $callback) {
      while ($result->position) {
        $result = $self->GetUsagePlanKeys(@_, position => $result->position);
        push @{ $result->items }, @{ $result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $result = $self->GetUsagePlanKeys(@_, position => $result->position);
        $callback->($_ => 'items') foreach (@{ $result->items });
      }
    }

    return undef
  }
  sub GetAllUsagePlans {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetUsagePlans(@_);

    if (not defined $callback) {
      while ($result->position) {
        $result = $self->GetUsagePlans(@_, position => $result->position);
        push @{ $result->items }, @{ $result->items };
      }
      return $result;
    } else {
      while ($result->position) {
        $result = $self->GetUsagePlans(@_, position => $result->position);
        $callback->($_ => 'items') foreach (@{ $result->items });
      }
    }

    return undef
  }


  sub operations { qw/CreateApiKey CreateAuthorizer CreateBasePathMapping CreateDeployment CreateDocumentationPart CreateDocumentationVersion CreateDomainName CreateModel CreateResource CreateRestApi CreateStage CreateUsagePlan CreateUsagePlanKey DeleteApiKey DeleteAuthorizer DeleteBasePathMapping DeleteClientCertificate DeleteDeployment DeleteDocumentationPart DeleteDocumentationVersion DeleteDomainName DeleteIntegration DeleteIntegrationResponse DeleteMethod DeleteMethodResponse DeleteModel DeleteResource DeleteRestApi DeleteStage DeleteUsagePlan DeleteUsagePlanKey FlushStageAuthorizersCache FlushStageCache GenerateClientCertificate GetAccount GetApiKey GetApiKeys GetAuthorizer GetAuthorizers GetBasePathMapping GetBasePathMappings GetClientCertificate GetClientCertificates GetDeployment GetDeployments GetDocumentationPart GetDocumentationParts GetDocumentationVersion GetDocumentationVersions GetDomainName GetDomainNames GetExport GetIntegration GetIntegrationResponse GetMethod GetMethodResponse GetModel GetModels GetModelTemplate GetResource GetResources GetRestApi GetRestApis GetSdk GetSdkType GetSdkTypes GetStage GetStages GetUsage GetUsagePlan GetUsagePlanKey GetUsagePlanKeys GetUsagePlans ImportApiKeys ImportDocumentationParts ImportRestApi PutIntegration PutIntegrationResponse PutMethod PutMethodResponse PutRestApi TestInvokeAuthorizer TestInvokeMethod UpdateAccount UpdateApiKey UpdateAuthorizer UpdateBasePathMapping UpdateClientCertificate UpdateDeployment UpdateDocumentationPart UpdateDocumentationVersion UpdateDomainName UpdateIntegration UpdateIntegrationResponse UpdateMethod UpdateMethodResponse UpdateModel UpdateResource UpdateRestApi UpdateStage UpdateUsage UpdateUsagePlan / }

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
scalable mobile and web application back ends. Amazon API Gateway
allows developers to securely connect mobile and web applications to
APIs that run on AWS Lambda, Amazon EC2, or other publicly addressable
web services that are hosted outside of AWS.

=head1 METHODS

=head2 CreateApiKey([CustomerId => Str, Description => Str, Enabled => Bool, GenerateDistinctId => Bool, Name => Str, StageKeys => ArrayRef[L<Paws::ApiGateway::StageKey>], Value => Str])

Each argument is described in detail in: L<Paws::ApiGateway::CreateApiKey>

Returns: a L<Paws::ApiGateway::ApiKey> instance

  Create an ApiKey resource.

AWS CLI


=head2 CreateAuthorizer(IdentitySource => Str, Name => Str, RestApiId => Str, Type => Str, [AuthorizerCredentials => Str, AuthorizerResultTtlInSeconds => Int, AuthorizerUri => Str, AuthType => Str, IdentityValidationExpression => Str, ProviderARNs => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::ApiGateway::CreateAuthorizer>

Returns: a L<Paws::ApiGateway::Authorizer> instance

  Adds a new Authorizer resource to an existing RestApi resource.

AWS CLI


=head2 CreateBasePathMapping(DomainName => Str, RestApiId => Str, [BasePath => Str, Stage => Str])

Each argument is described in detail in: L<Paws::ApiGateway::CreateBasePathMapping>

Returns: a L<Paws::ApiGateway::BasePathMapping> instance

  Creates a new BasePathMapping resource.


=head2 CreateDeployment(RestApiId => Str, [CacheClusterEnabled => Bool, CacheClusterSize => Str, Description => Str, StageDescription => Str, StageName => Str, Variables => L<Paws::ApiGateway::MapOfStringToString>])

Each argument is described in detail in: L<Paws::ApiGateway::CreateDeployment>

Returns: a L<Paws::ApiGateway::Deployment> instance

  Creates a Deployment resource, which makes a specified RestApi callable
over the internet.


=head2 CreateDocumentationPart(Location => L<Paws::ApiGateway::DocumentationPartLocation>, Properties => Str, RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::CreateDocumentationPart>

Returns: a L<Paws::ApiGateway::DocumentationPart> instance

  


=head2 CreateDocumentationVersion(DocumentationVersion => Str, RestApiId => Str, [Description => Str, StageName => Str])

Each argument is described in detail in: L<Paws::ApiGateway::CreateDocumentationVersion>

Returns: a L<Paws::ApiGateway::DocumentationVersion> instance

  


=head2 CreateDomainName(CertificateBody => Str, CertificateChain => Str, CertificateName => Str, CertificatePrivateKey => Str, DomainName => Str)

Each argument is described in detail in: L<Paws::ApiGateway::CreateDomainName>

Returns: a L<Paws::ApiGateway::DomainName> instance

  Creates a new domain name.


=head2 CreateModel(ContentType => Str, Name => Str, RestApiId => Str, [Description => Str, Schema => Str])

Each argument is described in detail in: L<Paws::ApiGateway::CreateModel>

Returns: a L<Paws::ApiGateway::Model> instance

  Adds a new Model resource to an existing RestApi resource.


=head2 CreateResource(ParentId => Str, PathPart => Str, RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::CreateResource>

Returns: a L<Paws::ApiGateway::Resource> instance

  Creates a Resource resource.


=head2 CreateRestApi(Name => Str, [BinaryMediaTypes => ArrayRef[Str|Undef], CloneFrom => Str, Description => Str, Version => Str])

Each argument is described in detail in: L<Paws::ApiGateway::CreateRestApi>

Returns: a L<Paws::ApiGateway::RestApi> instance

  Creates a new RestApi resource.


=head2 CreateStage(DeploymentId => Str, RestApiId => Str, StageName => Str, [CacheClusterEnabled => Bool, CacheClusterSize => Str, Description => Str, DocumentationVersion => Str, Variables => L<Paws::ApiGateway::MapOfStringToString>])

Each argument is described in detail in: L<Paws::ApiGateway::CreateStage>

Returns: a L<Paws::ApiGateway::Stage> instance

  Creates a new Stage resource that references a pre-existing Deployment
for the API.


=head2 CreateUsagePlan(Name => Str, [ApiStages => ArrayRef[L<Paws::ApiGateway::ApiStage>], Description => Str, Quota => L<Paws::ApiGateway::QuotaSettings>, Throttle => L<Paws::ApiGateway::ThrottleSettings>])

Each argument is described in detail in: L<Paws::ApiGateway::CreateUsagePlan>

Returns: a L<Paws::ApiGateway::UsagePlan> instance

  Creates a usage plan with the throttle and quota limits, as well as the
associated API stages, specified in the payload.


=head2 CreateUsagePlanKey(KeyId => Str, KeyType => Str, UsagePlanId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::CreateUsagePlanKey>

Returns: a L<Paws::ApiGateway::UsagePlanKey> instance

  Creates a usage plan key for adding an existing API key to a usage
plan.


=head2 DeleteApiKey(ApiKey => Str)

Each argument is described in detail in: L<Paws::ApiGateway::DeleteApiKey>

Returns: nothing

  Deletes the ApiKey resource.


=head2 DeleteAuthorizer(AuthorizerId => Str, RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::DeleteAuthorizer>

Returns: nothing

  Deletes an existing Authorizer resource.

AWS CLI


=head2 DeleteBasePathMapping(BasePath => Str, DomainName => Str)

Each argument is described in detail in: L<Paws::ApiGateway::DeleteBasePathMapping>

Returns: nothing

  Deletes the BasePathMapping resource.


=head2 DeleteClientCertificate(ClientCertificateId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::DeleteClientCertificate>

Returns: nothing

  Deletes the ClientCertificate resource.


=head2 DeleteDeployment(DeploymentId => Str, RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::DeleteDeployment>

Returns: nothing

  Deletes a Deployment resource. Deleting a deployment will only succeed
if there are no Stage resources associated with it.


=head2 DeleteDocumentationPart(DocumentationPartId => Str, RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::DeleteDocumentationPart>

Returns: nothing

  


=head2 DeleteDocumentationVersion(DocumentationVersion => Str, RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::DeleteDocumentationVersion>

Returns: nothing

  


=head2 DeleteDomainName(DomainName => Str)

Each argument is described in detail in: L<Paws::ApiGateway::DeleteDomainName>

Returns: nothing

  Deletes the DomainName resource.


=head2 DeleteIntegration(HttpMethod => Str, ResourceId => Str, RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::DeleteIntegration>

Returns: nothing

  Represents a delete integration.


=head2 DeleteIntegrationResponse(HttpMethod => Str, ResourceId => Str, RestApiId => Str, StatusCode => Str)

Each argument is described in detail in: L<Paws::ApiGateway::DeleteIntegrationResponse>

Returns: nothing

  Represents a delete integration response.


=head2 DeleteMethod(HttpMethod => Str, ResourceId => Str, RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::DeleteMethod>

Returns: nothing

  Deletes an existing Method resource.


=head2 DeleteMethodResponse(HttpMethod => Str, ResourceId => Str, RestApiId => Str, StatusCode => Str)

Each argument is described in detail in: L<Paws::ApiGateway::DeleteMethodResponse>

Returns: nothing

  Deletes an existing MethodResponse resource.


=head2 DeleteModel(ModelName => Str, RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::DeleteModel>

Returns: nothing

  Deletes a model.


=head2 DeleteResource(ResourceId => Str, RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::DeleteResource>

Returns: nothing

  Deletes a Resource resource.


=head2 DeleteRestApi(RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::DeleteRestApi>

Returns: nothing

  Deletes the specified API.


=head2 DeleteStage(RestApiId => Str, StageName => Str)

Each argument is described in detail in: L<Paws::ApiGateway::DeleteStage>

Returns: nothing

  Deletes a Stage resource.


=head2 DeleteUsagePlan(UsagePlanId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::DeleteUsagePlan>

Returns: nothing

  Deletes a usage plan of a given plan Id.


=head2 DeleteUsagePlanKey(KeyId => Str, UsagePlanId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::DeleteUsagePlanKey>

Returns: nothing

  Deletes a usage plan key and remove the underlying API key from the
associated usage plan.


=head2 FlushStageAuthorizersCache(RestApiId => Str, StageName => Str)

Each argument is described in detail in: L<Paws::ApiGateway::FlushStageAuthorizersCache>

Returns: nothing

  Flushes all authorizer cache entries on a stage.


=head2 FlushStageCache(RestApiId => Str, StageName => Str)

Each argument is described in detail in: L<Paws::ApiGateway::FlushStageCache>

Returns: nothing

  Flushes a stage's cache.


=head2 GenerateClientCertificate([Description => Str])

Each argument is described in detail in: L<Paws::ApiGateway::GenerateClientCertificate>

Returns: a L<Paws::ApiGateway::ClientCertificate> instance

  Generates a ClientCertificate resource.


=head2 GetAccount()

Each argument is described in detail in: L<Paws::ApiGateway::GetAccount>

Returns: a L<Paws::ApiGateway::Account> instance

  Gets information about the current Account resource.


=head2 GetApiKey(ApiKey => Str, [IncludeValue => Bool])

Each argument is described in detail in: L<Paws::ApiGateway::GetApiKey>

Returns: a L<Paws::ApiGateway::ApiKey> instance

  Gets information about the current ApiKey resource.


=head2 GetApiKeys([CustomerId => Str, IncludeValues => Bool, Limit => Int, NameQuery => Str, Position => Str])

Each argument is described in detail in: L<Paws::ApiGateway::GetApiKeys>

Returns: a L<Paws::ApiGateway::ApiKeys> instance

  Gets information about the current ApiKeys resource.


=head2 GetAuthorizer(AuthorizerId => Str, RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::GetAuthorizer>

Returns: a L<Paws::ApiGateway::Authorizer> instance

  Describe an existing Authorizer resource.

AWS CLI


=head2 GetAuthorizers(RestApiId => Str, [Limit => Int, Position => Str])

Each argument is described in detail in: L<Paws::ApiGateway::GetAuthorizers>

Returns: a L<Paws::ApiGateway::Authorizers> instance

  Describe an existing Authorizers resource.

AWS CLI


=head2 GetBasePathMapping(BasePath => Str, DomainName => Str)

Each argument is described in detail in: L<Paws::ApiGateway::GetBasePathMapping>

Returns: a L<Paws::ApiGateway::BasePathMapping> instance

  Describe a BasePathMapping resource.


=head2 GetBasePathMappings(DomainName => Str, [Limit => Int, Position => Str])

Each argument is described in detail in: L<Paws::ApiGateway::GetBasePathMappings>

Returns: a L<Paws::ApiGateway::BasePathMappings> instance

  Represents a collection of BasePathMapping resources.


=head2 GetClientCertificate(ClientCertificateId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::GetClientCertificate>

Returns: a L<Paws::ApiGateway::ClientCertificate> instance

  Gets information about the current ClientCertificate resource.


=head2 GetClientCertificates([Limit => Int, Position => Str])

Each argument is described in detail in: L<Paws::ApiGateway::GetClientCertificates>

Returns: a L<Paws::ApiGateway::ClientCertificates> instance

  Gets a collection of ClientCertificate resources.


=head2 GetDeployment(DeploymentId => Str, RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::GetDeployment>

Returns: a L<Paws::ApiGateway::Deployment> instance

  Gets information about a Deployment resource.


=head2 GetDeployments(RestApiId => Str, [Limit => Int, Position => Str])

Each argument is described in detail in: L<Paws::ApiGateway::GetDeployments>

Returns: a L<Paws::ApiGateway::Deployments> instance

  Gets information about a Deployments collection.


=head2 GetDocumentationPart(DocumentationPartId => Str, RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::GetDocumentationPart>

Returns: a L<Paws::ApiGateway::DocumentationPart> instance

  


=head2 GetDocumentationParts(RestApiId => Str, [Limit => Int, NameQuery => Str, Path => Str, Position => Str, Type => Str])

Each argument is described in detail in: L<Paws::ApiGateway::GetDocumentationParts>

Returns: a L<Paws::ApiGateway::DocumentationParts> instance

  


=head2 GetDocumentationVersion(DocumentationVersion => Str, RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::GetDocumentationVersion>

Returns: a L<Paws::ApiGateway::DocumentationVersion> instance

  


=head2 GetDocumentationVersions(RestApiId => Str, [Limit => Int, Position => Str])

Each argument is described in detail in: L<Paws::ApiGateway::GetDocumentationVersions>

Returns: a L<Paws::ApiGateway::DocumentationVersions> instance

  


=head2 GetDomainName(DomainName => Str)

Each argument is described in detail in: L<Paws::ApiGateway::GetDomainName>

Returns: a L<Paws::ApiGateway::DomainName> instance

  Represents a domain name that is contained in a simpler, more intuitive
URL that can be called.


=head2 GetDomainNames([Limit => Int, Position => Str])

Each argument is described in detail in: L<Paws::ApiGateway::GetDomainNames>

Returns: a L<Paws::ApiGateway::DomainNames> instance

  Represents a collection of DomainName resources.


=head2 GetExport(ExportType => Str, RestApiId => Str, StageName => Str, [Accepts => Str, Parameters => L<Paws::ApiGateway::MapOfStringToString>])

Each argument is described in detail in: L<Paws::ApiGateway::GetExport>

Returns: a L<Paws::ApiGateway::ExportResponse> instance

  Exports a deployed version of a RestApi in a specified format.


=head2 GetIntegration(HttpMethod => Str, ResourceId => Str, RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::GetIntegration>

Returns: a L<Paws::ApiGateway::Integration> instance

  Represents a get integration.


=head2 GetIntegrationResponse(HttpMethod => Str, ResourceId => Str, RestApiId => Str, StatusCode => Str)

Each argument is described in detail in: L<Paws::ApiGateway::GetIntegrationResponse>

Returns: a L<Paws::ApiGateway::IntegrationResponse> instance

  Represents a get integration response.


=head2 GetMethod(HttpMethod => Str, ResourceId => Str, RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::GetMethod>

Returns: a L<Paws::ApiGateway::Method> instance

  Describe an existing Method resource.


=head2 GetMethodResponse(HttpMethod => Str, ResourceId => Str, RestApiId => Str, StatusCode => Str)

Each argument is described in detail in: L<Paws::ApiGateway::GetMethodResponse>

Returns: a L<Paws::ApiGateway::MethodResponse> instance

  Describes a MethodResponse resource.


=head2 GetModel(ModelName => Str, RestApiId => Str, [Flatten => Bool])

Each argument is described in detail in: L<Paws::ApiGateway::GetModel>

Returns: a L<Paws::ApiGateway::Model> instance

  Describes an existing model defined for a RestApi resource.


=head2 GetModels(RestApiId => Str, [Limit => Int, Position => Str])

Each argument is described in detail in: L<Paws::ApiGateway::GetModels>

Returns: a L<Paws::ApiGateway::Models> instance

  Describes existing Models defined for a RestApi resource.


=head2 GetModelTemplate(ModelName => Str, RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::GetModelTemplate>

Returns: a L<Paws::ApiGateway::Template> instance

  Generates a sample mapping template that can be used to transform a
payload into the structure of a model.


=head2 GetResource(ResourceId => Str, RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::GetResource>

Returns: a L<Paws::ApiGateway::Resource> instance

  Lists information about a resource.


=head2 GetResources(RestApiId => Str, [Limit => Int, Position => Str])

Each argument is described in detail in: L<Paws::ApiGateway::GetResources>

Returns: a L<Paws::ApiGateway::Resources> instance

  Lists information about a collection of Resource resources.


=head2 GetRestApi(RestApiId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::GetRestApi>

Returns: a L<Paws::ApiGateway::RestApi> instance

  Lists the RestApi resource in the collection.


=head2 GetRestApis([Limit => Int, Position => Str])

Each argument is described in detail in: L<Paws::ApiGateway::GetRestApis>

Returns: a L<Paws::ApiGateway::RestApis> instance

  Lists the RestApis resources for your collection.


=head2 GetSdk(RestApiId => Str, SdkType => Str, StageName => Str, [Parameters => L<Paws::ApiGateway::MapOfStringToString>])

Each argument is described in detail in: L<Paws::ApiGateway::GetSdk>

Returns: a L<Paws::ApiGateway::SdkResponse> instance

  Generates a client SDK for a RestApi and Stage.


=head2 GetSdkType(Id => Str)

Each argument is described in detail in: L<Paws::ApiGateway::GetSdkType>

Returns: a L<Paws::ApiGateway::SdkType> instance

  


=head2 GetSdkTypes([Limit => Int, Position => Str])

Each argument is described in detail in: L<Paws::ApiGateway::GetSdkTypes>

Returns: a L<Paws::ApiGateway::SdkTypes> instance

  


=head2 GetStage(RestApiId => Str, StageName => Str)

Each argument is described in detail in: L<Paws::ApiGateway::GetStage>

Returns: a L<Paws::ApiGateway::Stage> instance

  Gets information about a Stage resource.


=head2 GetStages(RestApiId => Str, [DeploymentId => Str])

Each argument is described in detail in: L<Paws::ApiGateway::GetStages>

Returns: a L<Paws::ApiGateway::Stages> instance

  Gets information about one or more Stage resources.


=head2 GetUsage(EndDate => Str, StartDate => Str, UsagePlanId => Str, [KeyId => Str, Limit => Int, Position => Str])

Each argument is described in detail in: L<Paws::ApiGateway::GetUsage>

Returns: a L<Paws::ApiGateway::Usage> instance

  Gets the usage data of a usage plan in a specified time interval.


=head2 GetUsagePlan(UsagePlanId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::GetUsagePlan>

Returns: a L<Paws::ApiGateway::UsagePlan> instance

  Gets a usage plan of a given plan identifier.


=head2 GetUsagePlanKey(KeyId => Str, UsagePlanId => Str)

Each argument is described in detail in: L<Paws::ApiGateway::GetUsagePlanKey>

Returns: a L<Paws::ApiGateway::UsagePlanKey> instance

  Gets a usage plan key of a given key identifier.


=head2 GetUsagePlanKeys(UsagePlanId => Str, [Limit => Int, NameQuery => Str, Position => Str])

Each argument is described in detail in: L<Paws::ApiGateway::GetUsagePlanKeys>

Returns: a L<Paws::ApiGateway::UsagePlanKeys> instance

  Gets all the usage plan keys representing the API keys added to a
specified usage plan.


=head2 GetUsagePlans([KeyId => Str, Limit => Int, Position => Str])

Each argument is described in detail in: L<Paws::ApiGateway::GetUsagePlans>

Returns: a L<Paws::ApiGateway::UsagePlans> instance

  Gets all the usage plans of the caller's account.


=head2 ImportApiKeys(Body => Str, Format => Str, [FailOnWarnings => Bool])

Each argument is described in detail in: L<Paws::ApiGateway::ImportApiKeys>

Returns: a L<Paws::ApiGateway::ApiKeyIds> instance

  Import API keys from an external source, such as a CSV-formatted file.


=head2 ImportDocumentationParts(Body => Str, RestApiId => Str, [FailOnWarnings => Bool, Mode => Str])

Each argument is described in detail in: L<Paws::ApiGateway::ImportDocumentationParts>

Returns: a L<Paws::ApiGateway::DocumentationPartIds> instance

  


=head2 ImportRestApi(Body => Str, [FailOnWarnings => Bool, Parameters => L<Paws::ApiGateway::MapOfStringToString>])

Each argument is described in detail in: L<Paws::ApiGateway::ImportRestApi>

Returns: a L<Paws::ApiGateway::RestApi> instance

  A feature of the Amazon API Gateway control service for creating a new
API from an external API definition file.


=head2 PutIntegration(HttpMethod => Str, ResourceId => Str, RestApiId => Str, Type => Str, [CacheKeyParameters => ArrayRef[Str|Undef], CacheNamespace => Str, ContentHandling => Str, Credentials => Str, IntegrationHttpMethod => Str, PassthroughBehavior => Str, RequestParameters => L<Paws::ApiGateway::MapOfStringToString>, RequestTemplates => L<Paws::ApiGateway::MapOfStringToString>, Uri => Str])

Each argument is described in detail in: L<Paws::ApiGateway::PutIntegration>

Returns: a L<Paws::ApiGateway::Integration> instance

  Represents a put integration.


=head2 PutIntegrationResponse(HttpMethod => Str, ResourceId => Str, RestApiId => Str, StatusCode => Str, [ContentHandling => Str, ResponseParameters => L<Paws::ApiGateway::MapOfStringToString>, ResponseTemplates => L<Paws::ApiGateway::MapOfStringToString>, SelectionPattern => Str])

Each argument is described in detail in: L<Paws::ApiGateway::PutIntegrationResponse>

Returns: a L<Paws::ApiGateway::IntegrationResponse> instance

  Represents a put integration.


=head2 PutMethod(AuthorizationType => Str, HttpMethod => Str, ResourceId => Str, RestApiId => Str, [ApiKeyRequired => Bool, AuthorizerId => Str, OperationName => Str, RequestModels => L<Paws::ApiGateway::MapOfStringToString>, RequestParameters => L<Paws::ApiGateway::MapOfStringToBoolean>])

Each argument is described in detail in: L<Paws::ApiGateway::PutMethod>

Returns: a L<Paws::ApiGateway::Method> instance

  Add a method to an existing Resource resource.


=head2 PutMethodResponse(HttpMethod => Str, ResourceId => Str, RestApiId => Str, StatusCode => Str, [ResponseModels => L<Paws::ApiGateway::MapOfStringToString>, ResponseParameters => L<Paws::ApiGateway::MapOfStringToBoolean>])

Each argument is described in detail in: L<Paws::ApiGateway::PutMethodResponse>

Returns: a L<Paws::ApiGateway::MethodResponse> instance

  Adds a MethodResponse to an existing Method resource.


=head2 PutRestApi(Body => Str, RestApiId => Str, [FailOnWarnings => Bool, Mode => Str, Parameters => L<Paws::ApiGateway::MapOfStringToString>])

Each argument is described in detail in: L<Paws::ApiGateway::PutRestApi>

Returns: a L<Paws::ApiGateway::RestApi> instance

  A feature of the Amazon API Gateway control service for updating an
existing API with an input of external API definitions. The update can
take the form of merging the supplied definition into the existing API
or overwriting the existing API.


=head2 TestInvokeAuthorizer(AuthorizerId => Str, RestApiId => Str, [AdditionalContext => L<Paws::ApiGateway::MapOfStringToString>, Body => Str, Headers => L<Paws::ApiGateway::MapOfHeaderValues>, PathWithQueryString => Str, StageVariables => L<Paws::ApiGateway::MapOfStringToString>])

Each argument is described in detail in: L<Paws::ApiGateway::TestInvokeAuthorizer>

Returns: a L<Paws::ApiGateway::TestInvokeAuthorizerResponse> instance

  Simulate the execution of an Authorizer in your RestApi with headers,
parameters, and an incoming request body.

Enable custom authorizers


=head2 TestInvokeMethod(HttpMethod => Str, ResourceId => Str, RestApiId => Str, [Body => Str, ClientCertificateId => Str, Headers => L<Paws::ApiGateway::MapOfHeaderValues>, PathWithQueryString => Str, StageVariables => L<Paws::ApiGateway::MapOfStringToString>])

Each argument is described in detail in: L<Paws::ApiGateway::TestInvokeMethod>

Returns: a L<Paws::ApiGateway::TestInvokeMethodResponse> instance

  Simulate the execution of a Method in your RestApi with headers,
parameters, and an incoming request body.


=head2 UpdateAccount([PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]])

Each argument is described in detail in: L<Paws::ApiGateway::UpdateAccount>

Returns: a L<Paws::ApiGateway::Account> instance

  Changes information about the current Account resource.


=head2 UpdateApiKey(ApiKey => Str, [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]])

Each argument is described in detail in: L<Paws::ApiGateway::UpdateApiKey>

Returns: a L<Paws::ApiGateway::ApiKey> instance

  Changes information about an ApiKey resource.


=head2 UpdateAuthorizer(AuthorizerId => Str, RestApiId => Str, [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]])

Each argument is described in detail in: L<Paws::ApiGateway::UpdateAuthorizer>

Returns: a L<Paws::ApiGateway::Authorizer> instance

  Updates an existing Authorizer resource.

AWS CLI


=head2 UpdateBasePathMapping(BasePath => Str, DomainName => Str, [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]])

Each argument is described in detail in: L<Paws::ApiGateway::UpdateBasePathMapping>

Returns: a L<Paws::ApiGateway::BasePathMapping> instance

  Changes information about the BasePathMapping resource.


=head2 UpdateClientCertificate(ClientCertificateId => Str, [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]])

Each argument is described in detail in: L<Paws::ApiGateway::UpdateClientCertificate>

Returns: a L<Paws::ApiGateway::ClientCertificate> instance

  Changes information about an ClientCertificate resource.


=head2 UpdateDeployment(DeploymentId => Str, RestApiId => Str, [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]])

Each argument is described in detail in: L<Paws::ApiGateway::UpdateDeployment>

Returns: a L<Paws::ApiGateway::Deployment> instance

  Changes information about a Deployment resource.


=head2 UpdateDocumentationPart(DocumentationPartId => Str, RestApiId => Str, [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]])

Each argument is described in detail in: L<Paws::ApiGateway::UpdateDocumentationPart>

Returns: a L<Paws::ApiGateway::DocumentationPart> instance

  


=head2 UpdateDocumentationVersion(DocumentationVersion => Str, RestApiId => Str, [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]])

Each argument is described in detail in: L<Paws::ApiGateway::UpdateDocumentationVersion>

Returns: a L<Paws::ApiGateway::DocumentationVersion> instance

  


=head2 UpdateDomainName(DomainName => Str, [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]])

Each argument is described in detail in: L<Paws::ApiGateway::UpdateDomainName>

Returns: a L<Paws::ApiGateway::DomainName> instance

  Changes information about the DomainName resource.


=head2 UpdateIntegration(HttpMethod => Str, ResourceId => Str, RestApiId => Str, [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]])

Each argument is described in detail in: L<Paws::ApiGateway::UpdateIntegration>

Returns: a L<Paws::ApiGateway::Integration> instance

  Represents an update integration.


=head2 UpdateIntegrationResponse(HttpMethod => Str, ResourceId => Str, RestApiId => Str, StatusCode => Str, [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]])

Each argument is described in detail in: L<Paws::ApiGateway::UpdateIntegrationResponse>

Returns: a L<Paws::ApiGateway::IntegrationResponse> instance

  Represents an update integration response.


=head2 UpdateMethod(HttpMethod => Str, ResourceId => Str, RestApiId => Str, [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]])

Each argument is described in detail in: L<Paws::ApiGateway::UpdateMethod>

Returns: a L<Paws::ApiGateway::Method> instance

  Updates an existing Method resource.


=head2 UpdateMethodResponse(HttpMethod => Str, ResourceId => Str, RestApiId => Str, StatusCode => Str, [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]])

Each argument is described in detail in: L<Paws::ApiGateway::UpdateMethodResponse>

Returns: a L<Paws::ApiGateway::MethodResponse> instance

  Updates an existing MethodResponse resource.


=head2 UpdateModel(ModelName => Str, RestApiId => Str, [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]])

Each argument is described in detail in: L<Paws::ApiGateway::UpdateModel>

Returns: a L<Paws::ApiGateway::Model> instance

  Changes information about a model.


=head2 UpdateResource(ResourceId => Str, RestApiId => Str, [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]])

Each argument is described in detail in: L<Paws::ApiGateway::UpdateResource>

Returns: a L<Paws::ApiGateway::Resource> instance

  Changes information about a Resource resource.


=head2 UpdateRestApi(RestApiId => Str, [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]])

Each argument is described in detail in: L<Paws::ApiGateway::UpdateRestApi>

Returns: a L<Paws::ApiGateway::RestApi> instance

  Changes information about the specified API.


=head2 UpdateStage(RestApiId => Str, StageName => Str, [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]])

Each argument is described in detail in: L<Paws::ApiGateway::UpdateStage>

Returns: a L<Paws::ApiGateway::Stage> instance

  Changes information about a Stage resource.


=head2 UpdateUsage(KeyId => Str, UsagePlanId => Str, [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]])

Each argument is described in detail in: L<Paws::ApiGateway::UpdateUsage>

Returns: a L<Paws::ApiGateway::Usage> instance

  Grants a temporary extension to the reamining quota of a usage plan
associated with a specified API key.


=head2 UpdateUsagePlan(UsagePlanId => Str, [PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]])

Each argument is described in detail in: L<Paws::ApiGateway::UpdateUsagePlan>

Returns: a L<Paws::ApiGateway::UsagePlan> instance

  Updates a usage plan of a given plan Id.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllApiKeys(sub { },[CustomerId => Str, IncludeValues => Bool, Limit => Int, NameQuery => Str, Position => Str])

=head2 GetAllApiKeys([CustomerId => Str, IncludeValues => Bool, Limit => Int, NameQuery => Str, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::ApiKeys> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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


=head2 GetAllDomainNames(sub { },[Limit => Int, Position => Str])

=head2 GetAllDomainNames([Limit => Int, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::DomainNames> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllModels(sub { },RestApiId => Str, [Limit => Int, Position => Str])

=head2 GetAllModels(RestApiId => Str, [Limit => Int, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::Models> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllResources(sub { },RestApiId => Str, [Limit => Int, Position => Str])

=head2 GetAllResources(RestApiId => Str, [Limit => Int, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::Resources> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllRestApis(sub { },[Limit => Int, Position => Str])

=head2 GetAllRestApis([Limit => Int, Position => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::ApiGateway::RestApis> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

