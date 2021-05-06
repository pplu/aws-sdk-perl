package Paws::SageMaker;
  use Moose;
  sub service { 'api.sagemaker' }
  sub signing_name { 'sagemaker' }
  sub version { '2017-07-24' }
  sub target_prefix { 'SageMaker' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AddTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::AddTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateTrialComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::AssociateTrialComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAlgorithm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateAlgorithm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAutoMLJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateAutoMLJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCodeRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateCodeRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCompilationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateCompilationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEndpointConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateEndpointConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFlowDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateFlowDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHumanTaskUi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateHumanTaskUi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHyperParameterTuningJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateHyperParameterTuningJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLabelingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateLabelingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModelPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateModelPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMonitoringSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateMonitoringSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNotebookInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateNotebookInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNotebookInstanceLifecycleConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateNotebookInstanceLifecycleConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePresignedDomainUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreatePresignedDomainUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePresignedNotebookInstanceUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreatePresignedNotebookInstanceUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProcessingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateProcessingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrainingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateTrainingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTransformJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateTransformJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrial {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateTrial', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTrialComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateTrialComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkteam {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateWorkteam', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAlgorithm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteAlgorithm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCodeRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteCodeRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEndpointConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteEndpointConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFlowDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteFlowDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModelPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteModelPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMonitoringSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteMonitoringSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNotebookInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteNotebookInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNotebookInstanceLifecycleConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteNotebookInstanceLifecycleConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrial {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteTrial', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTrialComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteTrialComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkteam {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteWorkteam', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAlgorithm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeAlgorithm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAutoMLJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeAutoMLJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCodeRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeCodeRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCompilationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeCompilationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpointConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeEndpointConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFlowDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeFlowDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHumanTaskUi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeHumanTaskUi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHyperParameterTuningJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeHyperParameterTuningJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLabelingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeLabelingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModelPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeModelPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMonitoringSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeMonitoringSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNotebookInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeNotebookInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNotebookInstanceLifecycleConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeNotebookInstanceLifecycleConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProcessingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeProcessingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSubscribedWorkteam {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeSubscribedWorkteam', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrainingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeTrainingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTransformJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeTransformJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrial {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeTrial', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTrialComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeTrialComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkforce {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeWorkforce', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkteam {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeWorkteam', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateTrialComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DisassociateTrialComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSearchSuggestions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::GetSearchSuggestions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAlgorithms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListAlgorithms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListApps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAutoMLJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListAutoMLJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCandidatesForAutoMLJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListCandidatesForAutoMLJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCodeRepositories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListCodeRepositories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCompilationJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListCompilationJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEndpointConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListEndpointConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExperiments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListExperiments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFlowDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListFlowDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHumanTaskUis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListHumanTaskUis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHyperParameterTuningJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListHyperParameterTuningJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLabelingJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListLabelingJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLabelingJobsForWorkteam {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListLabelingJobsForWorkteam', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelPackages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListModelPackages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMonitoringExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListMonitoringExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMonitoringSchedules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListMonitoringSchedules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotebookInstanceLifecycleConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListNotebookInstanceLifecycleConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotebookInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListNotebookInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProcessingJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListProcessingJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSubscribedWorkteams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListSubscribedWorkteams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrainingJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListTrainingJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrainingJobsForHyperParameterTuningJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListTrainingJobsForHyperParameterTuningJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTransformJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListTransformJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrialComponents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListTrialComponents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTrials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListTrials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUserProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListUserProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkteams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListWorkteams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RenderUiTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::RenderUiTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Search {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::Search', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMonitoringSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StartMonitoringSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartNotebookInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StartNotebookInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopAutoMLJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopAutoMLJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopCompilationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopCompilationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopHyperParameterTuningJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopHyperParameterTuningJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopLabelingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopLabelingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopMonitoringSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopMonitoringSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopNotebookInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopNotebookInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopProcessingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopProcessingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopTrainingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopTrainingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopTransformJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopTransformJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCodeRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateCodeRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEndpointWeightsAndCapacities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateEndpointWeightsAndCapacities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMonitoringSchedule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateMonitoringSchedule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNotebookInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateNotebookInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNotebookInstanceLifecycleConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateNotebookInstanceLifecycleConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTrial {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateTrial', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTrialComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateTrialComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateUserProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkforce {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateWorkforce', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkteam {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateWorkteam', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAlgorithms {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAlgorithms(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAlgorithms(@_, NextToken => $next_result->NextToken);
        push @{ $result->AlgorithmSummaryList }, @{ $next_result->AlgorithmSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AlgorithmSummaryList') foreach (@{ $result->AlgorithmSummaryList });
        $result = $self->ListAlgorithms(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AlgorithmSummaryList') foreach (@{ $result->AlgorithmSummaryList });
    }

    return undef
  }
  sub ListAllApps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApps(@_, NextToken => $next_result->NextToken);
        push @{ $result->Apps }, @{ $next_result->Apps };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Apps') foreach (@{ $result->Apps });
        $result = $self->ListApps(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Apps') foreach (@{ $result->Apps });
    }

    return undef
  }
  sub ListAllAutoMLJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAutoMLJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAutoMLJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->AutoMLJobSummaries }, @{ $next_result->AutoMLJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AutoMLJobSummaries') foreach (@{ $result->AutoMLJobSummaries });
        $result = $self->ListAutoMLJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AutoMLJobSummaries') foreach (@{ $result->AutoMLJobSummaries });
    }

    return undef
  }
  sub ListAllCandidatesForAutoMLJob {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCandidatesForAutoMLJob(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCandidatesForAutoMLJob(@_, NextToken => $next_result->NextToken);
        push @{ $result->Candidates }, @{ $next_result->Candidates };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Candidates') foreach (@{ $result->Candidates });
        $result = $self->ListCandidatesForAutoMLJob(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Candidates') foreach (@{ $result->Candidates });
    }

    return undef
  }
  sub ListAllCodeRepositories {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCodeRepositories(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCodeRepositories(@_, NextToken => $next_result->NextToken);
        push @{ $result->CodeRepositorySummaryList }, @{ $next_result->CodeRepositorySummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CodeRepositorySummaryList') foreach (@{ $result->CodeRepositorySummaryList });
        $result = $self->ListCodeRepositories(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CodeRepositorySummaryList') foreach (@{ $result->CodeRepositorySummaryList });
    }

    return undef
  }
  sub ListAllCompilationJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCompilationJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCompilationJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->CompilationJobSummaries }, @{ $next_result->CompilationJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CompilationJobSummaries') foreach (@{ $result->CompilationJobSummaries });
        $result = $self->ListCompilationJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CompilationJobSummaries') foreach (@{ $result->CompilationJobSummaries });
    }

    return undef
  }
  sub ListAllDomains {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDomains(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDomains(@_, NextToken => $next_result->NextToken);
        push @{ $result->Domains }, @{ $next_result->Domains };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Domains') foreach (@{ $result->Domains });
        $result = $self->ListDomains(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Domains') foreach (@{ $result->Domains });
    }

    return undef
  }
  sub ListAllEndpointConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEndpointConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEndpointConfigs(@_, NextToken => $next_result->NextToken);
        push @{ $result->EndpointConfigs }, @{ $next_result->EndpointConfigs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EndpointConfigs') foreach (@{ $result->EndpointConfigs });
        $result = $self->ListEndpointConfigs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EndpointConfigs') foreach (@{ $result->EndpointConfigs });
    }

    return undef
  }
  sub ListAllEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->Endpoints }, @{ $next_result->Endpoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Endpoints') foreach (@{ $result->Endpoints });
        $result = $self->ListEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Endpoints') foreach (@{ $result->Endpoints });
    }

    return undef
  }
  sub ListAllExperiments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExperiments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListExperiments(@_, NextToken => $next_result->NextToken);
        push @{ $result->ExperimentSummaries }, @{ $next_result->ExperimentSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ExperimentSummaries') foreach (@{ $result->ExperimentSummaries });
        $result = $self->ListExperiments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ExperimentSummaries') foreach (@{ $result->ExperimentSummaries });
    }

    return undef
  }
  sub ListAllFlowDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFlowDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFlowDefinitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->FlowDefinitionSummaries }, @{ $next_result->FlowDefinitionSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FlowDefinitionSummaries') foreach (@{ $result->FlowDefinitionSummaries });
        $result = $self->ListFlowDefinitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FlowDefinitionSummaries') foreach (@{ $result->FlowDefinitionSummaries });
    }

    return undef
  }
  sub ListAllHumanTaskUis {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListHumanTaskUis(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListHumanTaskUis(@_, NextToken => $next_result->NextToken);
        push @{ $result->HumanTaskUiSummaries }, @{ $next_result->HumanTaskUiSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'HumanTaskUiSummaries') foreach (@{ $result->HumanTaskUiSummaries });
        $result = $self->ListHumanTaskUis(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'HumanTaskUiSummaries') foreach (@{ $result->HumanTaskUiSummaries });
    }

    return undef
  }
  sub ListAllHyperParameterTuningJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListHyperParameterTuningJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListHyperParameterTuningJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->HyperParameterTuningJobSummaries }, @{ $next_result->HyperParameterTuningJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'HyperParameterTuningJobSummaries') foreach (@{ $result->HyperParameterTuningJobSummaries });
        $result = $self->ListHyperParameterTuningJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'HyperParameterTuningJobSummaries') foreach (@{ $result->HyperParameterTuningJobSummaries });
    }

    return undef
  }
  sub ListAllLabelingJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLabelingJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLabelingJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->LabelingJobSummaryList }, @{ $next_result->LabelingJobSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LabelingJobSummaryList') foreach (@{ $result->LabelingJobSummaryList });
        $result = $self->ListLabelingJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LabelingJobSummaryList') foreach (@{ $result->LabelingJobSummaryList });
    }

    return undef
  }
  sub ListAllLabelingJobsForWorkteam {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLabelingJobsForWorkteam(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLabelingJobsForWorkteam(@_, NextToken => $next_result->NextToken);
        push @{ $result->LabelingJobSummaryList }, @{ $next_result->LabelingJobSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LabelingJobSummaryList') foreach (@{ $result->LabelingJobSummaryList });
        $result = $self->ListLabelingJobsForWorkteam(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LabelingJobSummaryList') foreach (@{ $result->LabelingJobSummaryList });
    }

    return undef
  }
  sub ListAllModelPackages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelPackages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListModelPackages(@_, NextToken => $next_result->NextToken);
        push @{ $result->ModelPackageSummaryList }, @{ $next_result->ModelPackageSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ModelPackageSummaryList') foreach (@{ $result->ModelPackageSummaryList });
        $result = $self->ListModelPackages(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ModelPackageSummaryList') foreach (@{ $result->ModelPackageSummaryList });
    }

    return undef
  }
  sub ListAllModels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListModels(@_, NextToken => $next_result->NextToken);
        push @{ $result->Models }, @{ $next_result->Models };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Models') foreach (@{ $result->Models });
        $result = $self->ListModels(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Models') foreach (@{ $result->Models });
    }

    return undef
  }
  sub ListAllMonitoringExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMonitoringExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMonitoringExecutions(@_, NextToken => $next_result->NextToken);
        push @{ $result->MonitoringExecutionSummaries }, @{ $next_result->MonitoringExecutionSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MonitoringExecutionSummaries') foreach (@{ $result->MonitoringExecutionSummaries });
        $result = $self->ListMonitoringExecutions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MonitoringExecutionSummaries') foreach (@{ $result->MonitoringExecutionSummaries });
    }

    return undef
  }
  sub ListAllMonitoringSchedules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMonitoringSchedules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMonitoringSchedules(@_, NextToken => $next_result->NextToken);
        push @{ $result->MonitoringScheduleSummaries }, @{ $next_result->MonitoringScheduleSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MonitoringScheduleSummaries') foreach (@{ $result->MonitoringScheduleSummaries });
        $result = $self->ListMonitoringSchedules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MonitoringScheduleSummaries') foreach (@{ $result->MonitoringScheduleSummaries });
    }

    return undef
  }
  sub ListAllNotebookInstanceLifecycleConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNotebookInstanceLifecycleConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListNotebookInstanceLifecycleConfigs(@_, NextToken => $next_result->NextToken);
        push @{ $result->NotebookInstanceLifecycleConfigs }, @{ $next_result->NotebookInstanceLifecycleConfigs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NotebookInstanceLifecycleConfigs') foreach (@{ $result->NotebookInstanceLifecycleConfigs });
        $result = $self->ListNotebookInstanceLifecycleConfigs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NotebookInstanceLifecycleConfigs') foreach (@{ $result->NotebookInstanceLifecycleConfigs });
    }

    return undef
  }
  sub ListAllNotebookInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNotebookInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListNotebookInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->NotebookInstances }, @{ $next_result->NotebookInstances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NotebookInstances') foreach (@{ $result->NotebookInstances });
        $result = $self->ListNotebookInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NotebookInstances') foreach (@{ $result->NotebookInstances });
    }

    return undef
  }
  sub ListAllProcessingJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProcessingJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListProcessingJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->ProcessingJobSummaries }, @{ $next_result->ProcessingJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ProcessingJobSummaries') foreach (@{ $result->ProcessingJobSummaries });
        $result = $self->ListProcessingJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ProcessingJobSummaries') foreach (@{ $result->ProcessingJobSummaries });
    }

    return undef
  }
  sub ListAllSubscribedWorkteams {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSubscribedWorkteams(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSubscribedWorkteams(@_, NextToken => $next_result->NextToken);
        push @{ $result->SubscribedWorkteams }, @{ $next_result->SubscribedWorkteams };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SubscribedWorkteams') foreach (@{ $result->SubscribedWorkteams });
        $result = $self->ListSubscribedWorkteams(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SubscribedWorkteams') foreach (@{ $result->SubscribedWorkteams });
    }

    return undef
  }
  sub ListAllTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTags(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTags(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }
  sub ListAllTrainingJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrainingJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTrainingJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrainingJobSummaries }, @{ $next_result->TrainingJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrainingJobSummaries') foreach (@{ $result->TrainingJobSummaries });
        $result = $self->ListTrainingJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrainingJobSummaries') foreach (@{ $result->TrainingJobSummaries });
    }

    return undef
  }
  sub ListAllTrainingJobsForHyperParameterTuningJob {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrainingJobsForHyperParameterTuningJob(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTrainingJobsForHyperParameterTuningJob(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrainingJobSummaries }, @{ $next_result->TrainingJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrainingJobSummaries') foreach (@{ $result->TrainingJobSummaries });
        $result = $self->ListTrainingJobsForHyperParameterTuningJob(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrainingJobSummaries') foreach (@{ $result->TrainingJobSummaries });
    }

    return undef
  }
  sub ListAllTransformJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTransformJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTransformJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->TransformJobSummaries }, @{ $next_result->TransformJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TransformJobSummaries') foreach (@{ $result->TransformJobSummaries });
        $result = $self->ListTransformJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TransformJobSummaries') foreach (@{ $result->TransformJobSummaries });
    }

    return undef
  }
  sub ListAllTrialComponents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrialComponents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTrialComponents(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrialComponentSummaries }, @{ $next_result->TrialComponentSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrialComponentSummaries') foreach (@{ $result->TrialComponentSummaries });
        $result = $self->ListTrialComponents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrialComponentSummaries') foreach (@{ $result->TrialComponentSummaries });
    }

    return undef
  }
  sub ListAllTrials {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTrials(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTrials(@_, NextToken => $next_result->NextToken);
        push @{ $result->TrialSummaries }, @{ $next_result->TrialSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TrialSummaries') foreach (@{ $result->TrialSummaries });
        $result = $self->ListTrials(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TrialSummaries') foreach (@{ $result->TrialSummaries });
    }

    return undef
  }
  sub ListAllUserProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUserProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUserProfiles(@_, NextToken => $next_result->NextToken);
        push @{ $result->UserProfiles }, @{ $next_result->UserProfiles };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'UserProfiles') foreach (@{ $result->UserProfiles });
        $result = $self->ListUserProfiles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'UserProfiles') foreach (@{ $result->UserProfiles });
    }

    return undef
  }
  sub ListAllWorkteams {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkteams(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListWorkteams(@_, NextToken => $next_result->NextToken);
        push @{ $result->Workteams }, @{ $next_result->Workteams };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Workteams') foreach (@{ $result->Workteams });
        $result = $self->ListWorkteams(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Workteams') foreach (@{ $result->Workteams });
    }

    return undef
  }
  sub SearchAll {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->Search(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->Search(@_, NextToken => $next_result->NextToken);
        push @{ $result->Results }, @{ $next_result->Results };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Results') foreach (@{ $result->Results });
        $result = $self->Search(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Results') foreach (@{ $result->Results });
    }

    return undef
  }


  sub operations { qw/AddTags AssociateTrialComponent CreateAlgorithm CreateApp CreateAutoMLJob CreateCodeRepository CreateCompilationJob CreateDomain CreateEndpoint CreateEndpointConfig CreateExperiment CreateFlowDefinition CreateHumanTaskUi CreateHyperParameterTuningJob CreateLabelingJob CreateModel CreateModelPackage CreateMonitoringSchedule CreateNotebookInstance CreateNotebookInstanceLifecycleConfig CreatePresignedDomainUrl CreatePresignedNotebookInstanceUrl CreateProcessingJob CreateTrainingJob CreateTransformJob CreateTrial CreateTrialComponent CreateUserProfile CreateWorkteam DeleteAlgorithm DeleteApp DeleteCodeRepository DeleteDomain DeleteEndpoint DeleteEndpointConfig DeleteExperiment DeleteFlowDefinition DeleteModel DeleteModelPackage DeleteMonitoringSchedule DeleteNotebookInstance DeleteNotebookInstanceLifecycleConfig DeleteTags DeleteTrial DeleteTrialComponent DeleteUserProfile DeleteWorkteam DescribeAlgorithm DescribeApp DescribeAutoMLJob DescribeCodeRepository DescribeCompilationJob DescribeDomain DescribeEndpoint DescribeEndpointConfig DescribeExperiment DescribeFlowDefinition DescribeHumanTaskUi DescribeHyperParameterTuningJob DescribeLabelingJob DescribeModel DescribeModelPackage DescribeMonitoringSchedule DescribeNotebookInstance DescribeNotebookInstanceLifecycleConfig DescribeProcessingJob DescribeSubscribedWorkteam DescribeTrainingJob DescribeTransformJob DescribeTrial DescribeTrialComponent DescribeUserProfile DescribeWorkforce DescribeWorkteam DisassociateTrialComponent GetSearchSuggestions ListAlgorithms ListApps ListAutoMLJobs ListCandidatesForAutoMLJob ListCodeRepositories ListCompilationJobs ListDomains ListEndpointConfigs ListEndpoints ListExperiments ListFlowDefinitions ListHumanTaskUis ListHyperParameterTuningJobs ListLabelingJobs ListLabelingJobsForWorkteam ListModelPackages ListModels ListMonitoringExecutions ListMonitoringSchedules ListNotebookInstanceLifecycleConfigs ListNotebookInstances ListProcessingJobs ListSubscribedWorkteams ListTags ListTrainingJobs ListTrainingJobsForHyperParameterTuningJob ListTransformJobs ListTrialComponents ListTrials ListUserProfiles ListWorkteams RenderUiTemplate Search StartMonitoringSchedule StartNotebookInstance StopAutoMLJob StopCompilationJob StopHyperParameterTuningJob StopLabelingJob StopMonitoringSchedule StopNotebookInstance StopProcessingJob StopTrainingJob StopTransformJob UpdateCodeRepository UpdateDomain UpdateEndpoint UpdateEndpointWeightsAndCapacities UpdateExperiment UpdateMonitoringSchedule UpdateNotebookInstance UpdateNotebookInstanceLifecycleConfig UpdateTrial UpdateTrialComponent UpdateUserProfile UpdateWorkforce UpdateWorkteam / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker - Perl Interface to AWS Amazon SageMaker Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SageMaker');
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

Provides APIs for creating and managing Amazon SageMaker resources.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker-2017-07-24>


=head1 METHODS

=head2 AddTags

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::SageMaker::Tag>]


=back

Each argument is described in detail in: L<Paws::SageMaker::AddTags>

Returns: a L<Paws::SageMaker::AddTagsOutput> instance

Adds or overwrites one or more tags for the specified Amazon SageMaker
resource. You can add tags to notebook instances, training jobs,
hyperparameter tuning jobs, batch transform jobs, models, labeling
jobs, work teams, endpoint configurations, and endpoints.

Each tag consists of a key and an optional value. Tag keys must be
unique per resource. For more information about tags, see For more
information, see AWS Tagging Strategies
(https://aws.amazon.com/answers/account-management/aws-tagging-strategies/).

Tags that you add to a hyperparameter tuning job by calling this API
are also added to any training jobs that the hyperparameter tuning job
launches after you call this API, but not to training jobs that the
hyperparameter tuning job launched before you called this API. To make
sure that the tags associated with a hyperparameter tuning job are also
added to all training jobs that the hyperparameter tuning job launches,
add the tags when you first create the tuning job by specifying them in
the C<Tags> parameter of CreateHyperParameterTuningJob


=head2 AssociateTrialComponent

=over

=item TrialComponentName => Str

=item TrialName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::AssociateTrialComponent>

Returns: a L<Paws::SageMaker::AssociateTrialComponentResponse> instance

Associates a trial component with a trial. A trial component can be
associated with multiple trials. To disassociate a trial component from
a trial, call the DisassociateTrialComponent API.


=head2 CreateAlgorithm

=over

=item AlgorithmName => Str

=item TrainingSpecification => L<Paws::SageMaker::TrainingSpecification>

=item [AlgorithmDescription => Str]

=item [CertifyForMarketplace => Bool]

=item [InferenceSpecification => L<Paws::SageMaker::InferenceSpecification>]

=item [ValidationSpecification => L<Paws::SageMaker::AlgorithmValidationSpecification>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateAlgorithm>

Returns: a L<Paws::SageMaker::CreateAlgorithmOutput> instance

Create a machine learning algorithm that you can use in Amazon
SageMaker and list in the AWS Marketplace.


=head2 CreateApp

=over

=item AppName => Str

=item AppType => Str

=item DomainId => Str

=item UserProfileName => Str

=item [ResourceSpec => L<Paws::SageMaker::ResourceSpec>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateApp>

Returns: a L<Paws::SageMaker::CreateAppResponse> instance

Creates a running App for the specified UserProfile. Supported Apps are
JupyterServer and KernelGateway. This operation is automatically
invoked by Amazon SageMaker Amazon SageMaker Studio (Studio) upon
access to the associated Studio Domain, and when new kernel
configurations are selected by the user. A user may have multiple Apps
active simultaneously. Apps will automatically terminate and be deleted
when stopped from within Studio, or when the DeleteApp API is manually
called. UserProfiles are limited to 5 concurrently running Apps at a
time.


=head2 CreateAutoMLJob

=over

=item AutoMLJobName => Str

=item InputDataConfig => ArrayRef[L<Paws::SageMaker::AutoMLChannel>]

=item OutputDataConfig => L<Paws::SageMaker::AutoMLOutputDataConfig>

=item RoleArn => Str

=item [AutoMLJobConfig => L<Paws::SageMaker::AutoMLJobConfig>]

=item [AutoMLJobObjective => L<Paws::SageMaker::AutoMLJobObjective>]

=item [GenerateCandidateDefinitionsOnly => Bool]

=item [ProblemType => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateAutoMLJob>

Returns: a L<Paws::SageMaker::CreateAutoMLJobResponse> instance

Creates an AutoPilot job.


=head2 CreateCodeRepository

=over

=item CodeRepositoryName => Str

=item GitConfig => L<Paws::SageMaker::GitConfig>


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateCodeRepository>

Returns: a L<Paws::SageMaker::CreateCodeRepositoryOutput> instance

Creates a Git repository as a resource in your Amazon SageMaker
account. You can associate the repository with notebook instances so
that you can use Git source control for the notebooks you create. The
Git repository is a resource in your Amazon SageMaker account, so it
can be associated with more than one notebook instance, and it persists
independently from the lifecycle of any notebook instances it is
associated with.

The repository can be hosted either in AWS CodeCommit
(https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html)
or in any other Git repository.


=head2 CreateCompilationJob

=over

=item CompilationJobName => Str

=item InputConfig => L<Paws::SageMaker::InputConfig>

=item OutputConfig => L<Paws::SageMaker::OutputConfig>

=item RoleArn => Str

=item StoppingCondition => L<Paws::SageMaker::StoppingCondition>


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateCompilationJob>

Returns: a L<Paws::SageMaker::CreateCompilationJobResponse> instance

Starts a model compilation job. After the model has been compiled,
Amazon SageMaker saves the resulting model artifacts to an Amazon
Simple Storage Service (Amazon S3) bucket that you specify.

If you choose to host your model using Amazon SageMaker hosting
services, you can use the resulting model artifacts as part of the
model. You can also use the artifacts with AWS IoT Greengrass. In that
case, deploy them as an ML resource.

In the request body, you provide the following:

=over

=item *

A name for the compilation job

=item *

Information about the input model artifacts

=item *

The output location for the compiled model and the device (target) that
the model runs on

=item *

C<The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker
assumes to perform the model compilation job>

=back

You can also provide a C<Tag> to track the model compilation job's
resource use and costs. The response body contains the
C<CompilationJobArn> for the compiled job.

To stop a model compilation job, use StopCompilationJob. To get
information about a particular model compilation job, use
DescribeCompilationJob. To get information about multiple model
compilation jobs, use ListCompilationJobs.


=head2 CreateDomain

=over

=item AuthMode => Str

=item DefaultUserSettings => L<Paws::SageMaker::UserSettings>

=item DomainName => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item VpcId => Str

=item [HomeEfsFileSystemKmsKeyId => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateDomain>

Returns: a L<Paws::SageMaker::CreateDomainResponse> instance

Creates a Domain for Amazon SageMaker Amazon SageMaker Studio (Studio),
which can be accessed by end-users in a web browser. A Domain has an
associated directory, list of authorized users, and a variety of
security, application, policies, and Amazon Virtual Private Cloud
configurations. An AWS account is limited to one Domain, per region.
Users within a domain can share notebook files and other artifacts with
each other. When a Domain is created, an Amazon Elastic File System
(EFS) is also created for use by all of the users within the Domain.
Each user receives a private home directory within the EFS for
notebooks, Git repositories, and data files.


=head2 CreateEndpoint

=over

=item EndpointConfigName => Str

=item EndpointName => Str

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateEndpoint>

Returns: a L<Paws::SageMaker::CreateEndpointOutput> instance

Creates an endpoint using the endpoint configuration specified in the
request. Amazon SageMaker uses the endpoint to provision resources and
deploy models. You create the endpoint configuration with the
CreateEndpointConfig
(https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpointConfig.html)
API.

Use this API only for hosting models using Amazon SageMaker hosting
services.

You must not delete an C<EndpointConfig> in use by an endpoint that is
live or while the C<UpdateEndpoint> or C<CreateEndpoint> operations are
being performed on the endpoint. To update an endpoint, you must create
a new C<EndpointConfig>.

The endpoint name must be unique within an AWS Region in your AWS
account.

When it receives the request, Amazon SageMaker creates the endpoint,
launches the resources (ML compute instances), and deploys the model(s)
on them.

When Amazon SageMaker receives the request, it sets the endpoint status
to C<Creating>. After it creates the endpoint, it sets the status to
C<InService>. Amazon SageMaker can then process incoming requests for
inferences. To check the status of an endpoint, use the
DescribeEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/dg/API_DescribeEndpoint.html)
API.

For an example, see Exercise 1: Using the K-Means Algorithm Provided by
Amazon SageMaker
(https://docs.aws.amazon.com/sagemaker/latest/dg/ex1.html).

If any of the models hosted at this endpoint get model data from an
Amazon S3 location, Amazon SageMaker uses AWS Security Token Service to
download model artifacts from the S3 path you provided. AWS STS is
activated in your IAM user account by default. If you previously
deactivated AWS STS for a region, you need to reactivate AWS STS for
that region. For more information, see Activating and Deactivating AWS
STS in an AWS Region
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
in the I<AWS Identity and Access Management User Guide>.


=head2 CreateEndpointConfig

=over

=item EndpointConfigName => Str

=item ProductionVariants => ArrayRef[L<Paws::SageMaker::ProductionVariant>]

=item [DataCaptureConfig => L<Paws::SageMaker::DataCaptureConfig>]

=item [KmsKeyId => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateEndpointConfig>

Returns: a L<Paws::SageMaker::CreateEndpointConfigOutput> instance

Creates an endpoint configuration that Amazon SageMaker hosting
services uses to deploy models. In the configuration, you identify one
or more models, created using the C<CreateModel> API, to deploy and the
resources that you want Amazon SageMaker to provision. Then you call
the CreateEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html)
API.

Use this API only if you want to use Amazon SageMaker hosting services
to deploy models into production.

In the request, you define one or more C<ProductionVariant>s, each of
which identifies a model. Each C<ProductionVariant> parameter also
describes the resources that you want Amazon SageMaker to provision.
This includes the number and type of ML compute instances to deploy.

If you are hosting multiple models, you also assign a C<VariantWeight>
to specify how much traffic you want to allocate to each model. For
example, suppose that you want to host two models, A and B, and you
assign traffic weight 2 for model A and 1 for model B. Amazon SageMaker
distributes two-thirds of the traffic to Model A, and one-third to
model B.


=head2 CreateExperiment

=over

=item ExperimentName => Str

=item [Description => Str]

=item [DisplayName => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateExperiment>

Returns: a L<Paws::SageMaker::CreateExperimentResponse> instance

Creates an Amazon SageMaker I<experiment>. An experiment is a
collection of I<trials> that are observed, compared and evaluated as a
group. A trial is a set of steps, called I<trial components>, that
produce a machine learning model.

The goal of an experiment is to determine the components that produce
the best model. Multiple trials are performed, each one isolating and
measuring the impact of a change to one or more inputs, while keeping
the remaining inputs constant.

When you use Amazon SageMaker Studio or the Amazon SageMaker Python
SDK, all experiments, trials, and trial components are automatically
tracked, logged, and indexed. When you use the AWS SDK for Python
(Boto), you must use the logging APIs provided by the SDK.

You can add tags to experiments, trials, trial components and then use
the Search API to search for the tags.

To add a description to an experiment, specify the optional
C<Description> parameter. To add a description later, or to change the
description, call the UpdateExperiment API.

To get a list of all your experiments, call the ListExperiments API. To
view an experiment's properties, call the DescribeExperiment API. To
get a list of all the trials associated with an experiment, call the
ListTrials API. To create a trial call the CreateTrial API.


=head2 CreateFlowDefinition

=over

=item FlowDefinitionName => Str

=item HumanLoopConfig => L<Paws::SageMaker::HumanLoopConfig>

=item OutputConfig => L<Paws::SageMaker::FlowDefinitionOutputConfig>

=item RoleArn => Str

=item [HumanLoopActivationConfig => L<Paws::SageMaker::HumanLoopActivationConfig>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateFlowDefinition>

Returns: a L<Paws::SageMaker::CreateFlowDefinitionResponse> instance

Creates a flow definition.


=head2 CreateHumanTaskUi

=over

=item HumanTaskUiName => Str

=item UiTemplate => L<Paws::SageMaker::UiTemplate>

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateHumanTaskUi>

Returns: a L<Paws::SageMaker::CreateHumanTaskUiResponse> instance

Defines the settings you will use for the human review workflow user
interface. Reviewers will see a three-panel interface with an
instruction area, the item to review, and an input area.


=head2 CreateHyperParameterTuningJob

=over

=item HyperParameterTuningJobConfig => L<Paws::SageMaker::HyperParameterTuningJobConfig>

=item HyperParameterTuningJobName => Str

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [TrainingJobDefinition => L<Paws::SageMaker::HyperParameterTrainingJobDefinition>]

=item [TrainingJobDefinitions => ArrayRef[L<Paws::SageMaker::HyperParameterTrainingJobDefinition>]]

=item [WarmStartConfig => L<Paws::SageMaker::HyperParameterTuningJobWarmStartConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateHyperParameterTuningJob>

Returns: a L<Paws::SageMaker::CreateHyperParameterTuningJobResponse> instance

Starts a hyperparameter tuning job. A hyperparameter tuning job finds
the best version of a model by running many training jobs on your
dataset using the algorithm you choose and values for hyperparameters
within ranges that you specify. It then chooses the hyperparameter
values that result in a model that performs the best, as measured by an
objective metric that you choose.


=head2 CreateLabelingJob

=over

=item HumanTaskConfig => L<Paws::SageMaker::HumanTaskConfig>

=item InputConfig => L<Paws::SageMaker::LabelingJobInputConfig>

=item LabelAttributeName => Str

=item LabelingJobName => Str

=item OutputConfig => L<Paws::SageMaker::LabelingJobOutputConfig>

=item RoleArn => Str

=item [LabelCategoryConfigS3Uri => Str]

=item [LabelingJobAlgorithmsConfig => L<Paws::SageMaker::LabelingJobAlgorithmsConfig>]

=item [StoppingConditions => L<Paws::SageMaker::LabelingJobStoppingConditions>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateLabelingJob>

Returns: a L<Paws::SageMaker::CreateLabelingJobResponse> instance

Creates a job that uses workers to label the data objects in your input
dataset. You can use the labeled data to train machine learning models.

You can select your workforce from one of three providers:

=over

=item *

A private workforce that you create. It can include employees,
contractors, and outside experts. Use a private workforce when want the
data to stay within your organization or when a specific set of skills
is required.

=item *

One or more vendors that you select from the AWS Marketplace. Vendors
provide expertise in specific areas.

=item *

The Amazon Mechanical Turk workforce. This is the largest workforce,
but it should only be used for public data or data that has been
stripped of any personally identifiable information.

=back

You can also use I<automated data labeling> to reduce the number of
data objects that need to be labeled by a human. Automated data
labeling uses I<active learning> to determine if a data object can be
labeled by machine or if it needs to be sent to a human worker. For
more information, see Using Automated Data Labeling
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-automated-labeling.html).

The data objects to be labeled are contained in an Amazon S3 bucket.
You create a I<manifest file> that describes the location of each
object. For more information, see Using Input and Output Data
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-data.html).

The output can be used as the manifest file for another labeling job or
as training data for your machine learning models.


=head2 CreateModel

=over

=item ExecutionRoleArn => Str

=item ModelName => Str

=item [Containers => ArrayRef[L<Paws::SageMaker::ContainerDefinition>]]

=item [EnableNetworkIsolation => Bool]

=item [PrimaryContainer => L<Paws::SageMaker::ContainerDefinition>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [VpcConfig => L<Paws::SageMaker::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateModel>

Returns: a L<Paws::SageMaker::CreateModelOutput> instance

Creates a model in Amazon SageMaker. In the request, you name the model
and describe a primary container. For the primary container, you
specify the docker image containing inference code, artifacts (from
prior training), and custom environment map that the inference code
uses when you deploy the model for predictions.

Use this API to create a model if you want to use Amazon SageMaker
hosting services or run a batch transform job.

To host your model, you create an endpoint configuration with the
C<CreateEndpointConfig> API, and then create an endpoint with the
C<CreateEndpoint> API. Amazon SageMaker then deploys all of the
containers that you defined for the model in the hosting environment.

To run a batch transform using your model, you start a job with the
C<CreateTransformJob> API. Amazon SageMaker uses your model and your
dataset to get inferences which are then saved to a specified S3
location.

In the C<CreateModel> request, you must define a container with the
C<PrimaryContainer> parameter.

In the request, you also provide an IAM role that Amazon SageMaker can
assume to access model artifacts and docker image for deployment on ML
compute hosting instances or for batch transform jobs. In addition, you
also use the IAM role to manage permissions the inference code needs.
For example, if the inference code access any other AWS resources, you
grant necessary permissions via this role.


=head2 CreateModelPackage

=over

=item ModelPackageName => Str

=item [CertifyForMarketplace => Bool]

=item [InferenceSpecification => L<Paws::SageMaker::InferenceSpecification>]

=item [ModelPackageDescription => Str]

=item [SourceAlgorithmSpecification => L<Paws::SageMaker::SourceAlgorithmSpecification>]

=item [ValidationSpecification => L<Paws::SageMaker::ModelPackageValidationSpecification>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateModelPackage>

Returns: a L<Paws::SageMaker::CreateModelPackageOutput> instance

Creates a model package that you can use to create Amazon SageMaker
models or list on AWS Marketplace. Buyers can subscribe to model
packages listed on AWS Marketplace to create models in Amazon
SageMaker.

To create a model package by specifying a Docker container that
contains your inference code and the Amazon S3 location of your model
artifacts, provide values for C<InferenceSpecification>. To create a
model from an algorithm resource that you created or subscribed to in
AWS Marketplace, provide a value for C<SourceAlgorithmSpecification>.


=head2 CreateMonitoringSchedule

=over

=item MonitoringScheduleConfig => L<Paws::SageMaker::MonitoringScheduleConfig>

=item MonitoringScheduleName => Str

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateMonitoringSchedule>

Returns: a L<Paws::SageMaker::CreateMonitoringScheduleResponse> instance

Creates a schedule that regularly starts Amazon SageMaker Processing
Jobs to monitor the data captured for an Amazon SageMaker Endoint.


=head2 CreateNotebookInstance

=over

=item InstanceType => Str

=item NotebookInstanceName => Str

=item RoleArn => Str

=item [AcceleratorTypes => ArrayRef[Str|Undef]]

=item [AdditionalCodeRepositories => ArrayRef[Str|Undef]]

=item [DefaultCodeRepository => Str]

=item [DirectInternetAccess => Str]

=item [KmsKeyId => Str]

=item [LifecycleConfigName => Str]

=item [RootAccess => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SubnetId => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [VolumeSizeInGB => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateNotebookInstance>

Returns: a L<Paws::SageMaker::CreateNotebookInstanceOutput> instance

Creates an Amazon SageMaker notebook instance. A notebook instance is a
machine learning (ML) compute instance running on a Jupyter notebook.

In a C<CreateNotebookInstance> request, specify the type of ML compute
instance that you want to run. Amazon SageMaker launches the instance,
installs common libraries that you can use to explore datasets for
model training, and attaches an ML storage volume to the notebook
instance.

Amazon SageMaker also provides a set of example notebooks. Each
notebook demonstrates how to use Amazon SageMaker with a specific
algorithm or with a machine learning framework.

After receiving the request, Amazon SageMaker does the following:

=over

=item 1.

Creates a network interface in the Amazon SageMaker VPC.

=item 2.

(Option) If you specified C<SubnetId>, Amazon SageMaker creates a
network interface in your own VPC, which is inferred from the subnet ID
that you provide in the input. When creating this network interface,
Amazon SageMaker attaches the security group that you specified in the
request to the network interface that it creates in your VPC.

=item 3.

Launches an EC2 instance of the type specified in the request in the
Amazon SageMaker VPC. If you specified C<SubnetId> of your VPC, Amazon
SageMaker specifies both network interfaces when launching this
instance. This enables inbound traffic from your own VPC to the
notebook instance, assuming that the security groups allow it.

=back

After creating the notebook instance, Amazon SageMaker returns its
Amazon Resource Name (ARN). You can't change the name of a notebook
instance after you create it.

After Amazon SageMaker creates the notebook instance, you can connect
to the Jupyter server and work in Jupyter notebooks. For example, you
can write code to explore a dataset that you can use for model
training, train a model, host models by creating Amazon SageMaker
endpoints, and validate hosted models.

For more information, see How It Works
(https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).


=head2 CreateNotebookInstanceLifecycleConfig

=over

=item NotebookInstanceLifecycleConfigName => Str

=item [OnCreate => ArrayRef[L<Paws::SageMaker::NotebookInstanceLifecycleHook>]]

=item [OnStart => ArrayRef[L<Paws::SageMaker::NotebookInstanceLifecycleHook>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateNotebookInstanceLifecycleConfig>

Returns: a L<Paws::SageMaker::CreateNotebookInstanceLifecycleConfigOutput> instance

Creates a lifecycle configuration that you can associate with a
notebook instance. A I<lifecycle configuration> is a collection of
shell scripts that run when you create or start a notebook instance.

Each lifecycle configuration script has a limit of 16384 characters.

The value of the C<$PATH> environment variable that is available to
both scripts is C</sbin:bin:/usr/sbin:/usr/bin>.

View CloudWatch Logs for notebook instance lifecycle configurations in
log group C</aws/sagemaker/NotebookInstances> in log stream
C<[notebook-instance-name]/[LifecycleConfigHook]>.

Lifecycle configuration scripts cannot run for longer than 5 minutes.
If a script runs for longer than 5 minutes, it fails and the notebook
instance is not created or started.

For information about notebook instance lifestyle configurations, see
Step 2.1: (Optional) Customize a Notebook Instance
(https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html).


=head2 CreatePresignedDomainUrl

=over

=item DomainId => Str

=item UserProfileName => Str

=item [SessionExpirationDurationInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreatePresignedDomainUrl>

Returns: a L<Paws::SageMaker::CreatePresignedDomainUrlResponse> instance

Creates a URL for a specified UserProfile in a Domain. When accessed in
a web browser, the user will be automatically signed in to Amazon
SageMaker Amazon SageMaker Studio (Studio), and granted access to all
of the Apps and files associated with that Amazon Elastic File System
(EFS). This operation can only be called when AuthMode equals IAM.


=head2 CreatePresignedNotebookInstanceUrl

=over

=item NotebookInstanceName => Str

=item [SessionExpirationDurationInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreatePresignedNotebookInstanceUrl>

Returns: a L<Paws::SageMaker::CreatePresignedNotebookInstanceUrlOutput> instance

Returns a URL that you can use to connect to the Jupyter server from a
notebook instance. In the Amazon SageMaker console, when you choose
C<Open> next to a notebook instance, Amazon SageMaker opens a new tab
showing the Jupyter server home page from the notebook instance. The
console uses this API to get the URL and show the page.

IAM authorization policies for this API are also enforced for every
HTTP request and WebSocket frame that attempts to connect to the
notebook instance.For example, you can restrict access to this API and
to the URL that it returns to a list of IP addresses that you specify.
Use the C<NotIpAddress> condition operator and the C<aws:SourceIP>
condition context key to specify the list of IP addresses that you want
to have access to the notebook instance. For more information, see
Limit Access to a Notebook Instance by IP Address
(https://docs.aws.amazon.com/sagemaker/latest/dg/security_iam_id-based-policy-examples.html#nbi-ip-filter).

The URL that you get from a call to is valid only for 5 minutes. If you
try to use the URL after the 5-minute limit expires, you are directed
to the AWS console sign-in page.


=head2 CreateProcessingJob

=over

=item AppSpecification => L<Paws::SageMaker::AppSpecification>

=item ProcessingJobName => Str

=item ProcessingResources => L<Paws::SageMaker::ProcessingResources>

=item RoleArn => Str

=item [Environment => L<Paws::SageMaker::ProcessingEnvironmentMap>]

=item [ExperimentConfig => L<Paws::SageMaker::ExperimentConfig>]

=item [NetworkConfig => L<Paws::SageMaker::NetworkConfig>]

=item [ProcessingInputs => ArrayRef[L<Paws::SageMaker::ProcessingInput>]]

=item [ProcessingOutputConfig => L<Paws::SageMaker::ProcessingOutputConfig>]

=item [StoppingCondition => L<Paws::SageMaker::ProcessingStoppingCondition>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateProcessingJob>

Returns: a L<Paws::SageMaker::CreateProcessingJobResponse> instance

Creates a processing job.


=head2 CreateTrainingJob

=over

=item AlgorithmSpecification => L<Paws::SageMaker::AlgorithmSpecification>

=item OutputDataConfig => L<Paws::SageMaker::OutputDataConfig>

=item ResourceConfig => L<Paws::SageMaker::ResourceConfig>

=item RoleArn => Str

=item StoppingCondition => L<Paws::SageMaker::StoppingCondition>

=item TrainingJobName => Str

=item [CheckpointConfig => L<Paws::SageMaker::CheckpointConfig>]

=item [DebugHookConfig => L<Paws::SageMaker::DebugHookConfig>]

=item [DebugRuleConfigurations => ArrayRef[L<Paws::SageMaker::DebugRuleConfiguration>]]

=item [EnableInterContainerTrafficEncryption => Bool]

=item [EnableManagedSpotTraining => Bool]

=item [EnableNetworkIsolation => Bool]

=item [ExperimentConfig => L<Paws::SageMaker::ExperimentConfig>]

=item [HyperParameters => L<Paws::SageMaker::HyperParameters>]

=item [InputDataConfig => ArrayRef[L<Paws::SageMaker::Channel>]]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [TensorBoardOutputConfig => L<Paws::SageMaker::TensorBoardOutputConfig>]

=item [VpcConfig => L<Paws::SageMaker::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateTrainingJob>

Returns: a L<Paws::SageMaker::CreateTrainingJobResponse> instance

Starts a model training job. After training completes, Amazon SageMaker
saves the resulting model artifacts to an Amazon S3 location that you
specify.

If you choose to host your model using Amazon SageMaker hosting
services, you can use the resulting model artifacts as part of the
model. You can also use the artifacts in a machine learning service
other than Amazon SageMaker, provided that you know how to use them for
inferences.

In the request body, you provide the following:

=over

=item *

C<AlgorithmSpecification> - Identifies the training algorithm to use.

=item *

C<HyperParameters> - Specify these algorithm-specific parameters to
enable the estimation of model parameters during training.
Hyperparameters can be tuned to optimize this learning process. For a
list of hyperparameters for each training algorithm provided by Amazon
SageMaker, see Algorithms
(https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html).

=item *

C<InputDataConfig> - Describes the training dataset and the Amazon S3,
EFS, or FSx location where it is stored.

=item *

C<OutputDataConfig> - Identifies the Amazon S3 bucket where you want
Amazon SageMaker to save the results of model training.

=item *

C<ResourceConfig> - Identifies the resources, ML compute instances, and
ML storage volumes to deploy for model training. In distributed
training, you specify more than one instance.

=item *

C<EnableManagedSpotTraining> - Optimize the cost of training machine
learning models by up to 80% by using Amazon EC2 Spot instances. For
more information, see Managed Spot Training
(https://docs.aws.amazon.com/sagemaker/latest/dg/model-managed-spot-training.html).

=item *

C<RoleARN> - The Amazon Resource Number (ARN) that Amazon SageMaker
assumes to perform tasks on your behalf during model training. You must
grant this role the necessary permissions so that Amazon SageMaker can
successfully complete model training.

=item *

C<StoppingCondition> - To help cap training costs, use
C<MaxRuntimeInSeconds> to set a time limit for training. Use
C<MaxWaitTimeInSeconds> to specify how long you are willing to wait for
a managed spot training job to complete.

=back

For more information about Amazon SageMaker, see How It Works
(https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).


=head2 CreateTransformJob

=over

=item ModelName => Str

=item TransformInput => L<Paws::SageMaker::TransformInput>

=item TransformJobName => Str

=item TransformOutput => L<Paws::SageMaker::TransformOutput>

=item TransformResources => L<Paws::SageMaker::TransformResources>

=item [BatchStrategy => Str]

=item [DataProcessing => L<Paws::SageMaker::DataProcessing>]

=item [Environment => L<Paws::SageMaker::TransformEnvironmentMap>]

=item [ExperimentConfig => L<Paws::SageMaker::ExperimentConfig>]

=item [MaxConcurrentTransforms => Int]

=item [MaxPayloadInMB => Int]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateTransformJob>

Returns: a L<Paws::SageMaker::CreateTransformJobResponse> instance

Starts a transform job. A transform job uses a trained model to get
inferences on a dataset and saves these results to an Amazon S3
location that you specify.

To perform batch transformations, you create a transform job and use
the data that you have readily available.

In the request body, you provide the following:

=over

=item *

C<TransformJobName> - Identifies the transform job. The name must be
unique within an AWS Region in an AWS account.

=item *

C<ModelName> - Identifies the model to use. C<ModelName> must be the
name of an existing Amazon SageMaker model in the same AWS Region and
AWS account. For information on creating a model, see CreateModel.

=item *

C<TransformInput> - Describes the dataset to be transformed and the
Amazon S3 location where it is stored.

=item *

C<TransformOutput> - Identifies the Amazon S3 location where you want
Amazon SageMaker to save the results from the transform job.

=item *

C<TransformResources> - Identifies the ML compute instances for the
transform job.

=back

For more information about how batch transformation works, see Batch
Transform
(https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform.html).


=head2 CreateTrial

=over

=item ExperimentName => Str

=item TrialName => Str

=item [DisplayName => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateTrial>

Returns: a L<Paws::SageMaker::CreateTrialResponse> instance

Creates an Amazon SageMaker I<trial>. A trial is a set of steps called
I<trial components> that produce a machine learning model. A trial is
part of a single Amazon SageMaker I<experiment>.

When you use Amazon SageMaker Studio or the Amazon SageMaker Python
SDK, all experiments, trials, and trial components are automatically
tracked, logged, and indexed. When you use the AWS SDK for Python
(Boto), you must use the logging APIs provided by the SDK.

You can add tags to a trial and then use the Search API to search for
the tags.

To get a list of all your trials, call the ListTrials API. To view a
trial's properties, call the DescribeTrial API. To create a trial
component, call the CreateTrialComponent API.


=head2 CreateTrialComponent

=over

=item TrialComponentName => Str

=item [DisplayName => Str]

=item [EndTime => Str]

=item [InputArtifacts => L<Paws::SageMaker::TrialComponentArtifacts>]

=item [OutputArtifacts => L<Paws::SageMaker::TrialComponentArtifacts>]

=item [Parameters => L<Paws::SageMaker::TrialComponentParameters>]

=item [StartTime => Str]

=item [Status => L<Paws::SageMaker::TrialComponentStatus>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateTrialComponent>

Returns: a L<Paws::SageMaker::CreateTrialComponentResponse> instance

Creates a I<trial component>, which is a stage of a machine learning
I<trial>. A trial is composed of one or more trial components. A trial
component can be used in multiple trials.

Trial components include pre-processing jobs, training jobs, and batch
transform jobs.

When you use Amazon SageMaker Studio or the Amazon SageMaker Python
SDK, all experiments, trials, and trial components are automatically
tracked, logged, and indexed. When you use the AWS SDK for Python
(Boto), you must use the logging APIs provided by the SDK.

You can add tags to a trial component and then use the Search API to
search for the tags.

C<CreateTrialComponent> can only be invoked from within an Amazon
SageMaker managed environment. This includes Amazon SageMaker training
jobs, processing jobs, transform jobs, and Amazon SageMaker notebooks.
A call to C<CreateTrialComponent> from outside one of these
environments results in an error.


=head2 CreateUserProfile

=over

=item DomainId => Str

=item UserProfileName => Str

=item [SingleSignOnUserIdentifier => Str]

=item [SingleSignOnUserValue => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [UserSettings => L<Paws::SageMaker::UserSettings>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateUserProfile>

Returns: a L<Paws::SageMaker::CreateUserProfileResponse> instance

Creates a new user profile. A user profile represents a single user
within a Domain, and is the main way to reference a "person" for the
purposes of sharing, reporting and other user-oriented features. This
entity is created during on-boarding. If an administrator invites a
person by email or imports them from SSO, a new UserProfile is
automatically created. This entity is the primary holder of settings
for an individual user and has a reference to the user's private Amazon
Elastic File System (EFS) home directory.


=head2 CreateWorkteam

=over

=item Description => Str

=item MemberDefinitions => ArrayRef[L<Paws::SageMaker::MemberDefinition>]

=item WorkteamName => Str

=item [NotificationConfiguration => L<Paws::SageMaker::NotificationConfiguration>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateWorkteam>

Returns: a L<Paws::SageMaker::CreateWorkteamResponse> instance

Creates a new work team for labeling your data. A work team is defined
by one or more Amazon Cognito user pools. You must first create the
user pools before you can create a work team.

You cannot create more than 25 work teams in an account and region.


=head2 DeleteAlgorithm

=over

=item AlgorithmName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteAlgorithm>

Returns: nothing

Removes the specified algorithm from your account.


=head2 DeleteApp

=over

=item AppName => Str

=item AppType => Str

=item DomainId => Str

=item UserProfileName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteApp>

Returns: nothing

Used to stop and delete an app.


=head2 DeleteCodeRepository

=over

=item CodeRepositoryName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteCodeRepository>

Returns: nothing

Deletes the specified Git repository from your account.


=head2 DeleteDomain

=over

=item DomainId => Str

=item [RetentionPolicy => L<Paws::SageMaker::RetentionPolicy>]


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteDomain>

Returns: nothing

Used to delete a domain. If you on-boarded with IAM mode, you will need
to delete your domain to on-board again using SSO. Use with caution.
All of the members of the domain will lose access to their EFS volume,
including data, notebooks, and other artifacts.


=head2 DeleteEndpoint

=over

=item EndpointName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteEndpoint>

Returns: nothing

Deletes an endpoint. Amazon SageMaker frees up all of the resources
that were deployed when the endpoint was created.

Amazon SageMaker retires any custom KMS key grants associated with the
endpoint, meaning you don't need to use the RevokeGrant
(http://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html)
API call.


=head2 DeleteEndpointConfig

=over

=item EndpointConfigName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteEndpointConfig>

Returns: nothing

Deletes an endpoint configuration. The C<DeleteEndpointConfig> API
deletes only the specified configuration. It does not delete endpoints
created using the configuration.


=head2 DeleteExperiment

=over

=item ExperimentName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteExperiment>

Returns: a L<Paws::SageMaker::DeleteExperimentResponse> instance

Deletes an Amazon SageMaker experiment. All trials associated with the
experiment must be deleted first. Use the ListTrials API to get a list
of the trials associated with the experiment.


=head2 DeleteFlowDefinition

=over

=item FlowDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteFlowDefinition>

Returns: a L<Paws::SageMaker::DeleteFlowDefinitionResponse> instance

Deletes the specified flow definition.


=head2 DeleteModel

=over

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteModel>

Returns: nothing

Deletes a model. The C<DeleteModel> API deletes only the model entry
that was created in Amazon SageMaker when you called the CreateModel
(https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateModel.html)
API. It does not delete model artifacts, inference code, or the IAM
role that you specified when creating the model.


=head2 DeleteModelPackage

=over

=item ModelPackageName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteModelPackage>

Returns: nothing

Deletes a model package.

A model package is used to create Amazon SageMaker models or list on
AWS Marketplace. Buyers can subscribe to model packages listed on AWS
Marketplace to create models in Amazon SageMaker.


=head2 DeleteMonitoringSchedule

=over

=item MonitoringScheduleName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteMonitoringSchedule>

Returns: nothing

Deletes a monitoring schedule. Also stops the schedule had not already
been stopped. This does not delete the job execution history of the
monitoring schedule.


=head2 DeleteNotebookInstance

=over

=item NotebookInstanceName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteNotebookInstance>

Returns: nothing

Deletes an Amazon SageMaker notebook instance. Before you can delete a
notebook instance, you must call the C<StopNotebookInstance> API.

When you delete a notebook instance, you lose all of your data. Amazon
SageMaker removes the ML compute instance, and deletes the ML storage
volume and the network interface associated with the notebook instance.


=head2 DeleteNotebookInstanceLifecycleConfig

=over

=item NotebookInstanceLifecycleConfigName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteNotebookInstanceLifecycleConfig>

Returns: nothing

Deletes a notebook instance lifecycle configuration.


=head2 DeleteTags

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteTags>

Returns: a L<Paws::SageMaker::DeleteTagsOutput> instance

Deletes the specified tags from an Amazon SageMaker resource.

To list a resource's tags, use the C<ListTags> API.

When you call this API to delete tags from a hyperparameter tuning job,
the deleted tags are not removed from training jobs that the
hyperparameter tuning job launched before you called this API.


=head2 DeleteTrial

=over

=item TrialName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteTrial>

Returns: a L<Paws::SageMaker::DeleteTrialResponse> instance

Deletes the specified trial. All trial components that make up the
trial must be deleted first. Use the DescribeTrialComponent API to get
the list of trial components.


=head2 DeleteTrialComponent

=over

=item TrialComponentName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteTrialComponent>

Returns: a L<Paws::SageMaker::DeleteTrialComponentResponse> instance

Deletes the specified trial component. A trial component must be
disassociated from all trials before the trial component can be
deleted. To disassociate a trial component from a trial, call the
DisassociateTrialComponent API.


=head2 DeleteUserProfile

=over

=item DomainId => Str

=item UserProfileName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteUserProfile>

Returns: nothing

Deletes a user profile.


=head2 DeleteWorkteam

=over

=item WorkteamName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteWorkteam>

Returns: a L<Paws::SageMaker::DeleteWorkteamResponse> instance

Deletes an existing work team. This operation can't be undone.


=head2 DescribeAlgorithm

=over

=item AlgorithmName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeAlgorithm>

Returns: a L<Paws::SageMaker::DescribeAlgorithmOutput> instance

Returns a description of the specified algorithm that is in your
account.


=head2 DescribeApp

=over

=item AppName => Str

=item AppType => Str

=item DomainId => Str

=item UserProfileName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeApp>

Returns: a L<Paws::SageMaker::DescribeAppResponse> instance

Describes the app.


=head2 DescribeAutoMLJob

=over

=item AutoMLJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeAutoMLJob>

Returns: a L<Paws::SageMaker::DescribeAutoMLJobResponse> instance

Returns information about an Amazon SageMaker job.


=head2 DescribeCodeRepository

=over

=item CodeRepositoryName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeCodeRepository>

Returns: a L<Paws::SageMaker::DescribeCodeRepositoryOutput> instance

Gets details about the specified Git repository.


=head2 DescribeCompilationJob

=over

=item CompilationJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeCompilationJob>

Returns: a L<Paws::SageMaker::DescribeCompilationJobResponse> instance

Returns information about a model compilation job.

To create a model compilation job, use CreateCompilationJob. To get
information about multiple model compilation jobs, use
ListCompilationJobs.


=head2 DescribeDomain

=over

=item DomainId => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeDomain>

Returns: a L<Paws::SageMaker::DescribeDomainResponse> instance

The desciption of the domain.


=head2 DescribeEndpoint

=over

=item EndpointName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeEndpoint>

Returns: a L<Paws::SageMaker::DescribeEndpointOutput> instance

Returns the description of an endpoint.


=head2 DescribeEndpointConfig

=over

=item EndpointConfigName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeEndpointConfig>

Returns: a L<Paws::SageMaker::DescribeEndpointConfigOutput> instance

Returns the description of an endpoint configuration created using the
C<CreateEndpointConfig> API.


=head2 DescribeExperiment

=over

=item ExperimentName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeExperiment>

Returns: a L<Paws::SageMaker::DescribeExperimentResponse> instance

Provides a list of an experiment's properties.


=head2 DescribeFlowDefinition

=over

=item FlowDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeFlowDefinition>

Returns: a L<Paws::SageMaker::DescribeFlowDefinitionResponse> instance

Returns information about the specified flow definition.


=head2 DescribeHumanTaskUi

=over

=item HumanTaskUiName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeHumanTaskUi>

Returns: a L<Paws::SageMaker::DescribeHumanTaskUiResponse> instance

Returns information about the requested human task user interface.


=head2 DescribeHyperParameterTuningJob

=over

=item HyperParameterTuningJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeHyperParameterTuningJob>

Returns: a L<Paws::SageMaker::DescribeHyperParameterTuningJobResponse> instance

Gets a description of a hyperparameter tuning job.


=head2 DescribeLabelingJob

=over

=item LabelingJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeLabelingJob>

Returns: a L<Paws::SageMaker::DescribeLabelingJobResponse> instance

Gets information about a labeling job.


=head2 DescribeModel

=over

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeModel>

Returns: a L<Paws::SageMaker::DescribeModelOutput> instance

Describes a model that you created using the C<CreateModel> API.


=head2 DescribeModelPackage

=over

=item ModelPackageName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeModelPackage>

Returns: a L<Paws::SageMaker::DescribeModelPackageOutput> instance

Returns a description of the specified model package, which is used to
create Amazon SageMaker models or list them on AWS Marketplace.

To create models in Amazon SageMaker, buyers can subscribe to model
packages listed on AWS Marketplace.


=head2 DescribeMonitoringSchedule

=over

=item MonitoringScheduleName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeMonitoringSchedule>

Returns: a L<Paws::SageMaker::DescribeMonitoringScheduleResponse> instance

Describes the schedule for a monitoring job.


=head2 DescribeNotebookInstance

=over

=item NotebookInstanceName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeNotebookInstance>

Returns: a L<Paws::SageMaker::DescribeNotebookInstanceOutput> instance

Returns information about a notebook instance.


=head2 DescribeNotebookInstanceLifecycleConfig

=over

=item NotebookInstanceLifecycleConfigName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeNotebookInstanceLifecycleConfig>

Returns: a L<Paws::SageMaker::DescribeNotebookInstanceLifecycleConfigOutput> instance

Returns a description of a notebook instance lifecycle configuration.

For information about notebook instance lifestyle configurations, see
Step 2.1: (Optional) Customize a Notebook Instance
(https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html).


=head2 DescribeProcessingJob

=over

=item ProcessingJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeProcessingJob>

Returns: a L<Paws::SageMaker::DescribeProcessingJobResponse> instance

Returns a description of a processing job.


=head2 DescribeSubscribedWorkteam

=over

=item WorkteamArn => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeSubscribedWorkteam>

Returns: a L<Paws::SageMaker::DescribeSubscribedWorkteamResponse> instance

Gets information about a work team provided by a vendor. It returns
details about the subscription with a vendor in the AWS Marketplace.


=head2 DescribeTrainingJob

=over

=item TrainingJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeTrainingJob>

Returns: a L<Paws::SageMaker::DescribeTrainingJobResponse> instance

Returns information about a training job.


=head2 DescribeTransformJob

=over

=item TransformJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeTransformJob>

Returns: a L<Paws::SageMaker::DescribeTransformJobResponse> instance

Returns information about a transform job.


=head2 DescribeTrial

=over

=item TrialName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeTrial>

Returns: a L<Paws::SageMaker::DescribeTrialResponse> instance

Provides a list of a trial's properties.


=head2 DescribeTrialComponent

=over

=item TrialComponentName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeTrialComponent>

Returns: a L<Paws::SageMaker::DescribeTrialComponentResponse> instance

Provides a list of a trials component's properties.


=head2 DescribeUserProfile

=over

=item DomainId => Str

=item UserProfileName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeUserProfile>

Returns: a L<Paws::SageMaker::DescribeUserProfileResponse> instance

Describes the user profile.


=head2 DescribeWorkforce

=over

=item WorkforceName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeWorkforce>

Returns: a L<Paws::SageMaker::DescribeWorkforceResponse> instance

Lists private workforce information, including workforce name, Amazon
Resource Name (ARN), and, if applicable, allowed IP address ranges
(CIDRs
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html)).
Allowable IP address ranges are the IP addresses that workers can use
to access tasks.

This operation applies only to private workforces.


=head2 DescribeWorkteam

=over

=item WorkteamName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeWorkteam>

Returns: a L<Paws::SageMaker::DescribeWorkteamResponse> instance

Gets information about a specific work team. You can see information
such as the create date, the last updated date, membership information,
and the work team's Amazon Resource Name (ARN).


=head2 DisassociateTrialComponent

=over

=item TrialComponentName => Str

=item TrialName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DisassociateTrialComponent>

Returns: a L<Paws::SageMaker::DisassociateTrialComponentResponse> instance

Disassociates a trial component from a trial. This doesn't effect other
trials the component is associated with. Before you can delete a
component, you must disassociate the component from all trials it is
associated with. To associate a trial component with a trial, call the
AssociateTrialComponent API.


=head2 GetSearchSuggestions

=over

=item Resource => Str

=item [SuggestionQuery => L<Paws::SageMaker::SuggestionQuery>]


=back

Each argument is described in detail in: L<Paws::SageMaker::GetSearchSuggestions>

Returns: a L<Paws::SageMaker::GetSearchSuggestionsResponse> instance

An auto-complete API for the search functionality in the Amazon
SageMaker console. It returns suggestions of possible matches for the
property name to use in C<Search> queries. Provides suggestions for
C<HyperParameters>, C<Tags>, and C<Metrics>.


=head2 ListAlgorithms

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListAlgorithms>

Returns: a L<Paws::SageMaker::ListAlgorithmsOutput> instance

Lists the machine learning algorithms that have been created.


=head2 ListApps

=over

=item [DomainIdEquals => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [UserProfileNameEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListApps>

Returns: a L<Paws::SageMaker::ListAppsResponse> instance

Lists apps.


=head2 ListAutoMLJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListAutoMLJobs>

Returns: a L<Paws::SageMaker::ListAutoMLJobsResponse> instance

Request a list of jobs.


=head2 ListCandidatesForAutoMLJob

=over

=item AutoMLJobName => Str

=item [CandidateNameEquals => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListCandidatesForAutoMLJob>

Returns: a L<Paws::SageMaker::ListCandidatesForAutoMLJobResponse> instance

List the Candidates created for the job.


=head2 ListCodeRepositories

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListCodeRepositories>

Returns: a L<Paws::SageMaker::ListCodeRepositoriesOutput> instance

Gets a list of the Git repositories in your account.


=head2 ListCompilationJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListCompilationJobs>

Returns: a L<Paws::SageMaker::ListCompilationJobsResponse> instance

Lists model compilation jobs that satisfy various filters.

To create a model compilation job, use CreateCompilationJob. To get
information about a particular model compilation job you have created,
use DescribeCompilationJob.


=head2 ListDomains

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListDomains>

Returns: a L<Paws::SageMaker::ListDomainsResponse> instance

Lists the domains.


=head2 ListEndpointConfigs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListEndpointConfigs>

Returns: a L<Paws::SageMaker::ListEndpointConfigsOutput> instance

Lists endpoint configurations.


=head2 ListEndpoints

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListEndpoints>

Returns: a L<Paws::SageMaker::ListEndpointsOutput> instance

Lists endpoints.


=head2 ListExperiments

=over

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListExperiments>

Returns: a L<Paws::SageMaker::ListExperimentsResponse> instance

Lists all the experiments in your account. The list can be filtered to
show only experiments that were created in a specific time range. The
list can be sorted by experiment name or creation time.


=head2 ListFlowDefinitions

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListFlowDefinitions>

Returns: a L<Paws::SageMaker::ListFlowDefinitionsResponse> instance

Returns information about the flow definitions in your account.


=head2 ListHumanTaskUis

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListHumanTaskUis>

Returns: a L<Paws::SageMaker::ListHumanTaskUisResponse> instance

Returns information about the human task user interfaces in your
account.


=head2 ListHyperParameterTuningJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListHyperParameterTuningJobs>

Returns: a L<Paws::SageMaker::ListHyperParameterTuningJobsResponse> instance

Gets a list of HyperParameterTuningJobSummary objects that describe the
hyperparameter tuning jobs launched in your account.


=head2 ListLabelingJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListLabelingJobs>

Returns: a L<Paws::SageMaker::ListLabelingJobsResponse> instance

Gets a list of labeling jobs.


=head2 ListLabelingJobsForWorkteam

=over

=item WorkteamArn => Str

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [JobReferenceCodeContains => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListLabelingJobsForWorkteam>

Returns: a L<Paws::SageMaker::ListLabelingJobsForWorkteamResponse> instance

Gets a list of labeling jobs assigned to a specified work team.


=head2 ListModelPackages

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListModelPackages>

Returns: a L<Paws::SageMaker::ListModelPackagesOutput> instance

Lists the model packages that have been created.


=head2 ListModels

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListModels>

Returns: a L<Paws::SageMaker::ListModelsOutput> instance

Lists models created with the CreateModel
(https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateModel.html)
API.


=head2 ListMonitoringExecutions

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [EndpointName => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [MonitoringScheduleName => Str]

=item [NextToken => Str]

=item [ScheduledTimeAfter => Str]

=item [ScheduledTimeBefore => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListMonitoringExecutions>

Returns: a L<Paws::SageMaker::ListMonitoringExecutionsResponse> instance

Returns list of all monitoring job executions.


=head2 ListMonitoringSchedules

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [EndpointName => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListMonitoringSchedules>

Returns: a L<Paws::SageMaker::ListMonitoringSchedulesResponse> instance

Returns list of all monitoring schedules.


=head2 ListNotebookInstanceLifecycleConfigs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListNotebookInstanceLifecycleConfigs>

Returns: a L<Paws::SageMaker::ListNotebookInstanceLifecycleConfigsOutput> instance

Lists notebook instance lifestyle configurations created with the
CreateNotebookInstanceLifecycleConfig API.


=head2 ListNotebookInstances

=over

=item [AdditionalCodeRepositoryEquals => Str]

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [DefaultCodeRepositoryContains => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [NotebookInstanceLifecycleConfigNameContains => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListNotebookInstances>

Returns: a L<Paws::SageMaker::ListNotebookInstancesOutput> instance

Returns a list of the Amazon SageMaker notebook instances in the
requester's account in an AWS Region.


=head2 ListProcessingJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListProcessingJobs>

Returns: a L<Paws::SageMaker::ListProcessingJobsResponse> instance

Lists processing jobs that satisfy various filters.


=head2 ListSubscribedWorkteams

=over

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListSubscribedWorkteams>

Returns: a L<Paws::SageMaker::ListSubscribedWorkteamsResponse> instance

Gets a list of the work teams that you are subscribed to in the AWS
Marketplace. The list may be empty if no work team satisfies the filter
specified in the C<NameContains> parameter.


=head2 ListTags

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListTags>

Returns: a L<Paws::SageMaker::ListTagsOutput> instance

Returns the tags for the specified Amazon SageMaker resource.


=head2 ListTrainingJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListTrainingJobs>

Returns: a L<Paws::SageMaker::ListTrainingJobsResponse> instance

Lists training jobs.


=head2 ListTrainingJobsForHyperParameterTuningJob

=over

=item HyperParameterTuningJobName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListTrainingJobsForHyperParameterTuningJob>

Returns: a L<Paws::SageMaker::ListTrainingJobsForHyperParameterTuningJobResponse> instance

Gets a list of TrainingJobSummary objects that describe the training
jobs that a hyperparameter tuning job launched.


=head2 ListTransformJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListTransformJobs>

Returns: a L<Paws::SageMaker::ListTransformJobsResponse> instance

Lists transform jobs.


=head2 ListTrialComponents

=over

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [ExperimentName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [SourceArn => Str]

=item [TrialName => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListTrialComponents>

Returns: a L<Paws::SageMaker::ListTrialComponentsResponse> instance

Lists the trial components in your account. You can sort the list by
trial component name or creation time. You can filter the list to show
only components that were created in a specific time range. You can
also filter on one of the following:

=over

=item *

C<ExperimentName>

=item *

C<SourceArn>

=item *

C<TrialName>

=back



=head2 ListTrials

=over

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [ExperimentName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListTrials>

Returns: a L<Paws::SageMaker::ListTrialsResponse> instance

Lists the trials in your account. Specify an experiment name to limit
the list to the trials that are part of that experiment. The list can
be filtered to show only trials that were created in a specific time
range. The list can be sorted by trial name or creation time.


=head2 ListUserProfiles

=over

=item [DomainIdEquals => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [UserProfileNameContains => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListUserProfiles>

Returns: a L<Paws::SageMaker::ListUserProfilesResponse> instance

Lists user profiles.


=head2 ListWorkteams

=over

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListWorkteams>

Returns: a L<Paws::SageMaker::ListWorkteamsResponse> instance

Gets a list of work teams that you have defined in a region. The list
may be empty if no work team satisfies the filter specified in the
C<NameContains> parameter.


=head2 RenderUiTemplate

=over

=item RoleArn => Str

=item Task => L<Paws::SageMaker::RenderableTask>

=item UiTemplate => L<Paws::SageMaker::UiTemplate>


=back

Each argument is described in detail in: L<Paws::SageMaker::RenderUiTemplate>

Returns: a L<Paws::SageMaker::RenderUiTemplateResponse> instance

Renders the UI template so that you can preview the worker's
experience.


=head2 Search

=over

=item Resource => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchExpression => L<Paws::SageMaker::SearchExpression>]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::Search>

Returns: a L<Paws::SageMaker::SearchResponse> instance

Finds Amazon SageMaker resources that match a search query. Matching
resource objects are returned as a list of C<SearchResult> objects in
the response. You can sort the search results by any resource property
in a ascending or descending order.

You can query against the following value types: numeric, text,
Boolean, and timestamp.


=head2 StartMonitoringSchedule

=over

=item MonitoringScheduleName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StartMonitoringSchedule>

Returns: nothing

Starts a previously stopped monitoring schedule.

New monitoring schedules are immediately started after creation.


=head2 StartNotebookInstance

=over

=item NotebookInstanceName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StartNotebookInstance>

Returns: nothing

Launches an ML compute instance with the latest version of the
libraries and attaches your ML storage volume. After configuring the
notebook instance, Amazon SageMaker sets the notebook instance status
to C<InService>. A notebook instance's status must be C<InService>
before you can connect to your Jupyter notebook.


=head2 StopAutoMLJob

=over

=item AutoMLJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopAutoMLJob>

Returns: nothing

A method for forcing the termination of a running job.


=head2 StopCompilationJob

=over

=item CompilationJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopCompilationJob>

Returns: nothing

Stops a model compilation job.

To stop a job, Amazon SageMaker sends the algorithm the SIGTERM signal.
This gracefully shuts the job down. If the job hasn't stopped, it sends
the SIGKILL signal.

When it receives a C<StopCompilationJob> request, Amazon SageMaker
changes the CompilationJobSummary$CompilationJobStatus of the job to
C<Stopping>. After Amazon SageMaker stops the job, it sets the
CompilationJobSummary$CompilationJobStatus to C<Stopped>.


=head2 StopHyperParameterTuningJob

=over

=item HyperParameterTuningJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopHyperParameterTuningJob>

Returns: nothing

Stops a running hyperparameter tuning job and all running training jobs
that the tuning job launched.

All model artifacts output from the training jobs are stored in Amazon
Simple Storage Service (Amazon S3). All data that the training jobs
write to Amazon CloudWatch Logs are still available in CloudWatch.
After the tuning job moves to the C<Stopped> state, it releases all
reserved resources for the tuning job.


=head2 StopLabelingJob

=over

=item LabelingJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopLabelingJob>

Returns: nothing

Stops a running labeling job. A job that is stopped cannot be
restarted. Any results obtained before the job is stopped are placed in
the Amazon S3 output bucket.


=head2 StopMonitoringSchedule

=over

=item MonitoringScheduleName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopMonitoringSchedule>

Returns: nothing

Stops a previously started monitoring schedule.


=head2 StopNotebookInstance

=over

=item NotebookInstanceName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopNotebookInstance>

Returns: nothing

Terminates the ML compute instance. Before terminating the instance,
Amazon SageMaker disconnects the ML storage volume from it. Amazon
SageMaker preserves the ML storage volume. Amazon SageMaker stops
charging you for the ML compute instance when you call
C<StopNotebookInstance>.

To access data on the ML storage volume for a notebook instance that
has been terminated, call the C<StartNotebookInstance> API.
C<StartNotebookInstance> launches another ML compute instance,
configures it, and attaches the preserved ML storage volume so you can
continue your work.


=head2 StopProcessingJob

=over

=item ProcessingJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopProcessingJob>

Returns: nothing

Stops a processing job.


=head2 StopTrainingJob

=over

=item TrainingJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopTrainingJob>

Returns: nothing

Stops a training job. To stop a job, Amazon SageMaker sends the
algorithm the C<SIGTERM> signal, which delays job termination for 120
seconds. Algorithms might use this 120-second window to save the model
artifacts, so the results of the training is not lost.

When it receives a C<StopTrainingJob> request, Amazon SageMaker changes
the status of the job to C<Stopping>. After Amazon SageMaker stops the
job, it sets the status to C<Stopped>.


=head2 StopTransformJob

=over

=item TransformJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopTransformJob>

Returns: nothing

Stops a transform job.

When Amazon SageMaker receives a C<StopTransformJob> request, the
status of the job changes to C<Stopping>. After Amazon SageMaker stops
the job, the status is set to C<Stopped>. When you stop a transform job
before it is completed, Amazon SageMaker doesn't store the job's output
in Amazon S3.


=head2 UpdateCodeRepository

=over

=item CodeRepositoryName => Str

=item [GitConfig => L<Paws::SageMaker::GitConfigForUpdate>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateCodeRepository>

Returns: a L<Paws::SageMaker::UpdateCodeRepositoryOutput> instance

Updates the specified Git repository with the specified values.


=head2 UpdateDomain

=over

=item DomainId => Str

=item [DefaultUserSettings => L<Paws::SageMaker::UserSettings>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateDomain>

Returns: a L<Paws::SageMaker::UpdateDomainResponse> instance

Updates a domain. Changes will impact all of the people in the domain.


=head2 UpdateEndpoint

=over

=item EndpointConfigName => Str

=item EndpointName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateEndpoint>

Returns: a L<Paws::SageMaker::UpdateEndpointOutput> instance

Deploys the new C<EndpointConfig> specified in the request, switches to
using newly created endpoint, and then deletes resources provisioned
for the endpoint using the previous C<EndpointConfig> (there is no
availability loss).

When Amazon SageMaker receives the request, it sets the endpoint status
to C<Updating>. After updating the endpoint, it sets the status to
C<InService>. To check the status of an endpoint, use the
DescribeEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/dg/API_DescribeEndpoint.html)
API.

You must not delete an C<EndpointConfig> in use by an endpoint that is
live or while the C<UpdateEndpoint> or C<CreateEndpoint> operations are
being performed on the endpoint. To update an endpoint, you must create
a new C<EndpointConfig>.


=head2 UpdateEndpointWeightsAndCapacities

=over

=item DesiredWeightsAndCapacities => ArrayRef[L<Paws::SageMaker::DesiredWeightAndCapacity>]

=item EndpointName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateEndpointWeightsAndCapacities>

Returns: a L<Paws::SageMaker::UpdateEndpointWeightsAndCapacitiesOutput> instance

Updates variant weight of one or more variants associated with an
existing endpoint, or capacity of one variant associated with an
existing endpoint. When it receives the request, Amazon SageMaker sets
the endpoint status to C<Updating>. After updating the endpoint, it
sets the status to C<InService>. To check the status of an endpoint,
use the DescribeEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/dg/API_DescribeEndpoint.html)
API.


=head2 UpdateExperiment

=over

=item ExperimentName => Str

=item [Description => Str]

=item [DisplayName => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateExperiment>

Returns: a L<Paws::SageMaker::UpdateExperimentResponse> instance

Adds, updates, or removes the description of an experiment. Updates the
display name of an experiment.


=head2 UpdateMonitoringSchedule

=over

=item MonitoringScheduleConfig => L<Paws::SageMaker::MonitoringScheduleConfig>

=item MonitoringScheduleName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateMonitoringSchedule>

Returns: a L<Paws::SageMaker::UpdateMonitoringScheduleResponse> instance

Updates a previously created schedule.


=head2 UpdateNotebookInstance

=over

=item NotebookInstanceName => Str

=item [AcceleratorTypes => ArrayRef[Str|Undef]]

=item [AdditionalCodeRepositories => ArrayRef[Str|Undef]]

=item [DefaultCodeRepository => Str]

=item [DisassociateAcceleratorTypes => Bool]

=item [DisassociateAdditionalCodeRepositories => Bool]

=item [DisassociateDefaultCodeRepository => Bool]

=item [DisassociateLifecycleConfig => Bool]

=item [InstanceType => Str]

=item [LifecycleConfigName => Str]

=item [RoleArn => Str]

=item [RootAccess => Str]

=item [VolumeSizeInGB => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateNotebookInstance>

Returns: a L<Paws::SageMaker::UpdateNotebookInstanceOutput> instance

Updates a notebook instance. NotebookInstance updates include upgrading
or downgrading the ML compute instance used for your notebook instance
to accommodate changes in your workload requirements.


=head2 UpdateNotebookInstanceLifecycleConfig

=over

=item NotebookInstanceLifecycleConfigName => Str

=item [OnCreate => ArrayRef[L<Paws::SageMaker::NotebookInstanceLifecycleHook>]]

=item [OnStart => ArrayRef[L<Paws::SageMaker::NotebookInstanceLifecycleHook>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateNotebookInstanceLifecycleConfig>

Returns: a L<Paws::SageMaker::UpdateNotebookInstanceLifecycleConfigOutput> instance

Updates a notebook instance lifecycle configuration created with the
CreateNotebookInstanceLifecycleConfig API.


=head2 UpdateTrial

=over

=item TrialName => Str

=item [DisplayName => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateTrial>

Returns: a L<Paws::SageMaker::UpdateTrialResponse> instance

Updates the display name of a trial.


=head2 UpdateTrialComponent

=over

=item TrialComponentName => Str

=item [DisplayName => Str]

=item [EndTime => Str]

=item [InputArtifacts => L<Paws::SageMaker::TrialComponentArtifacts>]

=item [InputArtifactsToRemove => ArrayRef[Str|Undef]]

=item [OutputArtifacts => L<Paws::SageMaker::TrialComponentArtifacts>]

=item [OutputArtifactsToRemove => ArrayRef[Str|Undef]]

=item [Parameters => L<Paws::SageMaker::TrialComponentParameters>]

=item [ParametersToRemove => ArrayRef[Str|Undef]]

=item [StartTime => Str]

=item [Status => L<Paws::SageMaker::TrialComponentStatus>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateTrialComponent>

Returns: a L<Paws::SageMaker::UpdateTrialComponentResponse> instance

Updates one or more properties of a trial component.


=head2 UpdateUserProfile

=over

=item DomainId => Str

=item UserProfileName => Str

=item [UserSettings => L<Paws::SageMaker::UserSettings>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateUserProfile>

Returns: a L<Paws::SageMaker::UpdateUserProfileResponse> instance

Updates a user profile.


=head2 UpdateWorkforce

=over

=item WorkforceName => Str

=item [SourceIpConfig => L<Paws::SageMaker::SourceIpConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateWorkforce>

Returns: a L<Paws::SageMaker::UpdateWorkforceResponse> instance

Restricts access to tasks assigned to workers in the specified
workforce to those within specific ranges of IP addresses. You specify
allowed IP addresses by creating a list of up to four CIDRs
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html).

By default, a workforce isn't restricted to specific IP addresses. If
you specify a range of IP addresses, workers who attempt to access
tasks using any IP address outside the specified range are denied
access and get a C<Not Found> error message on the worker portal. After
restricting access with this operation, you can see the allowed IP
values for a private workforce with the operation.

This operation applies only to private workforces.


=head2 UpdateWorkteam

=over

=item WorkteamName => Str

=item [Description => Str]

=item [MemberDefinitions => ArrayRef[L<Paws::SageMaker::MemberDefinition>]]

=item [NotificationConfiguration => L<Paws::SageMaker::NotificationConfiguration>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateWorkteam>

Returns: a L<Paws::SageMaker::UpdateWorkteamResponse> instance

Updates an existing work team with new member definitions or
description.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAlgorithms(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllAlgorithms([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AlgorithmSummaryList, passing the object as the first parameter, and the string 'AlgorithmSummaryList' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListAlgorithmsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApps(sub { },[DomainIdEquals => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, UserProfileNameEquals => Str])

=head2 ListAllApps([DomainIdEquals => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, UserProfileNameEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Apps, passing the object as the first parameter, and the string 'Apps' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListAppsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAutoMLJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllAutoMLJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AutoMLJobSummaries, passing the object as the first parameter, and the string 'AutoMLJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListAutoMLJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCandidatesForAutoMLJob(sub { },AutoMLJobName => Str, [CandidateNameEquals => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllCandidatesForAutoMLJob(AutoMLJobName => Str, [CandidateNameEquals => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Candidates, passing the object as the first parameter, and the string 'Candidates' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListCandidatesForAutoMLJobResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCodeRepositories(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllCodeRepositories([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CodeRepositorySummaryList, passing the object as the first parameter, and the string 'CodeRepositorySummaryList' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListCodeRepositoriesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCompilationJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllCompilationJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CompilationJobSummaries, passing the object as the first parameter, and the string 'CompilationJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListCompilationJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDomains(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDomains([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Domains, passing the object as the first parameter, and the string 'Domains' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListDomainsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEndpointConfigs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllEndpointConfigs([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EndpointConfigs, passing the object as the first parameter, and the string 'EndpointConfigs' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListEndpointConfigsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEndpoints(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllEndpoints([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Endpoints, passing the object as the first parameter, and the string 'Endpoints' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListEndpointsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllExperiments(sub { },[CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllExperiments([CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ExperimentSummaries, passing the object as the first parameter, and the string 'ExperimentSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListExperimentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFlowDefinitions(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NextToken => Str, SortOrder => Str])

=head2 ListAllFlowDefinitions([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NextToken => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FlowDefinitionSummaries, passing the object as the first parameter, and the string 'FlowDefinitionSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListFlowDefinitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllHumanTaskUis(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NextToken => Str, SortOrder => Str])

=head2 ListAllHumanTaskUis([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NextToken => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HumanTaskUiSummaries, passing the object as the first parameter, and the string 'HumanTaskUiSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListHumanTaskUisResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllHyperParameterTuningJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllHyperParameterTuningJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HyperParameterTuningJobSummaries, passing the object as the first parameter, and the string 'HyperParameterTuningJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListHyperParameterTuningJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLabelingJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllLabelingJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LabelingJobSummaryList, passing the object as the first parameter, and the string 'LabelingJobSummaryList' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListLabelingJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLabelingJobsForWorkteam(sub { },WorkteamArn => Str, [CreationTimeAfter => Str, CreationTimeBefore => Str, JobReferenceCodeContains => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllLabelingJobsForWorkteam(WorkteamArn => Str, [CreationTimeAfter => Str, CreationTimeBefore => Str, JobReferenceCodeContains => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LabelingJobSummaryList, passing the object as the first parameter, and the string 'LabelingJobSummaryList' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListLabelingJobsForWorkteamResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelPackages(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllModelPackages([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ModelPackageSummaryList, passing the object as the first parameter, and the string 'ModelPackageSummaryList' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListModelPackagesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModels(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllModels([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Models, passing the object as the first parameter, and the string 'Models' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListModelsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMonitoringExecutions(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, MonitoringScheduleName => Str, NextToken => Str, ScheduledTimeAfter => Str, ScheduledTimeBefore => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllMonitoringExecutions([CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, MonitoringScheduleName => Str, NextToken => Str, ScheduledTimeAfter => Str, ScheduledTimeBefore => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MonitoringExecutionSummaries, passing the object as the first parameter, and the string 'MonitoringExecutionSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListMonitoringExecutionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMonitoringSchedules(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllMonitoringSchedules([CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MonitoringScheduleSummaries, passing the object as the first parameter, and the string 'MonitoringScheduleSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListMonitoringSchedulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNotebookInstanceLifecycleConfigs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllNotebookInstanceLifecycleConfigs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NotebookInstanceLifecycleConfigs, passing the object as the first parameter, and the string 'NotebookInstanceLifecycleConfigs' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListNotebookInstanceLifecycleConfigsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNotebookInstances(sub { },[AdditionalCodeRepositoryEquals => Str, CreationTimeAfter => Str, CreationTimeBefore => Str, DefaultCodeRepositoryContains => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, NotebookInstanceLifecycleConfigNameContains => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllNotebookInstances([AdditionalCodeRepositoryEquals => Str, CreationTimeAfter => Str, CreationTimeBefore => Str, DefaultCodeRepositoryContains => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, NotebookInstanceLifecycleConfigNameContains => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NotebookInstances, passing the object as the first parameter, and the string 'NotebookInstances' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListNotebookInstancesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProcessingJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllProcessingJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ProcessingJobSummaries, passing the object as the first parameter, and the string 'ProcessingJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListProcessingJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSubscribedWorkteams(sub { },[MaxResults => Int, NameContains => Str, NextToken => Str])

=head2 ListAllSubscribedWorkteams([MaxResults => Int, NameContains => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SubscribedWorkteams, passing the object as the first parameter, and the string 'SubscribedWorkteams' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListSubscribedWorkteamsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTags(sub { },ResourceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTags(ResourceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListTagsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrainingJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllTrainingJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrainingJobSummaries, passing the object as the first parameter, and the string 'TrainingJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListTrainingJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrainingJobsForHyperParameterTuningJob(sub { },HyperParameterTuningJobName => Str, [MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllTrainingJobsForHyperParameterTuningJob(HyperParameterTuningJobName => Str, [MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrainingJobSummaries, passing the object as the first parameter, and the string 'TrainingJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListTrainingJobsForHyperParameterTuningJobResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTransformJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllTransformJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TransformJobSummaries, passing the object as the first parameter, and the string 'TransformJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListTransformJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrialComponents(sub { },[CreatedAfter => Str, CreatedBefore => Str, ExperimentName => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceArn => Str, TrialName => Str])

=head2 ListAllTrialComponents([CreatedAfter => Str, CreatedBefore => Str, ExperimentName => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceArn => Str, TrialName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrialComponentSummaries, passing the object as the first parameter, and the string 'TrialComponentSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListTrialComponentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTrials(sub { },[CreatedAfter => Str, CreatedBefore => Str, ExperimentName => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllTrials([CreatedAfter => Str, CreatedBefore => Str, ExperimentName => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrialSummaries, passing the object as the first parameter, and the string 'TrialSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListTrialsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUserProfiles(sub { },[DomainIdEquals => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, UserProfileNameContains => Str])

=head2 ListAllUserProfiles([DomainIdEquals => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, UserProfileNameContains => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserProfiles, passing the object as the first parameter, and the string 'UserProfiles' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListUserProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkteams(sub { },[MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllWorkteams([MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Workteams, passing the object as the first parameter, and the string 'Workteams' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListWorkteamsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAll(sub { },Resource => Str, [MaxResults => Int, NextToken => Str, SearchExpression => L<Paws::SageMaker::SearchExpression>, SortBy => Str, SortOrder => Str])

=head2 SearchAll(Resource => Str, [MaxResults => Int, NextToken => Str, SearchExpression => L<Paws::SageMaker::SearchExpression>, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Results, passing the object as the first parameter, and the string 'Results' as the second parameter 

If not, it will return a a L<Paws::SageMaker::SearchResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

