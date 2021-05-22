package Paws::Glue;
  use Moose;
  sub service { 'glue' }
  sub signing_name { 'glue' }
  sub version { '2017-03-31' }
  sub target_prefix { 'AWSGlue' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchCreatePartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchCreatePartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchDeleteConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeletePartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchDeletePartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchDeleteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteTableVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchDeleteTableVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetCrawlers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchGetCrawlers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetDevEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchGetDevEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchGetJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetPartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchGetPartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetTriggers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchGetTriggers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetWorkflows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchGetWorkflows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchStopJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchStopJobRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdatePartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::BatchUpdatePartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelMLTaskRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CancelMLTaskRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CheckSchemaVersionValidity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CheckSchemaVersionValidity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCrawler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateCrawler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDevEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateDevEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMLTransform {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateMLTransform', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreatePartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePartitionIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreatePartitionIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRegistry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateRegistry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateScript {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateScript', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSecurityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateSecurityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserDefinedFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateUserDefinedFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::CreateWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteColumnStatisticsForPartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteColumnStatisticsForPartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteColumnStatisticsForTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteColumnStatisticsForTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCrawler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteCrawler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDevEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteDevEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMLTransform {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteMLTransform', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeletePartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePartitionIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeletePartitionIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRegistry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteRegistry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSchemaVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteSchemaVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSecurityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteSecurityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTableVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteTableVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserDefinedFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteUserDefinedFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::DeleteWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCatalogImportStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetCatalogImportStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetClassifiers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetClassifiers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetColumnStatisticsForPartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetColumnStatisticsForPartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetColumnStatisticsForTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetColumnStatisticsForTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCrawler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetCrawler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCrawlerMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetCrawlerMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCrawlers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetCrawlers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDatabases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDatabases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataCatalogEncryptionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDataCatalogEncryptionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataflowGraph {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDataflowGraph', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDevEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetDevEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobBookmark {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetJobBookmark', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetJobRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetJobRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMLTaskRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetMLTaskRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMLTaskRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetMLTaskRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMLTransform {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetMLTransform', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMLTransforms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetMLTransforms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetPartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPartitionIndexes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetPartitionIndexes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPartitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetPartitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRegistry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetRegistry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetResourcePolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSchemaByDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetSchemaByDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSchemaVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetSchemaVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSchemaVersionsDiff {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetSchemaVersionsDiff', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSecurityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetSecurityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSecurityConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetSecurityConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTableVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTableVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTableVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTableVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTriggers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetTriggers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUserDefinedFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetUserDefinedFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUserDefinedFunctions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetUserDefinedFunctions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflowRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetWorkflowRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflowRunProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetWorkflowRunProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkflowRuns {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::GetWorkflowRuns', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportCatalogToGlue {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ImportCatalogToGlue', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCrawlers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListCrawlers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListDevEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMLTransforms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListMLTransforms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRegistries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListRegistries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSchemas {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListSchemas', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSchemaVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListSchemaVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTriggers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListTriggers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkflows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ListWorkflows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDataCatalogEncryptionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::PutDataCatalogEncryptionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSchemaVersionMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::PutSchemaVersionMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutWorkflowRunProperties {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::PutWorkflowRunProperties', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub QuerySchemaVersionMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::QuerySchemaVersionMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterSchemaVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::RegisterSchemaVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveSchemaVersionMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::RemoveSchemaVersionMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetJobBookmark {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ResetJobBookmark', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResumeWorkflowRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::ResumeWorkflowRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::SearchTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCrawler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartCrawler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCrawlerSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartCrawlerSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartExportLabelsTaskRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartExportLabelsTaskRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartImportLabelsTaskRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartImportLabelsTaskRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartJobRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartJobRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMLEvaluationTaskRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartMLEvaluationTaskRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMLLabelingSetGenerationTaskRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartMLLabelingSetGenerationTaskRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartWorkflowRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StartWorkflowRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopCrawler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StopCrawler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopCrawlerSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StopCrawlerSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StopTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopWorkflowRun {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::StopWorkflowRun', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateColumnStatisticsForPartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateColumnStatisticsForPartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateColumnStatisticsForTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateColumnStatisticsForTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCrawler {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateCrawler', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCrawlerSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateCrawlerSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDatabase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateDatabase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDevEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateDevEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMLTransform {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateMLTransform', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePartition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdatePartition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRegistry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateRegistry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTrigger {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateTrigger', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserDefinedFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateUserDefinedFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Glue::UpdateWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllClassifiers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetClassifiers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetClassifiers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Classifiers }, @{ $next_result->Classifiers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Classifiers') foreach (@{ $result->Classifiers });
        $result = $self->GetClassifiers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Classifiers') foreach (@{ $result->Classifiers });
    }

    return undef
  }
  sub GetAllConnections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetConnections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetConnections(@_, NextToken => $next_result->NextToken);
        push @{ $result->ConnectionList }, @{ $next_result->ConnectionList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConnectionList') foreach (@{ $result->ConnectionList });
        $result = $self->GetConnections(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ConnectionList') foreach (@{ $result->ConnectionList });
    }

    return undef
  }
  sub GetAllCrawlerMetrics {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetCrawlerMetrics(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetCrawlerMetrics(@_, NextToken => $next_result->NextToken);
        push @{ $result->CrawlerMetricsList }, @{ $next_result->CrawlerMetricsList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CrawlerMetricsList') foreach (@{ $result->CrawlerMetricsList });
        $result = $self->GetCrawlerMetrics(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CrawlerMetricsList') foreach (@{ $result->CrawlerMetricsList });
    }

    return undef
  }
  sub GetAllCrawlers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetCrawlers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetCrawlers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Crawlers }, @{ $next_result->Crawlers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Crawlers') foreach (@{ $result->Crawlers });
        $result = $self->GetCrawlers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Crawlers') foreach (@{ $result->Crawlers });
    }

    return undef
  }
  sub GetAllDatabases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDatabases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetDatabases(@_, NextToken => $next_result->NextToken);
        push @{ $result->DatabaseList }, @{ $next_result->DatabaseList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DatabaseList') foreach (@{ $result->DatabaseList });
        $result = $self->GetDatabases(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DatabaseList') foreach (@{ $result->DatabaseList });
    }

    return undef
  }
  sub GetAllDevEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDevEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetDevEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->DevEndpoints }, @{ $next_result->DevEndpoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DevEndpoints') foreach (@{ $result->DevEndpoints });
        $result = $self->GetDevEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DevEndpoints') foreach (@{ $result->DevEndpoints });
    }

    return undef
  }
  sub GetAllJobRuns {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetJobRuns(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetJobRuns(@_, NextToken => $next_result->NextToken);
        push @{ $result->JobRuns }, @{ $next_result->JobRuns };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'JobRuns') foreach (@{ $result->JobRuns });
        $result = $self->GetJobRuns(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'JobRuns') foreach (@{ $result->JobRuns });
    }

    return undef
  }
  sub GetAllJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->Jobs }, @{ $next_result->Jobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Jobs') foreach (@{ $result->Jobs });
        $result = $self->GetJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Jobs') foreach (@{ $result->Jobs });
    }

    return undef
  }
  sub GetAllPartitionIndexes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetPartitionIndexes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetPartitionIndexes(@_, NextToken => $next_result->NextToken);
        push @{ $result->PartitionIndexDescriptorList }, @{ $next_result->PartitionIndexDescriptorList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PartitionIndexDescriptorList') foreach (@{ $result->PartitionIndexDescriptorList });
        $result = $self->GetPartitionIndexes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PartitionIndexDescriptorList') foreach (@{ $result->PartitionIndexDescriptorList });
    }

    return undef
  }
  sub GetAllPartitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetPartitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetPartitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Partitions }, @{ $next_result->Partitions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Partitions') foreach (@{ $result->Partitions });
        $result = $self->GetPartitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Partitions') foreach (@{ $result->Partitions });
    }

    return undef
  }
  sub GetAllResourcePolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetResourcePolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetResourcePolicies(@_, NextToken => $next_result->NextToken);
        push @{ $result->GetResourcePoliciesResponseList }, @{ $next_result->GetResourcePoliciesResponseList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'GetResourcePoliciesResponseList') foreach (@{ $result->GetResourcePoliciesResponseList });
        $result = $self->GetResourcePolicies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'GetResourcePoliciesResponseList') foreach (@{ $result->GetResourcePoliciesResponseList });
    }

    return undef
  }
  sub GetAllSecurityConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetSecurityConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetSecurityConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->SecurityConfigurations }, @{ $next_result->SecurityConfigurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SecurityConfigurations') foreach (@{ $result->SecurityConfigurations });
        $result = $self->GetSecurityConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SecurityConfigurations') foreach (@{ $result->SecurityConfigurations });
    }

    return undef
  }
  sub GetAllTables {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTables(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTables(@_, NextToken => $next_result->NextToken);
        push @{ $result->TableList }, @{ $next_result->TableList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TableList') foreach (@{ $result->TableList });
        $result = $self->GetTables(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TableList') foreach (@{ $result->TableList });
    }

    return undef
  }
  sub GetAllTableVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTableVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTableVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->TableVersions }, @{ $next_result->TableVersions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TableVersions') foreach (@{ $result->TableVersions });
        $result = $self->GetTableVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TableVersions') foreach (@{ $result->TableVersions });
    }

    return undef
  }
  sub GetAllTriggers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetTriggers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetTriggers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Triggers }, @{ $next_result->Triggers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Triggers') foreach (@{ $result->Triggers });
        $result = $self->GetTriggers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Triggers') foreach (@{ $result->Triggers });
    }

    return undef
  }
  sub GetAllUserDefinedFunctions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetUserDefinedFunctions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetUserDefinedFunctions(@_, NextToken => $next_result->NextToken);
        push @{ $result->UserDefinedFunctions }, @{ $next_result->UserDefinedFunctions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UserDefinedFunctions') foreach (@{ $result->UserDefinedFunctions });
        $result = $self->GetUserDefinedFunctions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UserDefinedFunctions') foreach (@{ $result->UserDefinedFunctions });
    }

    return undef
  }
  sub ListAllRegistries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRegistries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRegistries(@_, NextToken => $next_result->NextToken);
        push @{ $result->Registries }, @{ $next_result->Registries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Registries') foreach (@{ $result->Registries });
        $result = $self->ListRegistries(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Registries') foreach (@{ $result->Registries });
    }

    return undef
  }
  sub ListAllSchemas {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSchemas(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSchemas(@_, NextToken => $next_result->NextToken);
        push @{ $result->Schemas }, @{ $next_result->Schemas };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Schemas') foreach (@{ $result->Schemas });
        $result = $self->ListSchemas(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Schemas') foreach (@{ $result->Schemas });
    }

    return undef
  }
  sub ListAllSchemaVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSchemaVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSchemaVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Schemas }, @{ $next_result->Schemas };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Schemas') foreach (@{ $result->Schemas });
        $result = $self->ListSchemaVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Schemas') foreach (@{ $result->Schemas });
    }

    return undef
  }


  sub operations { qw/BatchCreatePartition BatchDeleteConnection BatchDeletePartition BatchDeleteTable BatchDeleteTableVersion BatchGetCrawlers BatchGetDevEndpoints BatchGetJobs BatchGetPartition BatchGetTriggers BatchGetWorkflows BatchStopJobRun BatchUpdatePartition CancelMLTaskRun CheckSchemaVersionValidity CreateClassifier CreateConnection CreateCrawler CreateDatabase CreateDevEndpoint CreateJob CreateMLTransform CreatePartition CreatePartitionIndex CreateRegistry CreateSchema CreateScript CreateSecurityConfiguration CreateTable CreateTrigger CreateUserDefinedFunction CreateWorkflow DeleteClassifier DeleteColumnStatisticsForPartition DeleteColumnStatisticsForTable DeleteConnection DeleteCrawler DeleteDatabase DeleteDevEndpoint DeleteJob DeleteMLTransform DeletePartition DeletePartitionIndex DeleteRegistry DeleteResourcePolicy DeleteSchema DeleteSchemaVersions DeleteSecurityConfiguration DeleteTable DeleteTableVersion DeleteTrigger DeleteUserDefinedFunction DeleteWorkflow GetCatalogImportStatus GetClassifier GetClassifiers GetColumnStatisticsForPartition GetColumnStatisticsForTable GetConnection GetConnections GetCrawler GetCrawlerMetrics GetCrawlers GetDatabase GetDatabases GetDataCatalogEncryptionSettings GetDataflowGraph GetDevEndpoint GetDevEndpoints GetJob GetJobBookmark GetJobRun GetJobRuns GetJobs GetMapping GetMLTaskRun GetMLTaskRuns GetMLTransform GetMLTransforms GetPartition GetPartitionIndexes GetPartitions GetPlan GetRegistry GetResourcePolicies GetResourcePolicy GetSchema GetSchemaByDefinition GetSchemaVersion GetSchemaVersionsDiff GetSecurityConfiguration GetSecurityConfigurations GetTable GetTables GetTableVersion GetTableVersions GetTags GetTrigger GetTriggers GetUserDefinedFunction GetUserDefinedFunctions GetWorkflow GetWorkflowRun GetWorkflowRunProperties GetWorkflowRuns ImportCatalogToGlue ListCrawlers ListDevEndpoints ListJobs ListMLTransforms ListRegistries ListSchemas ListSchemaVersions ListTriggers ListWorkflows PutDataCatalogEncryptionSettings PutResourcePolicy PutSchemaVersionMetadata PutWorkflowRunProperties QuerySchemaVersionMetadata RegisterSchemaVersion RemoveSchemaVersionMetadata ResetJobBookmark ResumeWorkflowRun SearchTables StartCrawler StartCrawlerSchedule StartExportLabelsTaskRun StartImportLabelsTaskRun StartJobRun StartMLEvaluationTaskRun StartMLLabelingSetGenerationTaskRun StartTrigger StartWorkflowRun StopCrawler StopCrawlerSchedule StopTrigger StopWorkflowRun TagResource UntagResource UpdateClassifier UpdateColumnStatisticsForPartition UpdateColumnStatisticsForTable UpdateConnection UpdateCrawler UpdateCrawlerSchedule UpdateDatabase UpdateDevEndpoint UpdateJob UpdateMLTransform UpdatePartition UpdateRegistry UpdateSchema UpdateTable UpdateTrigger UpdateUserDefinedFunction UpdateWorkflow / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue - Perl Interface to AWS AWS Glue

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Glue');
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

AWS Glue

Defines the public endpoint for the AWS Glue service.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31>


=head1 METHODS

=head2 BatchCreatePartition

=over

=item DatabaseName => Str

=item PartitionInputList => ArrayRef[L<Paws::Glue::PartitionInput>]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchCreatePartition>

Returns: a L<Paws::Glue::BatchCreatePartitionResponse> instance

Creates one or more partitions in a batch operation.


=head2 BatchDeleteConnection

=over

=item ConnectionNameList => ArrayRef[Str|Undef]

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchDeleteConnection>

Returns: a L<Paws::Glue::BatchDeleteConnectionResponse> instance

Deletes a list of connection definitions from the Data Catalog.


=head2 BatchDeletePartition

=over

=item DatabaseName => Str

=item PartitionsToDelete => ArrayRef[L<Paws::Glue::PartitionValueList>]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchDeletePartition>

Returns: a L<Paws::Glue::BatchDeletePartitionResponse> instance

Deletes one or more partitions in a batch operation.


=head2 BatchDeleteTable

=over

=item DatabaseName => Str

=item TablesToDelete => ArrayRef[Str|Undef]

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchDeleteTable>

Returns: a L<Paws::Glue::BatchDeleteTableResponse> instance

Deletes multiple tables at once.

After completing this operation, you no longer have access to the table
versions and partitions that belong to the deleted table. AWS Glue
deletes these "orphaned" resources asynchronously in a timely manner,
at the discretion of the service.

To ensure the immediate deletion of all related resources, before
calling C<BatchDeleteTable>, use C<DeleteTableVersion> or
C<BatchDeleteTableVersion>, and C<DeletePartition> or
C<BatchDeletePartition>, to delete any resources that belong to the
table.


=head2 BatchDeleteTableVersion

=over

=item DatabaseName => Str

=item TableName => Str

=item VersionIds => ArrayRef[Str|Undef]

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchDeleteTableVersion>

Returns: a L<Paws::Glue::BatchDeleteTableVersionResponse> instance

Deletes a specified batch of versions of a table.


=head2 BatchGetCrawlers

=over

=item CrawlerNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Glue::BatchGetCrawlers>

Returns: a L<Paws::Glue::BatchGetCrawlersResponse> instance

Returns a list of resource metadata for a given list of crawler names.
After calling the C<ListCrawlers> operation, you can call this
operation to access the data to which you have been granted
permissions. This operation supports all IAM permissions, including
permission conditions that uses tags.


=head2 BatchGetDevEndpoints

=over

=item DevEndpointNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Glue::BatchGetDevEndpoints>

Returns: a L<Paws::Glue::BatchGetDevEndpointsResponse> instance

Returns a list of resource metadata for a given list of development
endpoint names. After calling the C<ListDevEndpoints> operation, you
can call this operation to access the data to which you have been
granted permissions. This operation supports all IAM permissions,
including permission conditions that uses tags.


=head2 BatchGetJobs

=over

=item JobNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Glue::BatchGetJobs>

Returns: a L<Paws::Glue::BatchGetJobsResponse> instance

Returns a list of resource metadata for a given list of job names.
After calling the C<ListJobs> operation, you can call this operation to
access the data to which you have been granted permissions. This
operation supports all IAM permissions, including permission conditions
that uses tags.


=head2 BatchGetPartition

=over

=item DatabaseName => Str

=item PartitionsToGet => ArrayRef[L<Paws::Glue::PartitionValueList>]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchGetPartition>

Returns: a L<Paws::Glue::BatchGetPartitionResponse> instance

Retrieves partitions in a batch request.


=head2 BatchGetTriggers

=over

=item TriggerNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Glue::BatchGetTriggers>

Returns: a L<Paws::Glue::BatchGetTriggersResponse> instance

Returns a list of resource metadata for a given list of trigger names.
After calling the C<ListTriggers> operation, you can call this
operation to access the data to which you have been granted
permissions. This operation supports all IAM permissions, including
permission conditions that uses tags.


=head2 BatchGetWorkflows

=over

=item Names => ArrayRef[Str|Undef]

=item [IncludeGraph => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::BatchGetWorkflows>

Returns: a L<Paws::Glue::BatchGetWorkflowsResponse> instance

Returns a list of resource metadata for a given list of workflow names.
After calling the C<ListWorkflows> operation, you can call this
operation to access the data to which you have been granted
permissions. This operation supports all IAM permissions, including
permission conditions that uses tags.


=head2 BatchStopJobRun

=over

=item JobName => Str

=item JobRunIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Glue::BatchStopJobRun>

Returns: a L<Paws::Glue::BatchStopJobRunResponse> instance

Stops one or more job runs for a specified job definition.


=head2 BatchUpdatePartition

=over

=item DatabaseName => Str

=item Entries => ArrayRef[L<Paws::Glue::BatchUpdatePartitionRequestEntry>]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::BatchUpdatePartition>

Returns: a L<Paws::Glue::BatchUpdatePartitionResponse> instance

Updates one or more partitions in a batch operation.


=head2 CancelMLTaskRun

=over

=item TaskRunId => Str

=item TransformId => Str


=back

Each argument is described in detail in: L<Paws::Glue::CancelMLTaskRun>

Returns: a L<Paws::Glue::CancelMLTaskRunResponse> instance

Cancels (stops) a task run. Machine learning task runs are asynchronous
tasks that AWS Glue runs on your behalf as part of various machine
learning workflows. You can cancel a machine learning task run at any
time by calling C<CancelMLTaskRun> with a task run's parent transform's
C<TransformID> and the task run's C<TaskRunId>.


=head2 CheckSchemaVersionValidity

=over

=item DataFormat => Str

=item SchemaDefinition => Str


=back

Each argument is described in detail in: L<Paws::Glue::CheckSchemaVersionValidity>

Returns: a L<Paws::Glue::CheckSchemaVersionValidityResponse> instance

Validates the supplied schema. This call has no side effects, it simply
validates using the supplied schema using C<DataFormat> as the format.
Since it does not take a schema set name, no compatibility checks are
performed.


=head2 CreateClassifier

=over

=item [CsvClassifier => L<Paws::Glue::CreateCsvClassifierRequest>]

=item [GrokClassifier => L<Paws::Glue::CreateGrokClassifierRequest>]

=item [JsonClassifier => L<Paws::Glue::CreateJsonClassifierRequest>]

=item [XMLClassifier => L<Paws::Glue::CreateXMLClassifierRequest>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateClassifier>

Returns: a L<Paws::Glue::CreateClassifierResponse> instance

Creates a classifier in the user's account. This can be a
C<GrokClassifier>, an C<XMLClassifier>, a C<JsonClassifier>, or a
C<CsvClassifier>, depending on which field of the request is present.


=head2 CreateConnection

=over

=item ConnectionInput => L<Paws::Glue::ConnectionInput>

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateConnection>

Returns: a L<Paws::Glue::CreateConnectionResponse> instance

Creates a connection definition in the Data Catalog.


=head2 CreateCrawler

=over

=item Name => Str

=item Role => Str

=item Targets => L<Paws::Glue::CrawlerTargets>

=item [Classifiers => ArrayRef[Str|Undef]]

=item [Configuration => Str]

=item [CrawlerSecurityConfiguration => Str]

=item [DatabaseName => Str]

=item [Description => Str]

=item [LineageConfiguration => L<Paws::Glue::LineageConfiguration>]

=item [RecrawlPolicy => L<Paws::Glue::RecrawlPolicy>]

=item [Schedule => Str]

=item [SchemaChangePolicy => L<Paws::Glue::SchemaChangePolicy>]

=item [TablePrefix => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateCrawler>

Returns: a L<Paws::Glue::CreateCrawlerResponse> instance

Creates a new crawler with specified targets, role, configuration, and
optional schedule. At least one crawl target must be specified, in the
C<s3Targets> field, the C<jdbcTargets> field, or the C<DynamoDBTargets>
field.


=head2 CreateDatabase

=over

=item DatabaseInput => L<Paws::Glue::DatabaseInput>

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateDatabase>

Returns: a L<Paws::Glue::CreateDatabaseResponse> instance

Creates a new database in a Data Catalog.


=head2 CreateDevEndpoint

=over

=item EndpointName => Str

=item RoleArn => Str

=item [Arguments => L<Paws::Glue::MapValue>]

=item [ExtraJarsS3Path => Str]

=item [ExtraPythonLibsS3Path => Str]

=item [GlueVersion => Str]

=item [NumberOfNodes => Int]

=item [NumberOfWorkers => Int]

=item [PublicKey => Str]

=item [PublicKeys => ArrayRef[Str|Undef]]

=item [SecurityConfiguration => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SubnetId => Str]

=item [Tags => L<Paws::Glue::TagsMap>]

=item [WorkerType => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateDevEndpoint>

Returns: a L<Paws::Glue::CreateDevEndpointResponse> instance

Creates a new development endpoint.


=head2 CreateJob

=over

=item Command => L<Paws::Glue::JobCommand>

=item Name => Str

=item Role => Str

=item [AllocatedCapacity => Int]

=item [Connections => L<Paws::Glue::ConnectionsList>]

=item [DefaultArguments => L<Paws::Glue::GenericMap>]

=item [Description => Str]

=item [ExecutionProperty => L<Paws::Glue::ExecutionProperty>]

=item [GlueVersion => Str]

=item [LogUri => Str]

=item [MaxCapacity => Num]

=item [MaxRetries => Int]

=item [NonOverridableArguments => L<Paws::Glue::GenericMap>]

=item [NotificationProperty => L<Paws::Glue::NotificationProperty>]

=item [NumberOfWorkers => Int]

=item [SecurityConfiguration => Str]

=item [Tags => L<Paws::Glue::TagsMap>]

=item [Timeout => Int]

=item [WorkerType => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateJob>

Returns: a L<Paws::Glue::CreateJobResponse> instance

Creates a new job definition.


=head2 CreateMLTransform

=over

=item InputRecordTables => ArrayRef[L<Paws::Glue::GlueTable>]

=item Name => Str

=item Parameters => L<Paws::Glue::TransformParameters>

=item Role => Str

=item [Description => Str]

=item [GlueVersion => Str]

=item [MaxCapacity => Num]

=item [MaxRetries => Int]

=item [NumberOfWorkers => Int]

=item [Tags => L<Paws::Glue::TagsMap>]

=item [Timeout => Int]

=item [TransformEncryption => L<Paws::Glue::TransformEncryption>]

=item [WorkerType => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateMLTransform>

Returns: a L<Paws::Glue::CreateMLTransformResponse> instance

Creates an AWS Glue machine learning transform. This operation creates
the transform and all the necessary parameters to train it.

Call this operation as the first step in the process of using a machine
learning transform (such as the C<FindMatches> transform) for
deduplicating data. You can provide an optional C<Description>, in
addition to the parameters that you want to use for your algorithm.

You must also specify certain parameters for the tasks that AWS Glue
runs on your behalf as part of learning from your data and creating a
high-quality machine learning transform. These parameters include
C<Role>, and optionally, C<AllocatedCapacity>, C<Timeout>, and
C<MaxRetries>. For more information, see Jobs
(https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html).


=head2 CreatePartition

=over

=item DatabaseName => Str

=item PartitionInput => L<Paws::Glue::PartitionInput>

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreatePartition>

Returns: a L<Paws::Glue::CreatePartitionResponse> instance

Creates a new partition.


=head2 CreatePartitionIndex

=over

=item DatabaseName => Str

=item PartitionIndex => L<Paws::Glue::PartitionIndex>

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreatePartitionIndex>

Returns: a L<Paws::Glue::CreatePartitionIndexResponse> instance

Creates a specified partition index in an existing table.


=head2 CreateRegistry

=over

=item RegistryName => Str

=item [Description => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateRegistry>

Returns: a L<Paws::Glue::CreateRegistryResponse> instance

Creates a new registry which may be used to hold a collection of
schemas.


=head2 CreateSchema

=over

=item DataFormat => Str

=item SchemaName => Str

=item [Compatibility => Str]

=item [Description => Str]

=item [RegistryId => L<Paws::Glue::RegistryId>]

=item [SchemaDefinition => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateSchema>

Returns: a L<Paws::Glue::CreateSchemaResponse> instance

Creates a new schema set and registers the schema definition. Returns
an error if the schema set already exists without actually registering
the version.

When the schema set is created, a version checkpoint will be set to the
first version. Compatibility mode "DISABLED" restricts any additional
schema versions from being added after the first schema version. For
all other compatibility modes, validation of compatibility settings
will be applied only from the second version onwards when the
C<RegisterSchemaVersion> API is used.

When this API is called without a C<RegistryId>, this will create an
entry for a "default-registry" in the registry database tables, if it
is not already present.


=head2 CreateScript

=over

=item [DagEdges => ArrayRef[L<Paws::Glue::CodeGenEdge>]]

=item [DagNodes => ArrayRef[L<Paws::Glue::CodeGenNode>]]

=item [Language => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateScript>

Returns: a L<Paws::Glue::CreateScriptResponse> instance

Transforms a directed acyclic graph (DAG) into code.


=head2 CreateSecurityConfiguration

=over

=item EncryptionConfiguration => L<Paws::Glue::EncryptionConfiguration>

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::CreateSecurityConfiguration>

Returns: a L<Paws::Glue::CreateSecurityConfigurationResponse> instance

Creates a new security configuration. A security configuration is a set
of security properties that can be used by AWS Glue. You can use a
security configuration to encrypt data at rest. For information about
using security configurations in AWS Glue, see Encrypting Data Written
by Crawlers, Jobs, and Development Endpoints
(https://docs.aws.amazon.com/glue/latest/dg/encryption-security-configuration.html).


=head2 CreateTable

=over

=item DatabaseName => Str

=item TableInput => L<Paws::Glue::TableInput>

=item [CatalogId => Str]

=item [PartitionIndexes => ArrayRef[L<Paws::Glue::PartitionIndex>]]


=back

Each argument is described in detail in: L<Paws::Glue::CreateTable>

Returns: a L<Paws::Glue::CreateTableResponse> instance

Creates a new table definition in the Data Catalog.


=head2 CreateTrigger

=over

=item Actions => ArrayRef[L<Paws::Glue::Action>]

=item Name => Str

=item Type => Str

=item [Description => Str]

=item [Predicate => L<Paws::Glue::Predicate>]

=item [Schedule => Str]

=item [StartOnCreation => Bool]

=item [Tags => L<Paws::Glue::TagsMap>]

=item [WorkflowName => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateTrigger>

Returns: a L<Paws::Glue::CreateTriggerResponse> instance

Creates a new trigger.


=head2 CreateUserDefinedFunction

=over

=item DatabaseName => Str

=item FunctionInput => L<Paws::Glue::UserDefinedFunctionInput>

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::CreateUserDefinedFunction>

Returns: a L<Paws::Glue::CreateUserDefinedFunctionResponse> instance

Creates a new function definition in the Data Catalog.


=head2 CreateWorkflow

=over

=item Name => Str

=item [DefaultRunProperties => L<Paws::Glue::WorkflowRunProperties>]

=item [Description => Str]

=item [MaxConcurrentRuns => Int]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::CreateWorkflow>

Returns: a L<Paws::Glue::CreateWorkflowResponse> instance

Creates a new workflow.


=head2 DeleteClassifier

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteClassifier>

Returns: a L<Paws::Glue::DeleteClassifierResponse> instance

Removes a classifier from the Data Catalog.


=head2 DeleteColumnStatisticsForPartition

=over

=item ColumnName => Str

=item DatabaseName => Str

=item PartitionValues => ArrayRef[Str|Undef]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteColumnStatisticsForPartition>

Returns: a L<Paws::Glue::DeleteColumnStatisticsForPartitionResponse> instance

Delete the partition column statistics of a column.

The Identity and Access Management (IAM) permission required for this
operation is C<DeletePartition>.


=head2 DeleteColumnStatisticsForTable

=over

=item ColumnName => Str

=item DatabaseName => Str

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteColumnStatisticsForTable>

Returns: a L<Paws::Glue::DeleteColumnStatisticsForTableResponse> instance

Retrieves table statistics of columns.

The Identity and Access Management (IAM) permission required for this
operation is C<DeleteTable>.


=head2 DeleteConnection

=over

=item ConnectionName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteConnection>

Returns: a L<Paws::Glue::DeleteConnectionResponse> instance

Deletes a connection from the Data Catalog.


=head2 DeleteCrawler

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteCrawler>

Returns: a L<Paws::Glue::DeleteCrawlerResponse> instance

Removes a specified crawler from the AWS Glue Data Catalog, unless the
crawler state is C<RUNNING>.


=head2 DeleteDatabase

=over

=item Name => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteDatabase>

Returns: a L<Paws::Glue::DeleteDatabaseResponse> instance

Removes a specified database from a Data Catalog.

After completing this operation, you no longer have access to the
tables (and all table versions and partitions that might belong to the
tables) and the user-defined functions in the deleted database. AWS
Glue deletes these "orphaned" resources asynchronously in a timely
manner, at the discretion of the service.

To ensure the immediate deletion of all related resources, before
calling C<DeleteDatabase>, use C<DeleteTableVersion> or
C<BatchDeleteTableVersion>, C<DeletePartition> or
C<BatchDeletePartition>, C<DeleteUserDefinedFunction>, and
C<DeleteTable> or C<BatchDeleteTable>, to delete any resources that
belong to the database.


=head2 DeleteDevEndpoint

=over

=item EndpointName => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteDevEndpoint>

Returns: a L<Paws::Glue::DeleteDevEndpointResponse> instance

Deletes a specified development endpoint.


=head2 DeleteJob

=over

=item JobName => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteJob>

Returns: a L<Paws::Glue::DeleteJobResponse> instance

Deletes a specified job definition. If the job definition is not found,
no exception is thrown.


=head2 DeleteMLTransform

=over

=item TransformId => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteMLTransform>

Returns: a L<Paws::Glue::DeleteMLTransformResponse> instance

Deletes an AWS Glue machine learning transform. Machine learning
transforms are a special type of transform that use machine learning to
learn the details of the transformation to be performed by learning
from examples provided by humans. These transformations are then saved
by AWS Glue. If you no longer need a transform, you can delete it by
calling C<DeleteMLTransforms>. However, any AWS Glue jobs that still
reference the deleted transform will no longer succeed.


=head2 DeletePartition

=over

=item DatabaseName => Str

=item PartitionValues => ArrayRef[Str|Undef]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeletePartition>

Returns: a L<Paws::Glue::DeletePartitionResponse> instance

Deletes a specified partition.


=head2 DeletePartitionIndex

=over

=item DatabaseName => Str

=item IndexName => Str

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeletePartitionIndex>

Returns: a L<Paws::Glue::DeletePartitionIndexResponse> instance

Deletes a specified partition index from an existing table.


=head2 DeleteRegistry

=over

=item RegistryId => L<Paws::Glue::RegistryId>


=back

Each argument is described in detail in: L<Paws::Glue::DeleteRegistry>

Returns: a L<Paws::Glue::DeleteRegistryResponse> instance

Delete the entire registry including schema and all of its versions. To
get the status of the delete operation, you can call the C<GetRegistry>
API after the asynchronous call. Deleting a registry will disable all
online operations for the registry such as the C<UpdateRegistry>,
C<CreateSchema>, C<UpdateSchema>, and C<RegisterSchemaVersion> APIs.


=head2 DeleteResourcePolicy

=over

=item [PolicyHashCondition => Str]

=item [ResourceArn => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteResourcePolicy>

Returns: a L<Paws::Glue::DeleteResourcePolicyResponse> instance

Deletes a specified policy.


=head2 DeleteSchema

=over

=item SchemaId => L<Paws::Glue::SchemaId>


=back

Each argument is described in detail in: L<Paws::Glue::DeleteSchema>

Returns: a L<Paws::Glue::DeleteSchemaResponse> instance

Deletes the entire schema set, including the schema set and all of its
versions. To get the status of the delete operation, you can call
C<GetSchema> API after the asynchronous call. Deleting a registry will
disable all online operations for the schema, such as the
C<GetSchemaByDefinition>, and C<RegisterSchemaVersion> APIs.


=head2 DeleteSchemaVersions

=over

=item SchemaId => L<Paws::Glue::SchemaId>

=item Versions => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteSchemaVersions>

Returns: a L<Paws::Glue::DeleteSchemaVersionsResponse> instance

Remove versions from the specified schema. A version number or range
may be supplied. If the compatibility mode forbids deleting of a
version that is necessary, such as BACKWARDS_FULL, an error is
returned. Calling the C<GetSchemaVersions> API after this call will
list the status of the deleted versions.

When the range of version numbers contain check pointed version, the
API will return a 409 conflict and will not proceed with the deletion.
You have to remove the checkpoint first using the
C<DeleteSchemaCheckpoint> API before using this API.

You cannot use the C<DeleteSchemaVersions> API to delete the first
schema version in the schema set. The first schema version can only be
deleted by the C<DeleteSchema> API. This operation will also delete the
attached C<SchemaVersionMetadata> under the schema versions. Hard
deletes will be enforced on the database.

If the compatibility mode forbids deleting of a version that is
necessary, such as BACKWARDS_FULL, an error is returned.


=head2 DeleteSecurityConfiguration

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteSecurityConfiguration>

Returns: a L<Paws::Glue::DeleteSecurityConfigurationResponse> instance

Deletes a specified security configuration.


=head2 DeleteTable

=over

=item DatabaseName => Str

=item Name => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteTable>

Returns: a L<Paws::Glue::DeleteTableResponse> instance

Removes a table definition from the Data Catalog.

After completing this operation, you no longer have access to the table
versions and partitions that belong to the deleted table. AWS Glue
deletes these "orphaned" resources asynchronously in a timely manner,
at the discretion of the service.

To ensure the immediate deletion of all related resources, before
calling C<DeleteTable>, use C<DeleteTableVersion> or
C<BatchDeleteTableVersion>, and C<DeletePartition> or
C<BatchDeletePartition>, to delete any resources that belong to the
table.


=head2 DeleteTableVersion

=over

=item DatabaseName => Str

=item TableName => Str

=item VersionId => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteTableVersion>

Returns: a L<Paws::Glue::DeleteTableVersionResponse> instance

Deletes a specified version of a table.


=head2 DeleteTrigger

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteTrigger>

Returns: a L<Paws::Glue::DeleteTriggerResponse> instance

Deletes a specified trigger. If the trigger is not found, no exception
is thrown.


=head2 DeleteUserDefinedFunction

=over

=item DatabaseName => Str

=item FunctionName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::DeleteUserDefinedFunction>

Returns: a L<Paws::Glue::DeleteUserDefinedFunctionResponse> instance

Deletes an existing function definition from the Data Catalog.


=head2 DeleteWorkflow

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::DeleteWorkflow>

Returns: a L<Paws::Glue::DeleteWorkflowResponse> instance

Deletes a workflow.


=head2 GetCatalogImportStatus

=over

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetCatalogImportStatus>

Returns: a L<Paws::Glue::GetCatalogImportStatusResponse> instance

Retrieves the status of a migration operation.


=head2 GetClassifier

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetClassifier>

Returns: a L<Paws::Glue::GetClassifierResponse> instance

Retrieve a classifier by name.


=head2 GetClassifiers

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetClassifiers>

Returns: a L<Paws::Glue::GetClassifiersResponse> instance

Lists all classifier objects in the Data Catalog.


=head2 GetColumnStatisticsForPartition

=over

=item ColumnNames => ArrayRef[Str|Undef]

=item DatabaseName => Str

=item PartitionValues => ArrayRef[Str|Undef]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetColumnStatisticsForPartition>

Returns: a L<Paws::Glue::GetColumnStatisticsForPartitionResponse> instance

Retrieves partition statistics of columns.

The Identity and Access Management (IAM) permission required for this
operation is C<GetPartition>.


=head2 GetColumnStatisticsForTable

=over

=item ColumnNames => ArrayRef[Str|Undef]

=item DatabaseName => Str

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetColumnStatisticsForTable>

Returns: a L<Paws::Glue::GetColumnStatisticsForTableResponse> instance

Retrieves table statistics of columns.

The Identity and Access Management (IAM) permission required for this
operation is C<GetTable>.


=head2 GetConnection

=over

=item Name => Str

=item [CatalogId => Str]

=item [HidePassword => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::GetConnection>

Returns: a L<Paws::Glue::GetConnectionResponse> instance

Retrieves a connection definition from the Data Catalog.


=head2 GetConnections

=over

=item [CatalogId => Str]

=item [Filter => L<Paws::Glue::GetConnectionsFilter>]

=item [HidePassword => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetConnections>

Returns: a L<Paws::Glue::GetConnectionsResponse> instance

Retrieves a list of connection definitions from the Data Catalog.


=head2 GetCrawler

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetCrawler>

Returns: a L<Paws::Glue::GetCrawlerResponse> instance

Retrieves metadata for a specified crawler.


=head2 GetCrawlerMetrics

=over

=item [CrawlerNameList => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetCrawlerMetrics>

Returns: a L<Paws::Glue::GetCrawlerMetricsResponse> instance

Retrieves metrics about specified crawlers.


=head2 GetCrawlers

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetCrawlers>

Returns: a L<Paws::Glue::GetCrawlersResponse> instance

Retrieves metadata for all crawlers defined in the customer account.


=head2 GetDatabase

=over

=item Name => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetDatabase>

Returns: a L<Paws::Glue::GetDatabaseResponse> instance

Retrieves the definition of a specified database.


=head2 GetDatabases

=over

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceShareType => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetDatabases>

Returns: a L<Paws::Glue::GetDatabasesResponse> instance

Retrieves all databases defined in a given Data Catalog.


=head2 GetDataCatalogEncryptionSettings

=over

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetDataCatalogEncryptionSettings>

Returns: a L<Paws::Glue::GetDataCatalogEncryptionSettingsResponse> instance

Retrieves the security configuration for a specified catalog.


=head2 GetDataflowGraph

=over

=item [PythonScript => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetDataflowGraph>

Returns: a L<Paws::Glue::GetDataflowGraphResponse> instance

Transforms a Python script into a directed acyclic graph (DAG).


=head2 GetDevEndpoint

=over

=item EndpointName => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetDevEndpoint>

Returns: a L<Paws::Glue::GetDevEndpointResponse> instance

Retrieves information about a specified development endpoint.

When you create a development endpoint in a virtual private cloud
(VPC), AWS Glue returns only a private IP address, and the public IP
address field is not populated. When you create a non-VPC development
endpoint, AWS Glue returns only a public IP address.


=head2 GetDevEndpoints

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetDevEndpoints>

Returns: a L<Paws::Glue::GetDevEndpointsResponse> instance

Retrieves all the development endpoints in this AWS account.

When you create a development endpoint in a virtual private cloud
(VPC), AWS Glue returns only a private IP address and the public IP
address field is not populated. When you create a non-VPC development
endpoint, AWS Glue returns only a public IP address.


=head2 GetJob

=over

=item JobName => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetJob>

Returns: a L<Paws::Glue::GetJobResponse> instance

Retrieves an existing job definition.


=head2 GetJobBookmark

=over

=item JobName => Str

=item [RunId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetJobBookmark>

Returns: a L<Paws::Glue::GetJobBookmarkResponse> instance

Returns information on a job bookmark entry.


=head2 GetJobRun

=over

=item JobName => Str

=item RunId => Str

=item [PredecessorsIncluded => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::GetJobRun>

Returns: a L<Paws::Glue::GetJobRunResponse> instance

Retrieves the metadata for a given job run.


=head2 GetJobRuns

=over

=item JobName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetJobRuns>

Returns: a L<Paws::Glue::GetJobRunsResponse> instance

Retrieves metadata for all runs of a given job definition.


=head2 GetJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetJobs>

Returns: a L<Paws::Glue::GetJobsResponse> instance

Retrieves all current job definitions.


=head2 GetMapping

=over

=item Source => L<Paws::Glue::CatalogEntry>

=item [Location => L<Paws::Glue::Location>]

=item [Sinks => ArrayRef[L<Paws::Glue::CatalogEntry>]]


=back

Each argument is described in detail in: L<Paws::Glue::GetMapping>

Returns: a L<Paws::Glue::GetMappingResponse> instance

Creates mappings.


=head2 GetMLTaskRun

=over

=item TaskRunId => Str

=item TransformId => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetMLTaskRun>

Returns: a L<Paws::Glue::GetMLTaskRunResponse> instance

Gets details for a specific task run on a machine learning transform.
Machine learning task runs are asynchronous tasks that AWS Glue runs on
your behalf as part of various machine learning workflows. You can
check the stats of any task run by calling C<GetMLTaskRun> with the
C<TaskRunID> and its parent transform's C<TransformID>.


=head2 GetMLTaskRuns

=over

=item TransformId => Str

=item [Filter => L<Paws::Glue::TaskRunFilterCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => L<Paws::Glue::TaskRunSortCriteria>]


=back

Each argument is described in detail in: L<Paws::Glue::GetMLTaskRuns>

Returns: a L<Paws::Glue::GetMLTaskRunsResponse> instance

Gets a list of runs for a machine learning transform. Machine learning
task runs are asynchronous tasks that AWS Glue runs on your behalf as
part of various machine learning workflows. You can get a sortable,
filterable list of machine learning task runs by calling
C<GetMLTaskRuns> with their parent transform's C<TransformID> and other
optional parameters as documented in this section.

This operation returns a list of historic runs and must be paginated.


=head2 GetMLTransform

=over

=item TransformId => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetMLTransform>

Returns: a L<Paws::Glue::GetMLTransformResponse> instance

Gets an AWS Glue machine learning transform artifact and all its
corresponding metadata. Machine learning transforms are a special type
of transform that use machine learning to learn the details of the
transformation to be performed by learning from examples provided by
humans. These transformations are then saved by AWS Glue. You can
retrieve their metadata by calling C<GetMLTransform>.


=head2 GetMLTransforms

=over

=item [Filter => L<Paws::Glue::TransformFilterCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => L<Paws::Glue::TransformSortCriteria>]


=back

Each argument is described in detail in: L<Paws::Glue::GetMLTransforms>

Returns: a L<Paws::Glue::GetMLTransformsResponse> instance

Gets a sortable, filterable list of existing AWS Glue machine learning
transforms. Machine learning transforms are a special type of transform
that use machine learning to learn the details of the transformation to
be performed by learning from examples provided by humans. These
transformations are then saved by AWS Glue, and you can retrieve their
metadata by calling C<GetMLTransforms>.


=head2 GetPartition

=over

=item DatabaseName => Str

=item PartitionValues => ArrayRef[Str|Undef]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetPartition>

Returns: a L<Paws::Glue::GetPartitionResponse> instance

Retrieves information about a specified partition.


=head2 GetPartitionIndexes

=over

=item DatabaseName => Str

=item TableName => Str

=item [CatalogId => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetPartitionIndexes>

Returns: a L<Paws::Glue::GetPartitionIndexesResponse> instance

Retrieves the partition indexes associated with a table.


=head2 GetPartitions

=over

=item DatabaseName => Str

=item TableName => Str

=item [CatalogId => Str]

=item [ExcludeColumnSchema => Bool]

=item [Expression => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Segment => L<Paws::Glue::Segment>]


=back

Each argument is described in detail in: L<Paws::Glue::GetPartitions>

Returns: a L<Paws::Glue::GetPartitionsResponse> instance

Retrieves information about the partitions in a table.


=head2 GetPlan

=over

=item Mapping => ArrayRef[L<Paws::Glue::MappingEntry>]

=item Source => L<Paws::Glue::CatalogEntry>

=item [AdditionalPlanOptionsMap => L<Paws::Glue::AdditionalPlanOptionsMap>]

=item [Language => Str]

=item [Location => L<Paws::Glue::Location>]

=item [Sinks => ArrayRef[L<Paws::Glue::CatalogEntry>]]


=back

Each argument is described in detail in: L<Paws::Glue::GetPlan>

Returns: a L<Paws::Glue::GetPlanResponse> instance

Gets code to perform a specified mapping.


=head2 GetRegistry

=over

=item RegistryId => L<Paws::Glue::RegistryId>


=back

Each argument is described in detail in: L<Paws::Glue::GetRegistry>

Returns: a L<Paws::Glue::GetRegistryResponse> instance

Describes the specified registry in detail.


=head2 GetResourcePolicies

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetResourcePolicies>

Returns: a L<Paws::Glue::GetResourcePoliciesResponse> instance

Retrieves the resource policies set on individual resources by AWS
Resource Access Manager during cross-account permission grants. Also
retrieves the Data Catalog resource policy.

If you enabled metadata encryption in Data Catalog settings, and you do
not have permission on the AWS KMS key, the operation can't return the
Data Catalog resource policy.


=head2 GetResourcePolicy

=over

=item [ResourceArn => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetResourcePolicy>

Returns: a L<Paws::Glue::GetResourcePolicyResponse> instance

Retrieves a specified resource policy.


=head2 GetSchema

=over

=item SchemaId => L<Paws::Glue::SchemaId>


=back

Each argument is described in detail in: L<Paws::Glue::GetSchema>

Returns: a L<Paws::Glue::GetSchemaResponse> instance

Describes the specified schema in detail.


=head2 GetSchemaByDefinition

=over

=item SchemaDefinition => Str

=item SchemaId => L<Paws::Glue::SchemaId>


=back

Each argument is described in detail in: L<Paws::Glue::GetSchemaByDefinition>

Returns: a L<Paws::Glue::GetSchemaByDefinitionResponse> instance

Retrieves a schema by the C<SchemaDefinition>. The schema definition is
sent to the Schema Registry, canonicalized, and hashed. If the hash is
matched within the scope of the C<SchemaName> or ARN (or the default
registry, if none is supplied), that schemaE<rsquo>s metadata is
returned. Otherwise, a 404 or NotFound error is returned. Schema
versions in C<Deleted> statuses will not be included in the results.


=head2 GetSchemaVersion

=over

=item [SchemaId => L<Paws::Glue::SchemaId>]

=item [SchemaVersionId => Str]

=item [SchemaVersionNumber => L<Paws::Glue::SchemaVersionNumber>]


=back

Each argument is described in detail in: L<Paws::Glue::GetSchemaVersion>

Returns: a L<Paws::Glue::GetSchemaVersionResponse> instance

Get the specified schema by its unique ID assigned when a version of
the schema is created or registered. Schema versions in Deleted status
will not be included in the results.


=head2 GetSchemaVersionsDiff

=over

=item FirstSchemaVersionNumber => L<Paws::Glue::SchemaVersionNumber>

=item SchemaDiffType => Str

=item SchemaId => L<Paws::Glue::SchemaId>

=item SecondSchemaVersionNumber => L<Paws::Glue::SchemaVersionNumber>


=back

Each argument is described in detail in: L<Paws::Glue::GetSchemaVersionsDiff>

Returns: a L<Paws::Glue::GetSchemaVersionsDiffResponse> instance

Fetches the schema version difference in the specified difference type
between two stored schema versions in the Schema Registry.

This API allows you to compare two schema versions between two schema
definitions under the same schema.


=head2 GetSecurityConfiguration

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetSecurityConfiguration>

Returns: a L<Paws::Glue::GetSecurityConfigurationResponse> instance

Retrieves a specified security configuration.


=head2 GetSecurityConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetSecurityConfigurations>

Returns: a L<Paws::Glue::GetSecurityConfigurationsResponse> instance

Retrieves a list of all security configurations.


=head2 GetTable

=over

=item DatabaseName => Str

=item Name => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetTable>

Returns: a L<Paws::Glue::GetTableResponse> instance

Retrieves the C<Table> definition in a Data Catalog for a specified
table.


=head2 GetTables

=over

=item DatabaseName => Str

=item [CatalogId => Str]

=item [Expression => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetTables>

Returns: a L<Paws::Glue::GetTablesResponse> instance

Retrieves the definitions of some or all of the tables in a given
C<Database>.


=head2 GetTableVersion

=over

=item DatabaseName => Str

=item TableName => Str

=item [CatalogId => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetTableVersion>

Returns: a L<Paws::Glue::GetTableVersionResponse> instance

Retrieves a specified version of a table.


=head2 GetTableVersions

=over

=item DatabaseName => Str

=item TableName => Str

=item [CatalogId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetTableVersions>

Returns: a L<Paws::Glue::GetTableVersionsResponse> instance

Retrieves a list of strings that identify available versions of a
specified table.


=head2 GetTags

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetTags>

Returns: a L<Paws::Glue::GetTagsResponse> instance

Retrieves a list of tags associated with a resource.


=head2 GetTrigger

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetTrigger>

Returns: a L<Paws::Glue::GetTriggerResponse> instance

Retrieves the definition of a trigger.


=head2 GetTriggers

=over

=item [DependentJobName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetTriggers>

Returns: a L<Paws::Glue::GetTriggersResponse> instance

Gets all the triggers associated with a job.


=head2 GetUserDefinedFunction

=over

=item DatabaseName => Str

=item FunctionName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetUserDefinedFunction>

Returns: a L<Paws::Glue::GetUserDefinedFunctionResponse> instance

Retrieves a specified function definition from the Data Catalog.


=head2 GetUserDefinedFunctions

=over

=item Pattern => Str

=item [CatalogId => Str]

=item [DatabaseName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetUserDefinedFunctions>

Returns: a L<Paws::Glue::GetUserDefinedFunctionsResponse> instance

Retrieves multiple function definitions from the Data Catalog.


=head2 GetWorkflow

=over

=item Name => Str

=item [IncludeGraph => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::GetWorkflow>

Returns: a L<Paws::Glue::GetWorkflowResponse> instance

Retrieves resource metadata for a workflow.


=head2 GetWorkflowRun

=over

=item Name => Str

=item RunId => Str

=item [IncludeGraph => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::GetWorkflowRun>

Returns: a L<Paws::Glue::GetWorkflowRunResponse> instance

Retrieves the metadata for a given workflow run.


=head2 GetWorkflowRunProperties

=over

=item Name => Str

=item RunId => Str


=back

Each argument is described in detail in: L<Paws::Glue::GetWorkflowRunProperties>

Returns: a L<Paws::Glue::GetWorkflowRunPropertiesResponse> instance

Retrieves the workflow run properties which were set during the run.


=head2 GetWorkflowRuns

=over

=item Name => Str

=item [IncludeGraph => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::GetWorkflowRuns>

Returns: a L<Paws::Glue::GetWorkflowRunsResponse> instance

Retrieves metadata for all runs of a given workflow.


=head2 ImportCatalogToGlue

=over

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ImportCatalogToGlue>

Returns: a L<Paws::Glue::ImportCatalogToGlueResponse> instance

Imports an existing Amazon Athena Data Catalog to AWS Glue


=head2 ListCrawlers

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::ListCrawlers>

Returns: a L<Paws::Glue::ListCrawlersResponse> instance

Retrieves the names of all crawler resources in this AWS account, or
the resources with the specified tag. This operation allows you to see
which resources are available in your account, and their names.

This operation takes the optional C<Tags> field, which you can use as a
filter on the response so that tagged resources can be retrieved as a
group. If you choose to use tags filtering, only resources with the tag
are retrieved.


=head2 ListDevEndpoints

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::ListDevEndpoints>

Returns: a L<Paws::Glue::ListDevEndpointsResponse> instance

Retrieves the names of all C<DevEndpoint> resources in this AWS
account, or the resources with the specified tag. This operation allows
you to see which resources are available in your account, and their
names.

This operation takes the optional C<Tags> field, which you can use as a
filter on the response so that tagged resources can be retrieved as a
group. If you choose to use tags filtering, only resources with the tag
are retrieved.


=head2 ListJobs

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::ListJobs>

Returns: a L<Paws::Glue::ListJobsResponse> instance

Retrieves the names of all job resources in this AWS account, or the
resources with the specified tag. This operation allows you to see
which resources are available in your account, and their names.

This operation takes the optional C<Tags> field, which you can use as a
filter on the response so that tagged resources can be retrieved as a
group. If you choose to use tags filtering, only resources with the tag
are retrieved.


=head2 ListMLTransforms

=over

=item [Filter => L<Paws::Glue::TransformFilterCriteria>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => L<Paws::Glue::TransformSortCriteria>]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::ListMLTransforms>

Returns: a L<Paws::Glue::ListMLTransformsResponse> instance

Retrieves a sortable, filterable list of existing AWS Glue machine
learning transforms in this AWS account, or the resources with the
specified tag. This operation takes the optional C<Tags> field, which
you can use as a filter of the responses so that tagged resources can
be retrieved as a group. If you choose to use tag filtering, only
resources with the tags are retrieved.


=head2 ListRegistries

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ListRegistries>

Returns: a L<Paws::Glue::ListRegistriesResponse> instance

Returns a list of registries that you have created, with minimal
registry information. Registries in the C<Deleting> status will not be
included in the results. Empty results will be returned if there are no
registries available.


=head2 ListSchemas

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegistryId => L<Paws::Glue::RegistryId>]


=back

Each argument is described in detail in: L<Paws::Glue::ListSchemas>

Returns: a L<Paws::Glue::ListSchemasResponse> instance

Returns a list of schemas with minimal details. Schemas in Deleting
status will not be included in the results. Empty results will be
returned if there are no schemas available.

When the C<RegistryId> is not provided, all the schemas across
registries will be part of the API response.


=head2 ListSchemaVersions

=over

=item SchemaId => L<Paws::Glue::SchemaId>

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ListSchemaVersions>

Returns: a L<Paws::Glue::ListSchemaVersionsResponse> instance

Returns a list of schema versions that you have created, with minimal
information. Schema versions in Deleted status will not be included in
the results. Empty results will be returned if there are no schema
versions available.


=head2 ListTriggers

=over

=item [DependentJobName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Tags => L<Paws::Glue::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Glue::ListTriggers>

Returns: a L<Paws::Glue::ListTriggersResponse> instance

Retrieves the names of all trigger resources in this AWS account, or
the resources with the specified tag. This operation allows you to see
which resources are available in your account, and their names.

This operation takes the optional C<Tags> field, which you can use as a
filter on the response so that tagged resources can be retrieved as a
group. If you choose to use tags filtering, only resources with the tag
are retrieved.


=head2 ListWorkflows

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ListWorkflows>

Returns: a L<Paws::Glue::ListWorkflowsResponse> instance

Lists names of workflows created in the account.


=head2 PutDataCatalogEncryptionSettings

=over

=item DataCatalogEncryptionSettings => L<Paws::Glue::DataCatalogEncryptionSettings>

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::PutDataCatalogEncryptionSettings>

Returns: a L<Paws::Glue::PutDataCatalogEncryptionSettingsResponse> instance

Sets the security configuration for a specified catalog. After the
configuration has been set, the specified encryption is applied to
every catalog write thereafter.


=head2 PutResourcePolicy

=over

=item PolicyInJson => Str

=item [EnableHybrid => Str]

=item [PolicyExistsCondition => Str]

=item [PolicyHashCondition => Str]

=item [ResourceArn => Str]


=back

Each argument is described in detail in: L<Paws::Glue::PutResourcePolicy>

Returns: a L<Paws::Glue::PutResourcePolicyResponse> instance

Sets the Data Catalog resource policy for access control.


=head2 PutSchemaVersionMetadata

=over

=item MetadataKeyValue => L<Paws::Glue::MetadataKeyValuePair>

=item [SchemaId => L<Paws::Glue::SchemaId>]

=item [SchemaVersionId => Str]

=item [SchemaVersionNumber => L<Paws::Glue::SchemaVersionNumber>]


=back

Each argument is described in detail in: L<Paws::Glue::PutSchemaVersionMetadata>

Returns: a L<Paws::Glue::PutSchemaVersionMetadataResponse> instance

Puts the metadata key value pair for a specified schema version ID. A
maximum of 10 key value pairs will be allowed per schema version. They
can be added over one or more calls.


=head2 PutWorkflowRunProperties

=over

=item Name => Str

=item RunId => Str

=item RunProperties => L<Paws::Glue::WorkflowRunProperties>


=back

Each argument is described in detail in: L<Paws::Glue::PutWorkflowRunProperties>

Returns: a L<Paws::Glue::PutWorkflowRunPropertiesResponse> instance

Puts the specified workflow run properties for the given workflow run.
If a property already exists for the specified run, then it overrides
the value otherwise adds the property to existing properties.


=head2 QuerySchemaVersionMetadata

=over

=item [MaxResults => Int]

=item [MetadataList => ArrayRef[L<Paws::Glue::MetadataKeyValuePair>]]

=item [NextToken => Str]

=item [SchemaId => L<Paws::Glue::SchemaId>]

=item [SchemaVersionId => Str]

=item [SchemaVersionNumber => L<Paws::Glue::SchemaVersionNumber>]


=back

Each argument is described in detail in: L<Paws::Glue::QuerySchemaVersionMetadata>

Returns: a L<Paws::Glue::QuerySchemaVersionMetadataResponse> instance

Queries for the schema version metadata information.


=head2 RegisterSchemaVersion

=over

=item SchemaDefinition => Str

=item SchemaId => L<Paws::Glue::SchemaId>


=back

Each argument is described in detail in: L<Paws::Glue::RegisterSchemaVersion>

Returns: a L<Paws::Glue::RegisterSchemaVersionResponse> instance

Adds a new version to the existing schema. Returns an error if new
version of schema does not meet the compatibility requirements of the
schema set. This API will not create a new schema set and will return a
404 error if the schema set is not already present in the Schema
Registry.

If this is the first schema definition to be registered in the Schema
Registry, this API will store the schema version and return
immediately. Otherwise, this call has the potential to run longer than
other operations due to compatibility modes. You can call the
C<GetSchemaVersion> API with the C<SchemaVersionId> to check
compatibility modes.

If the same schema definition is already stored in Schema Registry as a
version, the schema ID of the existing schema is returned to the
caller.


=head2 RemoveSchemaVersionMetadata

=over

=item MetadataKeyValue => L<Paws::Glue::MetadataKeyValuePair>

=item [SchemaId => L<Paws::Glue::SchemaId>]

=item [SchemaVersionId => Str]

=item [SchemaVersionNumber => L<Paws::Glue::SchemaVersionNumber>]


=back

Each argument is described in detail in: L<Paws::Glue::RemoveSchemaVersionMetadata>

Returns: a L<Paws::Glue::RemoveSchemaVersionMetadataResponse> instance

Removes a key value pair from the schema version metadata for the
specified schema version ID.


=head2 ResetJobBookmark

=over

=item JobName => Str

=item [RunId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::ResetJobBookmark>

Returns: a L<Paws::Glue::ResetJobBookmarkResponse> instance

Resets a bookmark entry.


=head2 ResumeWorkflowRun

=over

=item Name => Str

=item NodeIds => ArrayRef[Str|Undef]

=item RunId => Str


=back

Each argument is described in detail in: L<Paws::Glue::ResumeWorkflowRun>

Returns: a L<Paws::Glue::ResumeWorkflowRunResponse> instance

Restarts selected nodes of a previous partially completed workflow run
and resumes the workflow run. The selected nodes and all nodes that are
downstream from the selected nodes are run.


=head2 SearchTables

=over

=item [CatalogId => Str]

=item [Filters => ArrayRef[L<Paws::Glue::PropertyPredicate>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceShareType => Str]

=item [SearchText => Str]

=item [SortCriteria => ArrayRef[L<Paws::Glue::SortCriterion>]]


=back

Each argument is described in detail in: L<Paws::Glue::SearchTables>

Returns: a L<Paws::Glue::SearchTablesResponse> instance

Searches a set of tables based on properties in the table metadata as
well as on the parent database. You can search against text or filter
conditions.

You can only get tables that you have access to based on the security
policies defined in Lake Formation. You need at least a read-only
access to the table for it to be returned. If you do not have access to
all the columns in the table, these columns will not be searched
against when returning the list of tables back to you. If you have
access to the columns but not the data in the columns, those columns
and the associated metadata for those columns will be included in the
search.


=head2 StartCrawler

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::StartCrawler>

Returns: a L<Paws::Glue::StartCrawlerResponse> instance

Starts a crawl using the specified crawler, regardless of what is
scheduled. If the crawler is already running, returns a
CrawlerRunningException
(https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-exceptions.html#aws-glue-api-exceptions-CrawlerRunningException).


=head2 StartCrawlerSchedule

=over

=item CrawlerName => Str


=back

Each argument is described in detail in: L<Paws::Glue::StartCrawlerSchedule>

Returns: a L<Paws::Glue::StartCrawlerScheduleResponse> instance

Changes the schedule state of the specified crawler to C<SCHEDULED>,
unless the crawler is already running or the schedule state is already
C<SCHEDULED>.


=head2 StartExportLabelsTaskRun

=over

=item OutputS3Path => Str

=item TransformId => Str


=back

Each argument is described in detail in: L<Paws::Glue::StartExportLabelsTaskRun>

Returns: a L<Paws::Glue::StartExportLabelsTaskRunResponse> instance

Begins an asynchronous task to export all labeled data for a particular
transform. This task is the only label-related API call that is not
part of the typical active learning workflow. You typically use
C<StartExportLabelsTaskRun> when you want to work with all of your
existing labels at the same time, such as when you want to remove or
change labels that were previously submitted as truth. This API
operation accepts the C<TransformId> whose labels you want to export
and an Amazon Simple Storage Service (Amazon S3) path to export the
labels to. The operation returns a C<TaskRunId>. You can check on the
status of your task run by calling the C<GetMLTaskRun> API.


=head2 StartImportLabelsTaskRun

=over

=item InputS3Path => Str

=item TransformId => Str

=item [ReplaceAllLabels => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::StartImportLabelsTaskRun>

Returns: a L<Paws::Glue::StartImportLabelsTaskRunResponse> instance

Enables you to provide additional labels (examples of truth) to be used
to teach the machine learning transform and improve its quality. This
API operation is generally used as part of the active learning workflow
that starts with the C<StartMLLabelingSetGenerationTaskRun> call and
that ultimately results in improving the quality of your machine
learning transform.

After the C<StartMLLabelingSetGenerationTaskRun> finishes, AWS Glue
machine learning will have generated a series of questions for humans
to answer. (Answering these questions is often called 'labeling' in the
machine learning workflows). In the case of the C<FindMatches>
transform, these questions are of the form, E<ldquo>What is the correct
way to group these rows together into groups composed entirely of
matching records?E<rdquo> After the labeling process is finished, users
upload their answers/labels with a call to C<StartImportLabelsTaskRun>.
After C<StartImportLabelsTaskRun> finishes, all future runs of the
machine learning transform use the new and improved labels and perform
a higher-quality transformation.

By default, C<StartMLLabelingSetGenerationTaskRun> continually learns
from and combines all labels that you upload unless you set C<Replace>
to true. If you set C<Replace> to true, C<StartImportLabelsTaskRun>
deletes and forgets all previously uploaded labels and learns only from
the exact set that you upload. Replacing labels can be helpful if you
realize that you previously uploaded incorrect labels, and you believe
that they are having a negative effect on your transform quality.

You can check on the status of your task run by calling the
C<GetMLTaskRun> operation.


=head2 StartJobRun

=over

=item JobName => Str

=item [AllocatedCapacity => Int]

=item [Arguments => L<Paws::Glue::GenericMap>]

=item [JobRunId => Str]

=item [MaxCapacity => Num]

=item [NotificationProperty => L<Paws::Glue::NotificationProperty>]

=item [NumberOfWorkers => Int]

=item [SecurityConfiguration => Str]

=item [Timeout => Int]

=item [WorkerType => Str]


=back

Each argument is described in detail in: L<Paws::Glue::StartJobRun>

Returns: a L<Paws::Glue::StartJobRunResponse> instance

Starts a job run using a job definition.


=head2 StartMLEvaluationTaskRun

=over

=item TransformId => Str


=back

Each argument is described in detail in: L<Paws::Glue::StartMLEvaluationTaskRun>

Returns: a L<Paws::Glue::StartMLEvaluationTaskRunResponse> instance

Starts a task to estimate the quality of the transform.

When you provide label sets as examples of truth, AWS Glue machine
learning uses some of those examples to learn from them. The rest of
the labels are used as a test to estimate quality.

Returns a unique identifier for the run. You can call C<GetMLTaskRun>
to get more information about the stats of the C<EvaluationTaskRun>.


=head2 StartMLLabelingSetGenerationTaskRun

=over

=item OutputS3Path => Str

=item TransformId => Str


=back

Each argument is described in detail in: L<Paws::Glue::StartMLLabelingSetGenerationTaskRun>

Returns: a L<Paws::Glue::StartMLLabelingSetGenerationTaskRunResponse> instance

Starts the active learning workflow for your machine learning transform
to improve the transform's quality by generating label sets and adding
labels.

When the C<StartMLLabelingSetGenerationTaskRun> finishes, AWS Glue will
have generated a "labeling set" or a set of questions for humans to
answer.

In the case of the C<FindMatches> transform, these questions are of the
form, E<ldquo>What is the correct way to group these rows together into
groups composed entirely of matching records?E<rdquo>

After the labeling process is finished, you can upload your labels with
a call to C<StartImportLabelsTaskRun>. After
C<StartImportLabelsTaskRun> finishes, all future runs of the machine
learning transform will use the new and improved labels and perform a
higher-quality transformation.


=head2 StartTrigger

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::StartTrigger>

Returns: a L<Paws::Glue::StartTriggerResponse> instance

Starts an existing trigger. See Triggering Jobs
(https://docs.aws.amazon.com/glue/latest/dg/trigger-job.html) for
information about how different types of trigger are started.


=head2 StartWorkflowRun

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::StartWorkflowRun>

Returns: a L<Paws::Glue::StartWorkflowRunResponse> instance

Starts a new run of the specified workflow.


=head2 StopCrawler

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::StopCrawler>

Returns: a L<Paws::Glue::StopCrawlerResponse> instance

If the specified crawler is running, stops the crawl.


=head2 StopCrawlerSchedule

=over

=item CrawlerName => Str


=back

Each argument is described in detail in: L<Paws::Glue::StopCrawlerSchedule>

Returns: a L<Paws::Glue::StopCrawlerScheduleResponse> instance

Sets the schedule state of the specified crawler to C<NOT_SCHEDULED>,
but does not stop the crawler if it is already running.


=head2 StopTrigger

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Glue::StopTrigger>

Returns: a L<Paws::Glue::StopTriggerResponse> instance

Stops a specified trigger.


=head2 StopWorkflowRun

=over

=item Name => Str

=item RunId => Str


=back

Each argument is described in detail in: L<Paws::Glue::StopWorkflowRun>

Returns: a L<Paws::Glue::StopWorkflowRunResponse> instance

Stops the execution of the specified workflow run.


=head2 TagResource

=over

=item ResourceArn => Str

=item TagsToAdd => L<Paws::Glue::TagsMap>


=back

Each argument is described in detail in: L<Paws::Glue::TagResource>

Returns: a L<Paws::Glue::TagResourceResponse> instance

Adds tags to a resource. A tag is a label you can assign to an AWS
resource. In AWS Glue, you can tag only certain resources. For
information about what resources you can tag, see AWS Tags in AWS Glue
(https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html).


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagsToRemove => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Glue::UntagResource>

Returns: a L<Paws::Glue::UntagResourceResponse> instance

Removes tags from a resource.


=head2 UpdateClassifier

=over

=item [CsvClassifier => L<Paws::Glue::UpdateCsvClassifierRequest>]

=item [GrokClassifier => L<Paws::Glue::UpdateGrokClassifierRequest>]

=item [JsonClassifier => L<Paws::Glue::UpdateJsonClassifierRequest>]

=item [XMLClassifier => L<Paws::Glue::UpdateXMLClassifierRequest>]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateClassifier>

Returns: a L<Paws::Glue::UpdateClassifierResponse> instance

Modifies an existing classifier (a C<GrokClassifier>, an
C<XMLClassifier>, a C<JsonClassifier>, or a C<CsvClassifier>, depending
on which field is present).


=head2 UpdateColumnStatisticsForPartition

=over

=item ColumnStatisticsList => ArrayRef[L<Paws::Glue::ColumnStatistics>]

=item DatabaseName => Str

=item PartitionValues => ArrayRef[Str|Undef]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateColumnStatisticsForPartition>

Returns: a L<Paws::Glue::UpdateColumnStatisticsForPartitionResponse> instance

Creates or updates partition statistics of columns.

The Identity and Access Management (IAM) permission required for this
operation is C<UpdatePartition>.


=head2 UpdateColumnStatisticsForTable

=over

=item ColumnStatisticsList => ArrayRef[L<Paws::Glue::ColumnStatistics>]

=item DatabaseName => Str

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateColumnStatisticsForTable>

Returns: a L<Paws::Glue::UpdateColumnStatisticsForTableResponse> instance

Creates or updates table statistics of columns.

The Identity and Access Management (IAM) permission required for this
operation is C<UpdateTable>.


=head2 UpdateConnection

=over

=item ConnectionInput => L<Paws::Glue::ConnectionInput>

=item Name => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateConnection>

Returns: a L<Paws::Glue::UpdateConnectionResponse> instance

Updates a connection definition in the Data Catalog.


=head2 UpdateCrawler

=over

=item Name => Str

=item [Classifiers => ArrayRef[Str|Undef]]

=item [Configuration => Str]

=item [CrawlerSecurityConfiguration => Str]

=item [DatabaseName => Str]

=item [Description => Str]

=item [LineageConfiguration => L<Paws::Glue::LineageConfiguration>]

=item [RecrawlPolicy => L<Paws::Glue::RecrawlPolicy>]

=item [Role => Str]

=item [Schedule => Str]

=item [SchemaChangePolicy => L<Paws::Glue::SchemaChangePolicy>]

=item [TablePrefix => Str]

=item [Targets => L<Paws::Glue::CrawlerTargets>]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateCrawler>

Returns: a L<Paws::Glue::UpdateCrawlerResponse> instance

Updates a crawler. If a crawler is running, you must stop it using
C<StopCrawler> before updating it.


=head2 UpdateCrawlerSchedule

=over

=item CrawlerName => Str

=item [Schedule => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateCrawlerSchedule>

Returns: a L<Paws::Glue::UpdateCrawlerScheduleResponse> instance

Updates the schedule of a crawler using a C<cron> expression.


=head2 UpdateDatabase

=over

=item DatabaseInput => L<Paws::Glue::DatabaseInput>

=item Name => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateDatabase>

Returns: a L<Paws::Glue::UpdateDatabaseResponse> instance

Updates an existing database definition in a Data Catalog.


=head2 UpdateDevEndpoint

=over

=item EndpointName => Str

=item [AddArguments => L<Paws::Glue::MapValue>]

=item [AddPublicKeys => ArrayRef[Str|Undef]]

=item [CustomLibraries => L<Paws::Glue::DevEndpointCustomLibraries>]

=item [DeleteArguments => ArrayRef[Str|Undef]]

=item [DeletePublicKeys => ArrayRef[Str|Undef]]

=item [PublicKey => Str]

=item [UpdateEtlLibraries => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateDevEndpoint>

Returns: a L<Paws::Glue::UpdateDevEndpointResponse> instance

Updates a specified development endpoint.


=head2 UpdateJob

=over

=item JobName => Str

=item JobUpdate => L<Paws::Glue::JobUpdate>


=back

Each argument is described in detail in: L<Paws::Glue::UpdateJob>

Returns: a L<Paws::Glue::UpdateJobResponse> instance

Updates an existing job definition.


=head2 UpdateMLTransform

=over

=item TransformId => Str

=item [Description => Str]

=item [GlueVersion => Str]

=item [MaxCapacity => Num]

=item [MaxRetries => Int]

=item [Name => Str]

=item [NumberOfWorkers => Int]

=item [Parameters => L<Paws::Glue::TransformParameters>]

=item [Role => Str]

=item [Timeout => Int]

=item [WorkerType => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateMLTransform>

Returns: a L<Paws::Glue::UpdateMLTransformResponse> instance

Updates an existing machine learning transform. Call this operation to
tune the algorithm parameters to achieve better results.

After calling this operation, you can call the
C<StartMLEvaluationTaskRun> operation to assess how well your new
parameters achieved your goals (such as improving the quality of your
machine learning transform, or making it more cost-effective).


=head2 UpdatePartition

=over

=item DatabaseName => Str

=item PartitionInput => L<Paws::Glue::PartitionInput>

=item PartitionValueList => ArrayRef[Str|Undef]

=item TableName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdatePartition>

Returns: a L<Paws::Glue::UpdatePartitionResponse> instance

Updates a partition.


=head2 UpdateRegistry

=over

=item Description => Str

=item RegistryId => L<Paws::Glue::RegistryId>


=back

Each argument is described in detail in: L<Paws::Glue::UpdateRegistry>

Returns: a L<Paws::Glue::UpdateRegistryResponse> instance

Updates an existing registry which is used to hold a collection of
schemas. The updated properties relate to the registry, and do not
modify any of the schemas within the registry.


=head2 UpdateSchema

=over

=item SchemaId => L<Paws::Glue::SchemaId>

=item [Compatibility => Str]

=item [Description => Str]

=item [SchemaVersionNumber => L<Paws::Glue::SchemaVersionNumber>]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateSchema>

Returns: a L<Paws::Glue::UpdateSchemaResponse> instance

Updates the description, compatibility setting, or version checkpoint
for a schema set.

For updating the compatibility setting, the call will not validate
compatibility for the entire set of schema versions with the new
compatibility setting. If the value for C<Compatibility> is provided,
the C<VersionNumber> (a checkpoint) is also required. The API will
validate the checkpoint version number for consistency.

If the value for the C<VersionNumber> (checkpoint) is provided,
C<Compatibility> is optional and this can be used to set/reset a
checkpoint for the schema.

This update will happen only if the schema is in the AVAILABLE state.


=head2 UpdateTable

=over

=item DatabaseName => Str

=item TableInput => L<Paws::Glue::TableInput>

=item [CatalogId => Str]

=item [SkipArchive => Bool]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateTable>

Returns: a L<Paws::Glue::UpdateTableResponse> instance

Updates a metadata table in the Data Catalog.


=head2 UpdateTrigger

=over

=item Name => Str

=item TriggerUpdate => L<Paws::Glue::TriggerUpdate>


=back

Each argument is described in detail in: L<Paws::Glue::UpdateTrigger>

Returns: a L<Paws::Glue::UpdateTriggerResponse> instance

Updates a trigger definition.


=head2 UpdateUserDefinedFunction

=over

=item DatabaseName => Str

=item FunctionInput => L<Paws::Glue::UserDefinedFunctionInput>

=item FunctionName => Str

=item [CatalogId => Str]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateUserDefinedFunction>

Returns: a L<Paws::Glue::UpdateUserDefinedFunctionResponse> instance

Updates an existing function definition in the Data Catalog.


=head2 UpdateWorkflow

=over

=item Name => Str

=item [DefaultRunProperties => L<Paws::Glue::WorkflowRunProperties>]

=item [Description => Str]

=item [MaxConcurrentRuns => Int]


=back

Each argument is described in detail in: L<Paws::Glue::UpdateWorkflow>

Returns: a L<Paws::Glue::UpdateWorkflowResponse> instance

Updates an existing workflow.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllClassifiers(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllClassifiers([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Classifiers, passing the object as the first parameter, and the string 'Classifiers' as the second parameter 

If not, it will return a a L<Paws::Glue::GetClassifiersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllConnections(sub { },[CatalogId => Str, Filter => L<Paws::Glue::GetConnectionsFilter>, HidePassword => Bool, MaxResults => Int, NextToken => Str])

=head2 GetAllConnections([CatalogId => Str, Filter => L<Paws::Glue::GetConnectionsFilter>, HidePassword => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConnectionList, passing the object as the first parameter, and the string 'ConnectionList' as the second parameter 

If not, it will return a a L<Paws::Glue::GetConnectionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllCrawlerMetrics(sub { },[CrawlerNameList => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 GetAllCrawlerMetrics([CrawlerNameList => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CrawlerMetricsList, passing the object as the first parameter, and the string 'CrawlerMetricsList' as the second parameter 

If not, it will return a a L<Paws::Glue::GetCrawlerMetricsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllCrawlers(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllCrawlers([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Crawlers, passing the object as the first parameter, and the string 'Crawlers' as the second parameter 

If not, it will return a a L<Paws::Glue::GetCrawlersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDatabases(sub { },[CatalogId => Str, MaxResults => Int, NextToken => Str, ResourceShareType => Str])

=head2 GetAllDatabases([CatalogId => Str, MaxResults => Int, NextToken => Str, ResourceShareType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DatabaseList, passing the object as the first parameter, and the string 'DatabaseList' as the second parameter 

If not, it will return a a L<Paws::Glue::GetDatabasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDevEndpoints(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllDevEndpoints([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DevEndpoints, passing the object as the first parameter, and the string 'DevEndpoints' as the second parameter 

If not, it will return a a L<Paws::Glue::GetDevEndpointsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllJobRuns(sub { },JobName => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllJobRuns(JobName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - JobRuns, passing the object as the first parameter, and the string 'JobRuns' as the second parameter 

If not, it will return a a L<Paws::Glue::GetJobRunsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllJobs(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllJobs([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Jobs, passing the object as the first parameter, and the string 'Jobs' as the second parameter 

If not, it will return a a L<Paws::Glue::GetJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllPartitionIndexes(sub { },DatabaseName => Str, TableName => Str, [CatalogId => Str, NextToken => Str])

=head2 GetAllPartitionIndexes(DatabaseName => Str, TableName => Str, [CatalogId => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PartitionIndexDescriptorList, passing the object as the first parameter, and the string 'PartitionIndexDescriptorList' as the second parameter 

If not, it will return a a L<Paws::Glue::GetPartitionIndexesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllPartitions(sub { },DatabaseName => Str, TableName => Str, [CatalogId => Str, ExcludeColumnSchema => Bool, Expression => Str, MaxResults => Int, NextToken => Str, Segment => L<Paws::Glue::Segment>])

=head2 GetAllPartitions(DatabaseName => Str, TableName => Str, [CatalogId => Str, ExcludeColumnSchema => Bool, Expression => Str, MaxResults => Int, NextToken => Str, Segment => L<Paws::Glue::Segment>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Partitions, passing the object as the first parameter, and the string 'Partitions' as the second parameter 

If not, it will return a a L<Paws::Glue::GetPartitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllResourcePolicies(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllResourcePolicies([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - GetResourcePoliciesResponseList, passing the object as the first parameter, and the string 'GetResourcePoliciesResponseList' as the second parameter 

If not, it will return a a L<Paws::Glue::GetResourcePoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllSecurityConfigurations(sub { },[MaxResults => Int, NextToken => Str])

=head2 GetAllSecurityConfigurations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SecurityConfigurations, passing the object as the first parameter, and the string 'SecurityConfigurations' as the second parameter 

If not, it will return a a L<Paws::Glue::GetSecurityConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTables(sub { },DatabaseName => Str, [CatalogId => Str, Expression => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllTables(DatabaseName => Str, [CatalogId => Str, Expression => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TableList, passing the object as the first parameter, and the string 'TableList' as the second parameter 

If not, it will return a a L<Paws::Glue::GetTablesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTableVersions(sub { },DatabaseName => Str, TableName => Str, [CatalogId => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllTableVersions(DatabaseName => Str, TableName => Str, [CatalogId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TableVersions, passing the object as the first parameter, and the string 'TableVersions' as the second parameter 

If not, it will return a a L<Paws::Glue::GetTableVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllTriggers(sub { },[DependentJobName => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllTriggers([DependentJobName => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Triggers, passing the object as the first parameter, and the string 'Triggers' as the second parameter 

If not, it will return a a L<Paws::Glue::GetTriggersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllUserDefinedFunctions(sub { },Pattern => Str, [CatalogId => Str, DatabaseName => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllUserDefinedFunctions(Pattern => Str, [CatalogId => Str, DatabaseName => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserDefinedFunctions, passing the object as the first parameter, and the string 'UserDefinedFunctions' as the second parameter 

If not, it will return a a L<Paws::Glue::GetUserDefinedFunctionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRegistries(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllRegistries([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Registries, passing the object as the first parameter, and the string 'Registries' as the second parameter 

If not, it will return a a L<Paws::Glue::ListRegistriesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSchemas(sub { },[MaxResults => Int, NextToken => Str, RegistryId => L<Paws::Glue::RegistryId>])

=head2 ListAllSchemas([MaxResults => Int, NextToken => Str, RegistryId => L<Paws::Glue::RegistryId>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Schemas, passing the object as the first parameter, and the string 'Schemas' as the second parameter 

If not, it will return a a L<Paws::Glue::ListSchemasResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSchemaVersions(sub { },SchemaId => L<Paws::Glue::SchemaId>, [MaxResults => Int, NextToken => Str])

=head2 ListAllSchemaVersions(SchemaId => L<Paws::Glue::SchemaId>, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Schemas, passing the object as the first parameter, and the string 'Schemas' as the second parameter 

If not, it will return a a L<Paws::Glue::ListSchemaVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

