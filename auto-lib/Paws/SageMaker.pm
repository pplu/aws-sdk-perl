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

  
  sub AddAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::AddAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
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
  sub CreateAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateAction', @_);
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
  sub CreateAppImageConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateAppImageConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateArtifact', @_);
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
  sub CreateContext {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateContext', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataQualityJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateDataQualityJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeviceFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateDeviceFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEdgePackagingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateEdgePackagingJob', @_);
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
  sub CreateFeatureGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateFeatureGroup', @_);
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
  sub CreateImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateImageVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateImageVersion', @_);
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
  sub CreateModelBiasJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateModelBiasJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModelExplainabilityJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateModelExplainabilityJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModelPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateModelPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModelPackageGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateModelPackageGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModelQualityJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateModelQualityJobDefinition', @_);
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
  sub CreatePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreatePipeline', @_);
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
  sub CreateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateProject', @_);
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
  sub CreateWorkforce {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateWorkforce', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkteam {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::CreateWorkteam', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteAction', @_);
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
  sub DeleteAppImageConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteAppImageConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteArtifact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCodeRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteCodeRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteContext {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteContext', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataQualityJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteDataQualityJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeviceFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteDeviceFleet', @_);
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
  sub DeleteFeatureGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteFeatureGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFlowDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteFlowDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHumanTaskUi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteHumanTaskUi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImageVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteImageVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModelBiasJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteModelBiasJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModelExplainabilityJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteModelExplainabilityJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModelPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteModelPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModelPackageGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteModelPackageGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModelPackageGroupPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteModelPackageGroupPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModelQualityJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteModelQualityJobDefinition', @_);
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
  sub DeletePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeletePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteProject', @_);
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
  sub DeleteWorkforce {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteWorkforce', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkteam {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeleteWorkteam', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DeregisterDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeAction', @_);
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
  sub DescribeAppImageConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeAppImageConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeArtifact', @_);
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
  sub DescribeContext {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeContext', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataQualityJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeDataQualityJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDeviceFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeDeviceFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEdgePackagingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeEdgePackagingJob', @_);
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
  sub DescribeFeatureGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeFeatureGroup', @_);
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
  sub DescribeImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImageVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeImageVersion', @_);
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
  sub DescribeModelBiasJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeModelBiasJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModelExplainabilityJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeModelExplainabilityJobDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModelPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeModelPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModelPackageGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeModelPackageGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeModelQualityJobDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeModelQualityJobDefinition', @_);
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
  sub DescribePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePipelineDefinitionForExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribePipelineDefinitionForExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePipelineExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribePipelineExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProcessingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeProcessingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DescribeProject', @_);
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
  sub DisableSagemakerServicecatalogPortfolio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DisableSagemakerServicecatalogPortfolio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateTrialComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::DisassociateTrialComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableSagemakerServicecatalogPortfolio {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::EnableSagemakerServicecatalogPortfolio', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeviceFleetReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::GetDeviceFleetReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetModelPackageGroupPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::GetModelPackageGroupPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSagemakerServicecatalogPortfolioStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::GetSagemakerServicecatalogPortfolioStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSearchSuggestions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::GetSearchSuggestions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAlgorithms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListAlgorithms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAppImageConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListAppImageConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListApps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListArtifacts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListArtifacts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListAssociations', @_);
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
  sub ListContexts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListContexts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataQualityJobDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListDataQualityJobDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeviceFleets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListDeviceFleets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEdgePackagingJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListEdgePackagingJobs', @_);
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
  sub ListFeatureGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListFeatureGroups', @_);
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
  sub ListImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImageVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListImageVersions', @_);
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
  sub ListModelBiasJobDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListModelBiasJobDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelExplainabilityJobDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListModelExplainabilityJobDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelPackageGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListModelPackageGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelPackages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListModelPackages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListModelQualityJobDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListModelQualityJobDefinitions', @_);
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
  sub ListPipelineExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListPipelineExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPipelineExecutionSteps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListPipelineExecutionSteps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPipelineParametersForExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListPipelineParametersForExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPipelines {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListPipelines', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProcessingJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListProcessingJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListProjects', @_);
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
  sub ListWorkforces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListWorkforces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkteams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::ListWorkteams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutModelPackageGroupPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::PutModelPackageGroupPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::RegisterDevices', @_);
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
  sub StartPipelineExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StartPipelineExecution', @_);
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
  sub StopEdgePackagingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopEdgePackagingJob', @_);
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
  sub StopPipelineExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::StopPipelineExecution', @_);
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
  sub UpdateAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAppImageConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateAppImageConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateArtifact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCodeRepository {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateCodeRepository', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateContext {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateContext', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDeviceFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateDeviceFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateDevices', @_);
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
  sub UpdateImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateModelPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateModelPackage', @_);
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
  sub UpdatePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdatePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePipelineExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdatePipelineExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTrainingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMaker::UpdateTrainingJob', @_);
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
  
  sub ListAllActions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListActions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListActions(@_, NextToken => $next_result->NextToken);
        push @{ $result->ActionSummaries }, @{ $next_result->ActionSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ActionSummaries') foreach (@{ $result->ActionSummaries });
        $result = $self->ListActions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ActionSummaries') foreach (@{ $result->ActionSummaries });
    }

    return undef
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
  sub ListAllAppImageConfigs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAppImageConfigs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAppImageConfigs(@_, NextToken => $next_result->NextToken);
        push @{ $result->AppImageConfigs }, @{ $next_result->AppImageConfigs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AppImageConfigs') foreach (@{ $result->AppImageConfigs });
        $result = $self->ListAppImageConfigs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AppImageConfigs') foreach (@{ $result->AppImageConfigs });
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
  sub ListAllArtifacts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListArtifacts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListArtifacts(@_, NextToken => $next_result->NextToken);
        push @{ $result->ArtifactSummaries }, @{ $next_result->ArtifactSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ArtifactSummaries') foreach (@{ $result->ArtifactSummaries });
        $result = $self->ListArtifacts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ArtifactSummaries') foreach (@{ $result->ArtifactSummaries });
    }

    return undef
  }
  sub ListAllAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->AssociationSummaries }, @{ $next_result->AssociationSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AssociationSummaries') foreach (@{ $result->AssociationSummaries });
        $result = $self->ListAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AssociationSummaries') foreach (@{ $result->AssociationSummaries });
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
  sub ListAllContexts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListContexts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListContexts(@_, NextToken => $next_result->NextToken);
        push @{ $result->ContextSummaries }, @{ $next_result->ContextSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ContextSummaries') foreach (@{ $result->ContextSummaries });
        $result = $self->ListContexts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ContextSummaries') foreach (@{ $result->ContextSummaries });
    }

    return undef
  }
  sub ListAllDataQualityJobDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataQualityJobDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDataQualityJobDefinitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->JobDefinitionSummaries }, @{ $next_result->JobDefinitionSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'JobDefinitionSummaries') foreach (@{ $result->JobDefinitionSummaries });
        $result = $self->ListDataQualityJobDefinitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'JobDefinitionSummaries') foreach (@{ $result->JobDefinitionSummaries });
    }

    return undef
  }
  sub ListAllDeviceFleets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeviceFleets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDeviceFleets(@_, NextToken => $next_result->NextToken);
        push @{ $result->DeviceFleetSummaries }, @{ $next_result->DeviceFleetSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DeviceFleetSummaries') foreach (@{ $result->DeviceFleetSummaries });
        $result = $self->ListDeviceFleets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DeviceFleetSummaries') foreach (@{ $result->DeviceFleetSummaries });
    }

    return undef
  }
  sub ListAllDevices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDevices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDevices(@_, NextToken => $next_result->NextToken);
        push @{ $result->DeviceSummaries }, @{ $next_result->DeviceSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DeviceSummaries') foreach (@{ $result->DeviceSummaries });
        $result = $self->ListDevices(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DeviceSummaries') foreach (@{ $result->DeviceSummaries });
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
  sub ListAllEdgePackagingJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEdgePackagingJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEdgePackagingJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->EdgePackagingJobSummaries }, @{ $next_result->EdgePackagingJobSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EdgePackagingJobSummaries') foreach (@{ $result->EdgePackagingJobSummaries });
        $result = $self->ListEdgePackagingJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EdgePackagingJobSummaries') foreach (@{ $result->EdgePackagingJobSummaries });
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
  sub ListAllFeatureGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFeatureGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFeatureGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->FeatureGroupSummaries }, @{ $next_result->FeatureGroupSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FeatureGroupSummaries') foreach (@{ $result->FeatureGroupSummaries });
        $result = $self->ListFeatureGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FeatureGroupSummaries') foreach (@{ $result->FeatureGroupSummaries });
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
  sub ListAllImages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListImages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListImages(@_, NextToken => $next_result->NextToken);
        push @{ $result->Images }, @{ $next_result->Images };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Images') foreach (@{ $result->Images });
        $result = $self->ListImages(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Images') foreach (@{ $result->Images });
    }

    return undef
  }
  sub ListAllImageVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListImageVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListImageVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->ImageVersions }, @{ $next_result->ImageVersions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ImageVersions') foreach (@{ $result->ImageVersions });
        $result = $self->ListImageVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ImageVersions') foreach (@{ $result->ImageVersions });
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
  sub ListAllModelBiasJobDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelBiasJobDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListModelBiasJobDefinitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->JobDefinitionSummaries }, @{ $next_result->JobDefinitionSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'JobDefinitionSummaries') foreach (@{ $result->JobDefinitionSummaries });
        $result = $self->ListModelBiasJobDefinitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'JobDefinitionSummaries') foreach (@{ $result->JobDefinitionSummaries });
    }

    return undef
  }
  sub ListAllModelExplainabilityJobDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelExplainabilityJobDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListModelExplainabilityJobDefinitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->JobDefinitionSummaries }, @{ $next_result->JobDefinitionSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'JobDefinitionSummaries') foreach (@{ $result->JobDefinitionSummaries });
        $result = $self->ListModelExplainabilityJobDefinitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'JobDefinitionSummaries') foreach (@{ $result->JobDefinitionSummaries });
    }

    return undef
  }
  sub ListAllModelPackageGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelPackageGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListModelPackageGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->ModelPackageGroupSummaryList }, @{ $next_result->ModelPackageGroupSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ModelPackageGroupSummaryList') foreach (@{ $result->ModelPackageGroupSummaryList });
        $result = $self->ListModelPackageGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ModelPackageGroupSummaryList') foreach (@{ $result->ModelPackageGroupSummaryList });
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
  sub ListAllModelQualityJobDefinitions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListModelQualityJobDefinitions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListModelQualityJobDefinitions(@_, NextToken => $next_result->NextToken);
        push @{ $result->JobDefinitionSummaries }, @{ $next_result->JobDefinitionSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'JobDefinitionSummaries') foreach (@{ $result->JobDefinitionSummaries });
        $result = $self->ListModelQualityJobDefinitions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'JobDefinitionSummaries') foreach (@{ $result->JobDefinitionSummaries });
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
  sub ListAllPipelineExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPipelineExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPipelineExecutions(@_, NextToken => $next_result->NextToken);
        push @{ $result->PipelineExecutionSummaries }, @{ $next_result->PipelineExecutionSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PipelineExecutionSummaries') foreach (@{ $result->PipelineExecutionSummaries });
        $result = $self->ListPipelineExecutions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PipelineExecutionSummaries') foreach (@{ $result->PipelineExecutionSummaries });
    }

    return undef
  }
  sub ListAllPipelineExecutionSteps {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPipelineExecutionSteps(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPipelineExecutionSteps(@_, NextToken => $next_result->NextToken);
        push @{ $result->PipelineExecutionSteps }, @{ $next_result->PipelineExecutionSteps };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PipelineExecutionSteps') foreach (@{ $result->PipelineExecutionSteps });
        $result = $self->ListPipelineExecutionSteps(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PipelineExecutionSteps') foreach (@{ $result->PipelineExecutionSteps });
    }

    return undef
  }
  sub ListAllPipelineParametersForExecution {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPipelineParametersForExecution(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPipelineParametersForExecution(@_, NextToken => $next_result->NextToken);
        push @{ $result->PipelineParameters }, @{ $next_result->PipelineParameters };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PipelineParameters') foreach (@{ $result->PipelineParameters });
        $result = $self->ListPipelineParametersForExecution(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PipelineParameters') foreach (@{ $result->PipelineParameters });
    }

    return undef
  }
  sub ListAllPipelines {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPipelines(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPipelines(@_, NextToken => $next_result->NextToken);
        push @{ $result->PipelineSummaries }, @{ $next_result->PipelineSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PipelineSummaries') foreach (@{ $result->PipelineSummaries });
        $result = $self->ListPipelines(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PipelineSummaries') foreach (@{ $result->PipelineSummaries });
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
  sub ListAllWorkforces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkforces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListWorkforces(@_, NextToken => $next_result->NextToken);
        push @{ $result->Workforces }, @{ $next_result->Workforces };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Workforces') foreach (@{ $result->Workforces });
        $result = $self->ListWorkforces(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Workforces') foreach (@{ $result->Workforces });
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


  sub operations { qw/AddAssociation AddTags AssociateTrialComponent CreateAction CreateAlgorithm CreateApp CreateAppImageConfig CreateArtifact CreateAutoMLJob CreateCodeRepository CreateCompilationJob CreateContext CreateDataQualityJobDefinition CreateDeviceFleet CreateDomain CreateEdgePackagingJob CreateEndpoint CreateEndpointConfig CreateExperiment CreateFeatureGroup CreateFlowDefinition CreateHumanTaskUi CreateHyperParameterTuningJob CreateImage CreateImageVersion CreateLabelingJob CreateModel CreateModelBiasJobDefinition CreateModelExplainabilityJobDefinition CreateModelPackage CreateModelPackageGroup CreateModelQualityJobDefinition CreateMonitoringSchedule CreateNotebookInstance CreateNotebookInstanceLifecycleConfig CreatePipeline CreatePresignedDomainUrl CreatePresignedNotebookInstanceUrl CreateProcessingJob CreateProject CreateTrainingJob CreateTransformJob CreateTrial CreateTrialComponent CreateUserProfile CreateWorkforce CreateWorkteam DeleteAction DeleteAlgorithm DeleteApp DeleteAppImageConfig DeleteArtifact DeleteAssociation DeleteCodeRepository DeleteContext DeleteDataQualityJobDefinition DeleteDeviceFleet DeleteDomain DeleteEndpoint DeleteEndpointConfig DeleteExperiment DeleteFeatureGroup DeleteFlowDefinition DeleteHumanTaskUi DeleteImage DeleteImageVersion DeleteModel DeleteModelBiasJobDefinition DeleteModelExplainabilityJobDefinition DeleteModelPackage DeleteModelPackageGroup DeleteModelPackageGroupPolicy DeleteModelQualityJobDefinition DeleteMonitoringSchedule DeleteNotebookInstance DeleteNotebookInstanceLifecycleConfig DeletePipeline DeleteProject DeleteTags DeleteTrial DeleteTrialComponent DeleteUserProfile DeleteWorkforce DeleteWorkteam DeregisterDevices DescribeAction DescribeAlgorithm DescribeApp DescribeAppImageConfig DescribeArtifact DescribeAutoMLJob DescribeCodeRepository DescribeCompilationJob DescribeContext DescribeDataQualityJobDefinition DescribeDevice DescribeDeviceFleet DescribeDomain DescribeEdgePackagingJob DescribeEndpoint DescribeEndpointConfig DescribeExperiment DescribeFeatureGroup DescribeFlowDefinition DescribeHumanTaskUi DescribeHyperParameterTuningJob DescribeImage DescribeImageVersion DescribeLabelingJob DescribeModel DescribeModelBiasJobDefinition DescribeModelExplainabilityJobDefinition DescribeModelPackage DescribeModelPackageGroup DescribeModelQualityJobDefinition DescribeMonitoringSchedule DescribeNotebookInstance DescribeNotebookInstanceLifecycleConfig DescribePipeline DescribePipelineDefinitionForExecution DescribePipelineExecution DescribeProcessingJob DescribeProject DescribeSubscribedWorkteam DescribeTrainingJob DescribeTransformJob DescribeTrial DescribeTrialComponent DescribeUserProfile DescribeWorkforce DescribeWorkteam DisableSagemakerServicecatalogPortfolio DisassociateTrialComponent EnableSagemakerServicecatalogPortfolio GetDeviceFleetReport GetModelPackageGroupPolicy GetSagemakerServicecatalogPortfolioStatus GetSearchSuggestions ListActions ListAlgorithms ListAppImageConfigs ListApps ListArtifacts ListAssociations ListAutoMLJobs ListCandidatesForAutoMLJob ListCodeRepositories ListCompilationJobs ListContexts ListDataQualityJobDefinitions ListDeviceFleets ListDevices ListDomains ListEdgePackagingJobs ListEndpointConfigs ListEndpoints ListExperiments ListFeatureGroups ListFlowDefinitions ListHumanTaskUis ListHyperParameterTuningJobs ListImages ListImageVersions ListLabelingJobs ListLabelingJobsForWorkteam ListModelBiasJobDefinitions ListModelExplainabilityJobDefinitions ListModelPackageGroups ListModelPackages ListModelQualityJobDefinitions ListModels ListMonitoringExecutions ListMonitoringSchedules ListNotebookInstanceLifecycleConfigs ListNotebookInstances ListPipelineExecutions ListPipelineExecutionSteps ListPipelineParametersForExecution ListPipelines ListProcessingJobs ListProjects ListSubscribedWorkteams ListTags ListTrainingJobs ListTrainingJobsForHyperParameterTuningJob ListTransformJobs ListTrialComponents ListTrials ListUserProfiles ListWorkforces ListWorkteams PutModelPackageGroupPolicy RegisterDevices RenderUiTemplate Search StartMonitoringSchedule StartNotebookInstance StartPipelineExecution StopAutoMLJob StopCompilationJob StopEdgePackagingJob StopHyperParameterTuningJob StopLabelingJob StopMonitoringSchedule StopNotebookInstance StopPipelineExecution StopProcessingJob StopTrainingJob StopTransformJob UpdateAction UpdateAppImageConfig UpdateArtifact UpdateCodeRepository UpdateContext UpdateDeviceFleet UpdateDevices UpdateDomain UpdateEndpoint UpdateEndpointWeightsAndCapacities UpdateExperiment UpdateImage UpdateModelPackage UpdateMonitoringSchedule UpdateNotebookInstance UpdateNotebookInstanceLifecycleConfig UpdatePipeline UpdatePipelineExecution UpdateTrainingJob UpdateTrial UpdateTrialComponent UpdateUserProfile UpdateWorkforce UpdateWorkteam / }

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

Other Resources:

=over

=item *

Amazon SageMaker Developer Guide
(https://docs.aws.amazon.com/sagemaker/latest/dg/whatis.html#first-time-user)

=item *

Amazon Augmented AI Runtime API Reference
(https://docs.aws.amazon.com/augmented-ai/2019-11-07/APIReference/Welcome.html)

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker-2017-07-24>


=head1 METHODS

=head2 AddAssociation

=over

=item DestinationArn => Str

=item SourceArn => Str

=item [AssociationType => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::AddAssociation>

Returns: a L<Paws::SageMaker::AddAssociationResponse> instance

Creates an I<association> between the source and the destination. A
source can be associated with multiple destinations, and a destination
can be associated with multiple sources. An association is a lineage
tracking entity. For more information, see Amazon SageMaker ML Lineage
Tracking
(https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).


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

Tags that you add to a SageMaker Studio Domain or User Profile by
calling this API are also added to any Apps that the Domain or User
Profile launches after you call this API, but not to Apps that the
Domain or User Profile launched before you called this API. To make
sure that the tags associated with a Domain or User Profile are also
added to all Apps that the Domain or User Profile launches, add the
tags when you first create the Domain or User Profile by specifying
them in the C<Tags> parameter of CreateDomain or CreateUserProfile.


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


=head2 CreateAction

=over

=item ActionName => Str

=item ActionType => Str

=item Source => L<Paws::SageMaker::ActionSource>

=item [Description => Str]

=item [MetadataProperties => L<Paws::SageMaker::MetadataProperties>]

=item [Properties => L<Paws::SageMaker::LineageEntityParameters>]

=item [Status => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateAction>

Returns: a L<Paws::SageMaker::CreateActionResponse> instance

Creates an I<action>. An action is a lineage tracking entity that
represents an action or activity. For example, a model deployment or an
HPO job. Generally, an action involves at least one input or output
artifact. For more information, see Amazon SageMaker ML Lineage
Tracking
(https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).

C<CreateAction> can only be invoked from within an SageMaker managed
environment. This includes SageMaker training jobs, processing jobs,
transform jobs, and SageMaker notebooks. A call to C<CreateAction> from
outside one of these environments results in an error.


=head2 CreateAlgorithm

=over

=item AlgorithmName => Str

=item TrainingSpecification => L<Paws::SageMaker::TrainingSpecification>

=item [AlgorithmDescription => Str]

=item [CertifyForMarketplace => Bool]

=item [InferenceSpecification => L<Paws::SageMaker::InferenceSpecification>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

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

Creates a running app for the specified UserProfile. Supported apps are
C<JupyterServer> and C<KernelGateway>. This operation is automatically
invoked by Amazon SageMaker Studio upon access to the associated
Domain, and when new kernel configurations are selected by the user. A
user may have multiple Apps active simultaneously.


=head2 CreateAppImageConfig

=over

=item AppImageConfigName => Str

=item [KernelGatewayImageConfig => L<Paws::SageMaker::KernelGatewayImageConfig>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateAppImageConfig>

Returns: a L<Paws::SageMaker::CreateAppImageConfigResponse> instance

Creates a configuration for running a SageMaker image as a
KernelGateway app. The configuration specifies the Amazon Elastic File
System (EFS) storage volume on the image, and a list of the kernels in
the image.


=head2 CreateArtifact

=over

=item ArtifactType => Str

=item Source => L<Paws::SageMaker::ArtifactSource>

=item [ArtifactName => Str]

=item [MetadataProperties => L<Paws::SageMaker::MetadataProperties>]

=item [Properties => L<Paws::SageMaker::LineageEntityParameters>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateArtifact>

Returns: a L<Paws::SageMaker::CreateArtifactResponse> instance

Creates an I<artifact>. An artifact is a lineage tracking entity that
represents a URI addressable object or data. Some examples are the S3
URI of a dataset and the ECR registry path of an image. For more
information, see Amazon SageMaker ML Lineage Tracking
(https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).

C<CreateArtifact> can only be invoked from within an SageMaker managed
environment. This includes SageMaker training jobs, processing jobs,
transform jobs, and SageMaker notebooks. A call to C<CreateArtifact>
from outside one of these environments results in an error.


=head2 CreateAutoMLJob

=over

=item AutoMLJobName => Str

=item InputDataConfig => ArrayRef[L<Paws::SageMaker::AutoMLChannel>]

=item OutputDataConfig => L<Paws::SageMaker::AutoMLOutputDataConfig>

=item RoleArn => Str

=item [AutoMLJobConfig => L<Paws::SageMaker::AutoMLJobConfig>]

=item [AutoMLJobObjective => L<Paws::SageMaker::AutoMLJobObjective>]

=item [GenerateCandidateDefinitionsOnly => Bool]

=item [ModelDeployConfig => L<Paws::SageMaker::ModelDeployConfig>]

=item [ProblemType => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateAutoMLJob>

Returns: a L<Paws::SageMaker::CreateAutoMLJobResponse> instance

Creates an Autopilot job.

Find the best performing model after you run an Autopilot job by
calling .

For information about how to use Autopilot, see Automate Model
Development with Amazon SageMaker Autopilot
(https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development.html).


=head2 CreateCodeRepository

=over

=item CodeRepositoryName => Str

=item GitConfig => L<Paws::SageMaker::GitConfig>

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


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

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


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

The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker
assumes to perform the model compilation job.

=back

You can also provide a C<Tag> to track the model compilation job's
resource use and costs. The response body contains the
C<CompilationJobArn> for the compiled job.

To stop a model compilation job, use StopCompilationJob. To get
information about a particular model compilation job, use
DescribeCompilationJob. To get information about multiple model
compilation jobs, use ListCompilationJobs.


=head2 CreateContext

=over

=item ContextName => Str

=item ContextType => Str

=item Source => L<Paws::SageMaker::ContextSource>

=item [Description => Str]

=item [Properties => L<Paws::SageMaker::LineageEntityParameters>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateContext>

Returns: a L<Paws::SageMaker::CreateContextResponse> instance

Creates a I<context>. A context is a lineage tracking entity that
represents a logical grouping of other tracking or experiment entities.
Some examples are an endpoint and a model package. For more
information, see Amazon SageMaker ML Lineage Tracking
(https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html).

C<CreateContext> can only be invoked from within an SageMaker managed
environment. This includes SageMaker training jobs, processing jobs,
transform jobs, and SageMaker notebooks. A call to C<CreateContext>
from outside one of these environments results in an error.


=head2 CreateDataQualityJobDefinition

=over

=item DataQualityAppSpecification => L<Paws::SageMaker::DataQualityAppSpecification>

=item DataQualityJobInput => L<Paws::SageMaker::DataQualityJobInput>

=item DataQualityJobOutputConfig => L<Paws::SageMaker::MonitoringOutputConfig>

=item JobDefinitionName => Str

=item JobResources => L<Paws::SageMaker::MonitoringResources>

=item RoleArn => Str

=item [DataQualityBaselineConfig => L<Paws::SageMaker::DataQualityBaselineConfig>]

=item [NetworkConfig => L<Paws::SageMaker::MonitoringNetworkConfig>]

=item [StoppingCondition => L<Paws::SageMaker::MonitoringStoppingCondition>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateDataQualityJobDefinition>

Returns: a L<Paws::SageMaker::CreateDataQualityJobDefinitionResponse> instance

Creates a definition for a job that monitors data quality and drift.
For information about model monitor, see Amazon SageMaker Model Monitor
(https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor.html).


=head2 CreateDeviceFleet

=over

=item DeviceFleetName => Str

=item OutputConfig => L<Paws::SageMaker::EdgeOutputConfig>

=item [Description => Str]

=item [RoleArn => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateDeviceFleet>

Returns: nothing

Creates a device fleet.


=head2 CreateDomain

=over

=item AuthMode => Str

=item DefaultUserSettings => L<Paws::SageMaker::UserSettings>

=item DomainName => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item VpcId => Str

=item [AppNetworkAccessType => Str]

=item [HomeEfsFileSystemKmsKeyId => Str]

=item [KmsKeyId => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateDomain>

Returns: a L<Paws::SageMaker::CreateDomainResponse> instance

Creates a C<Domain> used by Amazon SageMaker Studio. A domain consists
of an associated Amazon Elastic File System (EFS) volume, a list of
authorized users, and a variety of security, application, policy, and
Amazon Virtual Private Cloud (VPC) configurations. An AWS account is
limited to one domain per region. Users within a domain can share
notebook files and other artifacts with each other.

B<EFS storage>

When a domain is created, an EFS volume is created for use by all of
the users within the domain. Each user receives a private home
directory within the EFS volume for notebooks, Git repositories, and
data files.

SageMaker uses the AWS Key Management Service (AWS KMS) to encrypt the
EFS volume attached to the domain with an AWS managed customer master
key (CMK) by default. For more control, you can specify a customer
managed CMK. For more information, see Protect Data at Rest Using
Encryption
(https://docs.aws.amazon.com/sagemaker/latest/dg/encryption-at-rest.html).

B<VPC configuration>

All SageMaker Studio traffic between the domain and the EFS volume is
through the specified VPC and subnets. For other Studio traffic, you
can specify the C<AppNetworkAccessType> parameter.
C<AppNetworkAccessType> corresponds to the network access type that you
choose when you onboard to Studio. The following options are available:

=over

=item *

C<PublicInternetOnly> - Non-EFS traffic goes through a VPC managed by
Amazon SageMaker, which allows internet access. This is the default
value.

=item *

C<VpcOnly> - All Studio traffic is through the specified VPC and
subnets. Internet access is disabled by default. To allow internet
access, you must specify a NAT gateway.

When internet access is disabled, you won't be able to run a Studio
notebook or to train or host models unless your VPC has an interface
endpoint to the SageMaker API and runtime or a NAT gateway and your
security groups allow outbound connections.

=back

For more information, see Connect SageMaker Studio Notebooks to
Resources in a VPC
(https://docs.aws.amazon.com/sagemaker/latest/dg/studio-notebooks-and-internet-access.html).


=head2 CreateEdgePackagingJob

=over

=item CompilationJobName => Str

=item EdgePackagingJobName => Str

=item ModelName => Str

=item ModelVersion => Str

=item OutputConfig => L<Paws::SageMaker::EdgeOutputConfig>

=item RoleArn => Str

=item [ResourceKey => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateEdgePackagingJob>

Returns: nothing

Starts a SageMaker Edge Manager model packaging job. Edge Manager will
use the model artifacts from the Amazon Simple Storage Service bucket
that you specify. After the model has been packaged, Amazon SageMaker
saves the resulting artifacts to an S3 bucket that you specify.


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
CreateEndpointConfig API.

Use this API to deploy models using Amazon SageMaker hosting services.

For an example that calls this method when deploying a model to Amazon
SageMaker hosting services, see Deploy the Model to Amazon SageMaker
Hosting Services (AWS SDK for Python (Boto 3)).
(https://docs.aws.amazon.com/sagemaker/latest/dg/ex1-deploy-model.html#ex1-deploy-model-boto)

You must not delete an C<EndpointConfig> that is in use by an endpoint
that is live or while the C<UpdateEndpoint> or C<CreateEndpoint>
operations are being performed on the endpoint. To update an endpoint,
you must create a new C<EndpointConfig>.

The endpoint name must be unique within an AWS Region in your AWS
account.

When it receives the request, Amazon SageMaker creates the endpoint,
launches the resources (ML compute instances), and deploys the model(s)
on them.

When you call CreateEndpoint, a load call is made to DynamoDB to verify
that your endpoint configuration exists. When you read data from a
DynamoDB table supporting C<Eventually Consistent Reads>
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html),
the response might not reflect the results of a recently completed
write operation. The response might include some stale data. If the
dependent entities are not yet in DynamoDB, this causes a validation
error. If you repeat your read request after a short time, the response
should return the latest data. So retry logic is recommended to handle
these possible issues. We also recommend that customers call
DescribeEndpointConfig before calling CreateEndpoint to minimize the
potential impact of a DynamoDB eventually consistent read.

When Amazon SageMaker receives the request, it sets the endpoint status
to C<Creating>. After it creates the endpoint, it sets the status to
C<InService>. Amazon SageMaker can then process incoming requests for
inferences. To check the status of an endpoint, use the
DescribeEndpoint API.

If any of the models hosted at this endpoint get model data from an
Amazon S3 location, Amazon SageMaker uses AWS Security Token Service to
download model artifacts from the S3 path you provided. AWS STS is
activated in your IAM user account by default. If you previously
deactivated AWS STS for a region, you need to reactivate AWS STS for
that region. For more information, see Activating and Deactivating AWS
STS in an AWS Region
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
in the I<AWS Identity and Access Management User Guide>.

To add the IAM role policies for using this API operation, go to the
IAM console (https://console.aws.amazon.com/iam/), and choose Roles in
the left navigation pane. Search the IAM role that you want to grant
access to use the CreateEndpoint and CreateEndpointConfig API
operations, add the following policies to the role.

=over

=item *

Option 1: For a full Amazon SageMaker access, search and attach the
C<AmazonSageMakerFullAccess> policy.

=item *

Option 2: For granting a limited access to an IAM role, paste the
following Action elements manually into the JSON file of the IAM role:

C<"Action": ["sagemaker:CreateEndpoint",
"sagemaker:CreateEndpointConfig"]>

C<"Resource": [>

C<"arn:aws:sagemaker:region:account-id:endpoint/endpointName">

C<"arn:aws:sagemaker:region:account-id:endpoint-config/endpointConfigName">

C<]>

For more information, see Amazon SageMaker API Permissions: Actions,
Permissions, and Resources Reference
(https://docs.aws.amazon.com/sagemaker/latest/dg/api-permissions-reference.html).

=back



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
the CreateEndpoint API.

Use this API if you want to use Amazon SageMaker hosting services to
deploy models into production.

In the request, you define a C<ProductionVariant>, for each model that
you want to deploy. Each C<ProductionVariant> parameter also describes
the resources that you want Amazon SageMaker to provision. This
includes the number and type of ML compute instances to deploy.

If you are hosting multiple models, you also assign a C<VariantWeight>
to specify how much traffic you want to allocate to each model. For
example, suppose that you want to host two models, A and B, and you
assign traffic weight 2 for model A and 1 for model B. Amazon SageMaker
distributes two-thirds of the traffic to Model A, and one-third to
model B.

For an example that calls this method when deploying a model to Amazon
SageMaker hosting services, see Deploy the Model to Amazon SageMaker
Hosting Services (AWS SDK for Python (Boto 3)).
(https://docs.aws.amazon.com/sagemaker/latest/dg/ex1-deploy-model.html#ex1-deploy-model-boto)

When you call CreateEndpoint, a load call is made to DynamoDB to verify
that your endpoint configuration exists. When you read data from a
DynamoDB table supporting C<Eventually Consistent Reads>
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html),
the response might not reflect the results of a recently completed
write operation. The response might include some stale data. If the
dependent entities are not yet in DynamoDB, this causes a validation
error. If you repeat your read request after a short time, the response
should return the latest data. So retry logic is recommended to handle
these possible issues. We also recommend that customers call
DescribeEndpointConfig before calling CreateEndpoint to minimize the
potential impact of a DynamoDB eventually consistent read.


=head2 CreateExperiment

=over

=item ExperimentName => Str

=item [Description => Str]

=item [DisplayName => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateExperiment>

Returns: a L<Paws::SageMaker::CreateExperimentResponse> instance

Creates an SageMaker I<experiment>. An experiment is a collection of
I<trials> that are observed, compared and evaluated as a group. A trial
is a set of steps, called I<trial components>, that produce a machine
learning model.

The goal of an experiment is to determine the components that produce
the best model. Multiple trials are performed, each one isolating and
measuring the impact of a change to one or more inputs, while keeping
the remaining inputs constant.

When you use SageMaker Studio or the SageMaker Python SDK, all
experiments, trials, and trial components are automatically tracked,
logged, and indexed. When you use the AWS SDK for Python (Boto), you
must use the logging APIs provided by the SDK.

You can add tags to experiments, trials, trial components and then use
the Search API to search for the tags.

To add a description to an experiment, specify the optional
C<Description> parameter. To add a description later, or to change the
description, call the UpdateExperiment API.

To get a list of all your experiments, call the ListExperiments API. To
view an experiment's properties, call the DescribeExperiment API. To
get a list of all the trials associated with an experiment, call the
ListTrials API. To create a trial call the CreateTrial API.


=head2 CreateFeatureGroup

=over

=item EventTimeFeatureName => Str

=item FeatureDefinitions => ArrayRef[L<Paws::SageMaker::FeatureDefinition>]

=item FeatureGroupName => Str

=item RecordIdentifierFeatureName => Str

=item [Description => Str]

=item [OfflineStoreConfig => L<Paws::SageMaker::OfflineStoreConfig>]

=item [OnlineStoreConfig => L<Paws::SageMaker::OnlineStoreConfig>]

=item [RoleArn => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateFeatureGroup>

Returns: a L<Paws::SageMaker::CreateFeatureGroupResponse> instance

Create a new C<FeatureGroup>. A C<FeatureGroup> is a group of
C<Features> defined in the C<FeatureStore> to describe a C<Record>.

The C<FeatureGroup> defines the schema and features contained in the
FeatureGroup. A C<FeatureGroup> definition is composed of a list of
C<Features>, a C<RecordIdentifierFeatureName>, an
C<EventTimeFeatureName> and configurations for its C<OnlineStore> and
C<OfflineStore>. Check AWS service quotas
(https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html)
to see the C<FeatureGroup>s quota for your AWS account.

You must include at least one of C<OnlineStoreConfig> and
C<OfflineStoreConfig> to create a C<FeatureGroup>.


=head2 CreateFlowDefinition

=over

=item FlowDefinitionName => Str

=item HumanLoopConfig => L<Paws::SageMaker::HumanLoopConfig>

=item OutputConfig => L<Paws::SageMaker::FlowDefinitionOutputConfig>

=item RoleArn => Str

=item [HumanLoopActivationConfig => L<Paws::SageMaker::HumanLoopActivationConfig>]

=item [HumanLoopRequestSource => L<Paws::SageMaker::HumanLoopRequestSource>]

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


=head2 CreateImage

=over

=item ImageName => Str

=item RoleArn => Str

=item [Description => Str]

=item [DisplayName => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateImage>

Returns: a L<Paws::SageMaker::CreateImageResponse> instance

Creates a custom SageMaker image. A SageMaker image is a set of image
versions. Each image version represents a container image stored in
Amazon Container Registry (ECR). For more information, see Bring your
own SageMaker image
(https://docs.aws.amazon.com/sagemaker/latest/dg/studio-byoi.html).


=head2 CreateImageVersion

=over

=item BaseImage => Str

=item ClientToken => Str

=item ImageName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateImageVersion>

Returns: a L<Paws::SageMaker::CreateImageVersionResponse> instance

Creates a version of the SageMaker image specified by C<ImageName>. The
version represents the Amazon Container Registry (ECR) container image
specified by C<BaseImage>.


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

You can use this operation to create a static labeling job or a
streaming labeling job. A static labeling job stops if all data objects
in the input manifest file identified in C<ManifestS3Uri> have been
labeled. A streaming labeling job runs perpetually until it is manually
stopped, or remains idle for 10 days. You can send new data objects to
an active (C<InProgress>) streaming labeling job in real time. To learn
how to create a static labeling job, see Create a Labeling Job (API)
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-create-labeling-job-api.html)
in the Amazon SageMaker Developer Guide. To learn how to create a
streaming labeling job, see Create a Streaming Labeling Job
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-streaming-create-job.html).


=head2 CreateModel

=over

=item ExecutionRoleArn => Str

=item ModelName => Str

=item [Containers => ArrayRef[L<Paws::SageMaker::ContainerDefinition>]]

=item [EnableNetworkIsolation => Bool]

=item [InferenceExecutionConfig => L<Paws::SageMaker::InferenceExecutionConfig>]

=item [PrimaryContainer => L<Paws::SageMaker::ContainerDefinition>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [VpcConfig => L<Paws::SageMaker::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateModel>

Returns: a L<Paws::SageMaker::CreateModelOutput> instance

Creates a model in Amazon SageMaker. In the request, you name the model
and describe a primary container. For the primary container, you
specify the Docker image that contains inference code, artifacts (from
prior training), and a custom environment map that the inference code
uses when you deploy the model for predictions.

Use this API to create a model if you want to use Amazon SageMaker
hosting services or run a batch transform job.

To host your model, you create an endpoint configuration with the
C<CreateEndpointConfig> API, and then create an endpoint with the
C<CreateEndpoint> API. Amazon SageMaker then deploys all of the
containers that you defined for the model in the hosting environment.

For an example that calls this method when deploying a model to Amazon
SageMaker hosting services, see Deploy the Model to Amazon SageMaker
Hosting Services (AWS SDK for Python (Boto 3)).
(https://docs.aws.amazon.com/sagemaker/latest/dg/ex1-deploy-model.html#ex1-deploy-model-boto)

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


=head2 CreateModelBiasJobDefinition

=over

=item JobDefinitionName => Str

=item JobResources => L<Paws::SageMaker::MonitoringResources>

=item ModelBiasAppSpecification => L<Paws::SageMaker::ModelBiasAppSpecification>

=item ModelBiasJobInput => L<Paws::SageMaker::ModelBiasJobInput>

=item ModelBiasJobOutputConfig => L<Paws::SageMaker::MonitoringOutputConfig>

=item RoleArn => Str

=item [ModelBiasBaselineConfig => L<Paws::SageMaker::ModelBiasBaselineConfig>]

=item [NetworkConfig => L<Paws::SageMaker::MonitoringNetworkConfig>]

=item [StoppingCondition => L<Paws::SageMaker::MonitoringStoppingCondition>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateModelBiasJobDefinition>

Returns: a L<Paws::SageMaker::CreateModelBiasJobDefinitionResponse> instance

Creates the definition for a model bias job.


=head2 CreateModelExplainabilityJobDefinition

=over

=item JobDefinitionName => Str

=item JobResources => L<Paws::SageMaker::MonitoringResources>

=item ModelExplainabilityAppSpecification => L<Paws::SageMaker::ModelExplainabilityAppSpecification>

=item ModelExplainabilityJobInput => L<Paws::SageMaker::ModelExplainabilityJobInput>

=item ModelExplainabilityJobOutputConfig => L<Paws::SageMaker::MonitoringOutputConfig>

=item RoleArn => Str

=item [ModelExplainabilityBaselineConfig => L<Paws::SageMaker::ModelExplainabilityBaselineConfig>]

=item [NetworkConfig => L<Paws::SageMaker::MonitoringNetworkConfig>]

=item [StoppingCondition => L<Paws::SageMaker::MonitoringStoppingCondition>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateModelExplainabilityJobDefinition>

Returns: a L<Paws::SageMaker::CreateModelExplainabilityJobDefinitionResponse> instance

Creates the definition for a model explainability job.


=head2 CreateModelPackage

=over

=item [CertifyForMarketplace => Bool]

=item [ClientToken => Str]

=item [InferenceSpecification => L<Paws::SageMaker::InferenceSpecification>]

=item [MetadataProperties => L<Paws::SageMaker::MetadataProperties>]

=item [ModelApprovalStatus => Str]

=item [ModelMetrics => L<Paws::SageMaker::ModelMetrics>]

=item [ModelPackageDescription => Str]

=item [ModelPackageGroupName => Str]

=item [ModelPackageName => Str]

=item [SourceAlgorithmSpecification => L<Paws::SageMaker::SourceAlgorithmSpecification>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [ValidationSpecification => L<Paws::SageMaker::ModelPackageValidationSpecification>]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateModelPackage>

Returns: a L<Paws::SageMaker::CreateModelPackageOutput> instance

Creates a model package that you can use to create Amazon SageMaker
models or list on AWS Marketplace, or a versioned model that is part of
a model group. Buyers can subscribe to model packages listed on AWS
Marketplace to create models in Amazon SageMaker.

To create a model package by specifying a Docker container that
contains your inference code and the Amazon S3 location of your model
artifacts, provide values for C<InferenceSpecification>. To create a
model from an algorithm resource that you created or subscribed to in
AWS Marketplace, provide a value for C<SourceAlgorithmSpecification>.

There are two types of model packages:

=over

=item *

Versioned - a model that is part of a model group in the model
registry.

=item *

Unversioned - a model package that is not part of a model group.

=back



=head2 CreateModelPackageGroup

=over

=item ModelPackageGroupName => Str

=item [ModelPackageGroupDescription => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateModelPackageGroup>

Returns: a L<Paws::SageMaker::CreateModelPackageGroupOutput> instance

Creates a model group. A model group contains a group of model
versions.


=head2 CreateModelQualityJobDefinition

=over

=item JobDefinitionName => Str

=item JobResources => L<Paws::SageMaker::MonitoringResources>

=item ModelQualityAppSpecification => L<Paws::SageMaker::ModelQualityAppSpecification>

=item ModelQualityJobInput => L<Paws::SageMaker::ModelQualityJobInput>

=item ModelQualityJobOutputConfig => L<Paws::SageMaker::MonitoringOutputConfig>

=item RoleArn => Str

=item [ModelQualityBaselineConfig => L<Paws::SageMaker::ModelQualityBaselineConfig>]

=item [NetworkConfig => L<Paws::SageMaker::MonitoringNetworkConfig>]

=item [StoppingCondition => L<Paws::SageMaker::MonitoringStoppingCondition>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateModelQualityJobDefinition>

Returns: a L<Paws::SageMaker::CreateModelQualityJobDefinitionResponse> instance

Creates a definition for a job that monitors model quality and drift.
For information about model monitor, see Amazon SageMaker Model Monitor
(https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor.html).


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


=head2 CreatePipeline

=over

=item ClientRequestToken => Str

=item PipelineDefinition => Str

=item PipelineName => Str

=item RoleArn => Str

=item [PipelineDescription => Str]

=item [PipelineDisplayName => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreatePipeline>

Returns: a L<Paws::SageMaker::CreatePipelineResponse> instance

Creates a pipeline using a JSON pipeline definition.


=head2 CreatePresignedDomainUrl

=over

=item DomainId => Str

=item UserProfileName => Str

=item [ExpiresInSeconds => Int]

=item [SessionExpirationDurationInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreatePresignedDomainUrl>

Returns: a L<Paws::SageMaker::CreatePresignedDomainUrlResponse> instance

Creates a URL for a specified UserProfile in a Domain. When accessed in
a web browser, the user will be automatically signed in to Amazon
SageMaker Studio, and granted access to all of the Apps and files
associated with the Domain's Amazon Elastic File System (EFS) volume.
This operation can only be called when the authentication mode equals
IAM.

The URL that you get from a call to C<CreatePresignedDomainUrl> has a
default timeout of 5 minutes. You can configure this value using
C<ExpiresInSeconds>. If you try to use the URL after the timeout limit
expires, you are directed to the AWS console sign-in page.


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

The IAM role or user used to call this API defines the permissions to
access the notebook instance. Once the presigned URL is created, no
additional permission is required to access this URL. IAM authorization
policies for this API are also enforced for every HTTP request and
WebSocket frame that attempts to connect to the notebook instance.

You can restrict access to this API and to the URL that it returns to a
list of IP addresses that you specify. Use the C<NotIpAddress>
condition operator and the C<aws:SourceIP> condition context key to
specify the list of IP addresses that you want to have access to the
notebook instance. For more information, see Limit Access to a Notebook
Instance by IP Address
(https://docs.aws.amazon.com/sagemaker/latest/dg/security_iam_id-based-policy-examples.html#nbi-ip-filter).

The URL that you get from a call to CreatePresignedNotebookInstanceUrl
is valid only for 5 minutes. If you try to use the URL after the
5-minute limit expires, you are directed to the AWS console sign-in
page.


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


=head2 CreateProject

=over

=item ProjectName => Str

=item ServiceCatalogProvisioningDetails => L<Paws::SageMaker::ServiceCatalogProvisioningDetails>

=item [ProjectDescription => Str]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateProject>

Returns: a L<Paws::SageMaker::CreateProjectOutput> instance

Creates a machine learning (ML) project that can contain one or more
templates that set up an ML pipeline from training to deploying an
approved model.


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

=item [Environment => L<Paws::SageMaker::TrainingEnvironmentMap>]

=item [ExperimentConfig => L<Paws::SageMaker::ExperimentConfig>]

=item [HyperParameters => L<Paws::SageMaker::HyperParameters>]

=item [InputDataConfig => ArrayRef[L<Paws::SageMaker::Channel>]]

=item [ProfilerConfig => L<Paws::SageMaker::ProfilerConfig>]

=item [ProfilerRuleConfigurations => ArrayRef[L<Paws::SageMaker::ProfilerRuleConfiguration>]]

=item [RetryStrategy => L<Paws::SageMaker::RetryStrategy>]

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
inference.

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

C<RoleArn> - The Amazon Resource Name (ARN) that Amazon SageMaker
assumes to perform tasks on your behalf during model training. You must
grant this role the necessary permissions so that Amazon SageMaker can
successfully complete model training.

=item *

C<StoppingCondition> - To help cap training costs, use
C<MaxRuntimeInSeconds> to set a time limit for training. Use
C<MaxWaitTimeInSeconds> to specify how long a managed spot training job
has to complete.

=item *

C<Environment> - The environment variables to set in the Docker
container.

=item *

C<RetryStrategy> - The number of times to retry the job when the job
fails due to an C<InternalServerError>.

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

=item [ModelClientConfig => L<Paws::SageMaker::ModelClientConfig>]

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

=item [MetadataProperties => L<Paws::SageMaker::MetadataProperties>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateTrial>

Returns: a L<Paws::SageMaker::CreateTrialResponse> instance

Creates an SageMaker I<trial>. A trial is a set of steps called I<trial
components> that produce a machine learning model. A trial is part of a
single SageMaker I<experiment>.

When you use SageMaker Studio or the SageMaker Python SDK, all
experiments, trials, and trial components are automatically tracked,
logged, and indexed. When you use the AWS SDK for Python (Boto), you
must use the logging APIs provided by the SDK.

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

=item [MetadataProperties => L<Paws::SageMaker::MetadataProperties>]

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

When you use SageMaker Studio or the SageMaker Python SDK, all
experiments, trials, and trial components are automatically tracked,
logged, and indexed. When you use the AWS SDK for Python (Boto), you
must use the logging APIs provided by the SDK.

You can add tags to a trial component and then use the Search API to
search for the tags.

C<CreateTrialComponent> can only be invoked from within an SageMaker
managed environment. This includes SageMaker training jobs, processing
jobs, transform jobs, and SageMaker notebooks. A call to
C<CreateTrialComponent> from outside one of these environments results
in an error.


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

Creates a user profile. A user profile represents a single user within
a domain, and is the main way to reference a "person" for the purposes
of sharing, reporting, and other user-oriented features. This entity is
created when a user onboards to Amazon SageMaker Studio. If an
administrator invites a person by email or imports them from SSO, a
user profile is automatically created. A user profile is the primary
holder of settings for an individual user and has a reference to the
user's private Amazon Elastic File System (EFS) home directory.


=head2 CreateWorkforce

=over

=item WorkforceName => Str

=item [CognitoConfig => L<Paws::SageMaker::CognitoConfig>]

=item [OidcConfig => L<Paws::SageMaker::OidcConfig>]

=item [SourceIpConfig => L<Paws::SageMaker::SourceIpConfig>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateWorkforce>

Returns: a L<Paws::SageMaker::CreateWorkforceResponse> instance

Use this operation to create a workforce. This operation will return an
error if a workforce already exists in the AWS Region that you specify.
You can only create one workforce in each AWS Region per AWS account.

If you want to create a new workforce in an AWS Region where a
workforce already exists, use the API operation to delete the existing
workforce and then use C<CreateWorkforce> to create a new workforce.

To create a private workforce using Amazon Cognito, you must specify a
Cognito user pool in C<CognitoConfig>. You can also create an Amazon
Cognito workforce using the Amazon SageMaker console. For more
information, see Create a Private Workforce (Amazon Cognito)
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private.html).

To create a private workforce using your own OIDC Identity Provider
(IdP), specify your IdP configuration in C<OidcConfig>. Your OIDC IdP
must support I<groups> because groups are used by Ground Truth and
Amazon A2I to create work teams. For more information, see Create a
Private Workforce (OIDC IdP)
(https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private-oidc.html).


=head2 CreateWorkteam

=over

=item Description => Str

=item MemberDefinitions => ArrayRef[L<Paws::SageMaker::MemberDefinition>]

=item WorkteamName => Str

=item [NotificationConfiguration => L<Paws::SageMaker::NotificationConfiguration>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]

=item [WorkforceName => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::CreateWorkteam>

Returns: a L<Paws::SageMaker::CreateWorkteamResponse> instance

Creates a new work team for labeling your data. A work team is defined
by one or more Amazon Cognito user pools. You must first create the
user pools before you can create a work team.

You cannot create more than 25 work teams in an account and region.


=head2 DeleteAction

=over

=item ActionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteAction>

Returns: a L<Paws::SageMaker::DeleteActionResponse> instance

Deletes an action.


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


=head2 DeleteAppImageConfig

=over

=item AppImageConfigName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteAppImageConfig>

Returns: nothing

Deletes an AppImageConfig.


=head2 DeleteArtifact

=over

=item [ArtifactArn => Str]

=item [Source => L<Paws::SageMaker::ArtifactSource>]


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteArtifact>

Returns: a L<Paws::SageMaker::DeleteArtifactResponse> instance

Deletes an artifact. Either C<ArtifactArn> or C<Source> must be
specified.


=head2 DeleteAssociation

=over

=item DestinationArn => Str

=item SourceArn => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteAssociation>

Returns: a L<Paws::SageMaker::DeleteAssociationResponse> instance

Deletes an association.


=head2 DeleteCodeRepository

=over

=item CodeRepositoryName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteCodeRepository>

Returns: nothing

Deletes the specified Git repository from your account.


=head2 DeleteContext

=over

=item ContextName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteContext>

Returns: a L<Paws::SageMaker::DeleteContextResponse> instance

Deletes an context.


=head2 DeleteDataQualityJobDefinition

=over

=item JobDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteDataQualityJobDefinition>

Returns: nothing

Deletes a data quality monitoring job definition.


=head2 DeleteDeviceFleet

=over

=item DeviceFleetName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteDeviceFleet>

Returns: nothing

Deletes a fleet.


=head2 DeleteDomain

=over

=item DomainId => Str

=item [RetentionPolicy => L<Paws::SageMaker::RetentionPolicy>]


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteDomain>

Returns: nothing

Used to delete a domain. If you onboarded with IAM mode, you will need
to delete your domain to onboard again using SSO. Use with caution. All
of the members of the domain will lose access to their EFS volume,
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

You must not delete an C<EndpointConfig> in use by an endpoint that is
live or while the C<UpdateEndpoint> or C<CreateEndpoint> operations are
being performed on the endpoint. If you delete the C<EndpointConfig> of
an endpoint that is active or being created or updated you may lose
visibility into the instance type the endpoint is using. The endpoint
must be deleted in order to stop incurring charges.


=head2 DeleteExperiment

=over

=item ExperimentName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteExperiment>

Returns: a L<Paws::SageMaker::DeleteExperimentResponse> instance

Deletes an SageMaker experiment. All trials associated with the
experiment must be deleted first. Use the ListTrials API to get a list
of the trials associated with the experiment.


=head2 DeleteFeatureGroup

=over

=item FeatureGroupName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteFeatureGroup>

Returns: nothing

Delete the C<FeatureGroup> and any data that was written to the
C<OnlineStore> of the C<FeatureGroup>. Data cannot be accessed from the
C<OnlineStore> immediately after C<DeleteFeatureGroup> is called.

Data written into the C<OfflineStore> will not be deleted. The AWS Glue
database and tables that are automatically created for your
C<OfflineStore> are not deleted.


=head2 DeleteFlowDefinition

=over

=item FlowDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteFlowDefinition>

Returns: a L<Paws::SageMaker::DeleteFlowDefinitionResponse> instance

Deletes the specified flow definition.


=head2 DeleteHumanTaskUi

=over

=item HumanTaskUiName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteHumanTaskUi>

Returns: a L<Paws::SageMaker::DeleteHumanTaskUiResponse> instance

Use this operation to delete a human task user interface (worker task
template).

To see a list of human task user interfaces (work task templates) in
your account, use . When you delete a worker task template, it no
longer appears when you call C<ListHumanTaskUis>.


=head2 DeleteImage

=over

=item ImageName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteImage>

Returns: a L<Paws::SageMaker::DeleteImageResponse> instance

Deletes a SageMaker image and all versions of the image. The container
images aren't deleted.


=head2 DeleteImageVersion

=over

=item ImageName => Str

=item Version => Int


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteImageVersion>

Returns: a L<Paws::SageMaker::DeleteImageVersionResponse> instance

Deletes a version of a SageMaker image. The container image the version
represents isn't deleted.


=head2 DeleteModel

=over

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteModel>

Returns: nothing

Deletes a model. The C<DeleteModel> API deletes only the model entry
that was created in Amazon SageMaker when you called the CreateModel
API. It does not delete model artifacts, inference code, or the IAM
role that you specified when creating the model.


=head2 DeleteModelBiasJobDefinition

=over

=item JobDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteModelBiasJobDefinition>

Returns: nothing

Deletes an Amazon SageMaker model bias job definition.


=head2 DeleteModelExplainabilityJobDefinition

=over

=item JobDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteModelExplainabilityJobDefinition>

Returns: nothing

Deletes an Amazon SageMaker model explainability job definition.


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


=head2 DeleteModelPackageGroup

=over

=item ModelPackageGroupName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteModelPackageGroup>

Returns: nothing

Deletes the specified model group.


=head2 DeleteModelPackageGroupPolicy

=over

=item ModelPackageGroupName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteModelPackageGroupPolicy>

Returns: nothing

Deletes a model group resource policy.


=head2 DeleteModelQualityJobDefinition

=over

=item JobDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteModelQualityJobDefinition>

Returns: nothing

Deletes the secified model quality monitoring job definition.


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


=head2 DeletePipeline

=over

=item ClientRequestToken => Str

=item PipelineName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeletePipeline>

Returns: a L<Paws::SageMaker::DeletePipelineResponse> instance

Deletes a pipeline if there are no running instances of the pipeline.
To delete a pipeline, you must stop all running instances of the
pipeline using the C<StopPipelineExecution> API. When you delete a
pipeline, all instances of the pipeline are deleted.


=head2 DeleteProject

=over

=item ProjectName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteProject>

Returns: nothing

Delete the specified project.


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

When you call this API to delete tags from a SageMaker Studio Domain or
User Profile, the deleted tags are not removed from Apps that the
SageMaker Studio Domain or User Profile launched before you called this
API.


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

Deletes a user profile. When a user profile is deleted, the user loses
access to their EFS volume, including data, notebooks, and other
artifacts.


=head2 DeleteWorkforce

=over

=item WorkforceName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteWorkforce>

Returns: a L<Paws::SageMaker::DeleteWorkforceResponse> instance

Use this operation to delete a workforce.

If you want to create a new workforce in an AWS Region where a
workforce already exists, use this operation to delete the existing
workforce and then use to create a new workforce.

If a private workforce contains one or more work teams, you must use
the operation to delete all work teams before you delete the workforce.
If you try to delete a workforce that contains one or more work teams,
you will recieve a C<ResourceInUse> error.


=head2 DeleteWorkteam

=over

=item WorkteamName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DeleteWorkteam>

Returns: a L<Paws::SageMaker::DeleteWorkteamResponse> instance

Deletes an existing work team. This operation can't be undone.


=head2 DeregisterDevices

=over

=item DeviceFleetName => Str

=item DeviceNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SageMaker::DeregisterDevices>

Returns: nothing

Deregisters the specified devices. After you deregister a device, you
will need to re-register the devices.


=head2 DescribeAction

=over

=item ActionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeAction>

Returns: a L<Paws::SageMaker::DescribeActionResponse> instance

Describes an action.


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


=head2 DescribeAppImageConfig

=over

=item AppImageConfigName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeAppImageConfig>

Returns: a L<Paws::SageMaker::DescribeAppImageConfigResponse> instance

Describes an AppImageConfig.


=head2 DescribeArtifact

=over

=item ArtifactArn => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeArtifact>

Returns: a L<Paws::SageMaker::DescribeArtifactResponse> instance

Describes an artifact.


=head2 DescribeAutoMLJob

=over

=item AutoMLJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeAutoMLJob>

Returns: a L<Paws::SageMaker::DescribeAutoMLJobResponse> instance

Returns information about an Amazon SageMaker AutoML job.


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


=head2 DescribeContext

=over

=item ContextName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeContext>

Returns: a L<Paws::SageMaker::DescribeContextResponse> instance

Describes a context.


=head2 DescribeDataQualityJobDefinition

=over

=item JobDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeDataQualityJobDefinition>

Returns: a L<Paws::SageMaker::DescribeDataQualityJobDefinitionResponse> instance

Gets the details of a data quality monitoring job definition.


=head2 DescribeDevice

=over

=item DeviceFleetName => Str

=item DeviceName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeDevice>

Returns: a L<Paws::SageMaker::DescribeDeviceResponse> instance

Describes the device.


=head2 DescribeDeviceFleet

=over

=item DeviceFleetName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeDeviceFleet>

Returns: a L<Paws::SageMaker::DescribeDeviceFleetResponse> instance

A description of the fleet the device belongs to.


=head2 DescribeDomain

=over

=item DomainId => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeDomain>

Returns: a L<Paws::SageMaker::DescribeDomainResponse> instance

The description of the domain.


=head2 DescribeEdgePackagingJob

=over

=item EdgePackagingJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeEdgePackagingJob>

Returns: a L<Paws::SageMaker::DescribeEdgePackagingJobResponse> instance

A description of edge packaging jobs.


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


=head2 DescribeFeatureGroup

=over

=item FeatureGroupName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeFeatureGroup>

Returns: a L<Paws::SageMaker::DescribeFeatureGroupResponse> instance

Use this operation to describe a C<FeatureGroup>. The response includes
information on the creation time, C<FeatureGroup> name, the unique
identifier for each C<FeatureGroup>, and more.


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

Returns information about the requested human task user interface
(worker task template).


=head2 DescribeHyperParameterTuningJob

=over

=item HyperParameterTuningJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeHyperParameterTuningJob>

Returns: a L<Paws::SageMaker::DescribeHyperParameterTuningJobResponse> instance

Gets a description of a hyperparameter tuning job.


=head2 DescribeImage

=over

=item ImageName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeImage>

Returns: a L<Paws::SageMaker::DescribeImageResponse> instance

Describes a SageMaker image.


=head2 DescribeImageVersion

=over

=item ImageName => Str

=item [Version => Int]


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeImageVersion>

Returns: a L<Paws::SageMaker::DescribeImageVersionResponse> instance

Describes a version of a SageMaker image.


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


=head2 DescribeModelBiasJobDefinition

=over

=item JobDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeModelBiasJobDefinition>

Returns: a L<Paws::SageMaker::DescribeModelBiasJobDefinitionResponse> instance

Returns a description of a model bias job definition.


=head2 DescribeModelExplainabilityJobDefinition

=over

=item JobDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeModelExplainabilityJobDefinition>

Returns: a L<Paws::SageMaker::DescribeModelExplainabilityJobDefinitionResponse> instance

Returns a description of a model explainability job definition.


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


=head2 DescribeModelPackageGroup

=over

=item ModelPackageGroupName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeModelPackageGroup>

Returns: a L<Paws::SageMaker::DescribeModelPackageGroupOutput> instance

Gets a description for the specified model group.


=head2 DescribeModelQualityJobDefinition

=over

=item JobDefinitionName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeModelQualityJobDefinition>

Returns: a L<Paws::SageMaker::DescribeModelQualityJobDefinitionResponse> instance

Returns a description of a model quality job definition.


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


=head2 DescribePipeline

=over

=item PipelineName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribePipeline>

Returns: a L<Paws::SageMaker::DescribePipelineResponse> instance

Describes the details of a pipeline.


=head2 DescribePipelineDefinitionForExecution

=over

=item PipelineExecutionArn => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribePipelineDefinitionForExecution>

Returns: a L<Paws::SageMaker::DescribePipelineDefinitionForExecutionResponse> instance

Describes the details of an execution's pipeline definition.


=head2 DescribePipelineExecution

=over

=item PipelineExecutionArn => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribePipelineExecution>

Returns: a L<Paws::SageMaker::DescribePipelineExecutionResponse> instance

Describes the details of a pipeline execution.


=head2 DescribeProcessingJob

=over

=item ProcessingJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeProcessingJob>

Returns: a L<Paws::SageMaker::DescribeProcessingJobResponse> instance

Returns a description of a processing job.


=head2 DescribeProject

=over

=item ProjectName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::DescribeProject>

Returns: a L<Paws::SageMaker::DescribeProjectOutput> instance

Describes the details of a project.


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

Some of the attributes below only appear if the training job
successfully starts. If the training job fails, C<TrainingJobStatus> is
C<Failed> and, depending on the C<FailureReason>, attributes like
C<TrainingStartTime>, C<TrainingTimeInSeconds>, C<TrainingEndTime>, and
C<BillableTimeInSeconds> may not be present in the response.


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

Describes a user profile. For more information, see
C<CreateUserProfile>.


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


=head2 DisableSagemakerServicecatalogPortfolio






Each argument is described in detail in: L<Paws::SageMaker::DisableSagemakerServicecatalogPortfolio>

Returns: a L<Paws::SageMaker::DisableSagemakerServicecatalogPortfolioOutput> instance

Disables using Service Catalog in SageMaker. Service Catalog is used to
create SageMaker projects.


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

To get a list of the trials a component is associated with, use the
Search API. Specify C<ExperimentTrialComponent> for the C<Resource>
parameter. The list appears in the response under
C<Results.TrialComponent.Parents>.


=head2 EnableSagemakerServicecatalogPortfolio






Each argument is described in detail in: L<Paws::SageMaker::EnableSagemakerServicecatalogPortfolio>

Returns: a L<Paws::SageMaker::EnableSagemakerServicecatalogPortfolioOutput> instance

Enables using Service Catalog in SageMaker. Service Catalog is used to
create SageMaker projects.


=head2 GetDeviceFleetReport

=over

=item DeviceFleetName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::GetDeviceFleetReport>

Returns: a L<Paws::SageMaker::GetDeviceFleetReportResponse> instance

Describes a fleet.


=head2 GetModelPackageGroupPolicy

=over

=item ModelPackageGroupName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::GetModelPackageGroupPolicy>

Returns: a L<Paws::SageMaker::GetModelPackageGroupPolicyOutput> instance

Gets a resource policy that manages access for a model group. For
information about resource policies, see Identity-based policies and
resource-based policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html)
in the I<AWS Identity and Access Management User Guide.>.


=head2 GetSagemakerServicecatalogPortfolioStatus






Each argument is described in detail in: L<Paws::SageMaker::GetSagemakerServicecatalogPortfolioStatus>

Returns: a L<Paws::SageMaker::GetSagemakerServicecatalogPortfolioStatusOutput> instance

Gets the status of Service Catalog in SageMaker. Service Catalog is
used to create SageMaker projects.


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


=head2 ListActions

=over

=item [ActionType => Str]

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [SourceUri => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListActions>

Returns: a L<Paws::SageMaker::ListActionsResponse> instance

Lists the actions in your account and their properties.


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


=head2 ListAppImageConfigs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [ModifiedTimeAfter => Str]

=item [ModifiedTimeBefore => Str]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListAppImageConfigs>

Returns: a L<Paws::SageMaker::ListAppImageConfigsResponse> instance

Lists the AppImageConfigs in your account and their properties. The
list can be filtered by creation time or modified time, and whether the
AppImageConfig name contains a specified string.


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


=head2 ListArtifacts

=over

=item [ArtifactType => Str]

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [SourceUri => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListArtifacts>

Returns: a L<Paws::SageMaker::ListArtifactsResponse> instance

Lists the artifacts in your account and their properties.


=head2 ListAssociations

=over

=item [AssociationType => Str]

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [DestinationArn => Str]

=item [DestinationType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [SourceArn => Str]

=item [SourceType => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListAssociations>

Returns: a L<Paws::SageMaker::ListAssociationsResponse> instance

Lists the associations in your account and their properties.


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

List the candidates created for the job.


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


=head2 ListContexts

=over

=item [ContextType => Str]

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [SourceUri => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListContexts>

Returns: a L<Paws::SageMaker::ListContextsResponse> instance

Lists the contexts in your account and their properties.


=head2 ListDataQualityJobDefinitions

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [EndpointName => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListDataQualityJobDefinitions>

Returns: a L<Paws::SageMaker::ListDataQualityJobDefinitionsResponse> instance

Lists the data quality job definitions in your account.


=head2 ListDeviceFleets

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

Each argument is described in detail in: L<Paws::SageMaker::ListDeviceFleets>

Returns: a L<Paws::SageMaker::ListDeviceFleetsResponse> instance

Returns a list of devices in the fleet.


=head2 ListDevices

=over

=item [DeviceFleetName => Str]

=item [LatestHeartbeatAfter => Str]

=item [MaxResults => Int]

=item [ModelName => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListDevices>

Returns: a L<Paws::SageMaker::ListDevicesResponse> instance

A list of devices.


=head2 ListDomains

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListDomains>

Returns: a L<Paws::SageMaker::ListDomainsResponse> instance

Lists the domains.


=head2 ListEdgePackagingJobs

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [ModelNameContains => Str]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListEdgePackagingJobs>

Returns: a L<Paws::SageMaker::ListEdgePackagingJobsResponse> instance

Returns a list of edge packaging jobs.


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


=head2 ListFeatureGroups

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [FeatureGroupStatusEquals => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [OfflineStoreStatusEquals => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListFeatureGroups>

Returns: a L<Paws::SageMaker::ListFeatureGroupsResponse> instance

List C<FeatureGroup>s based on given filter and order.


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


=head2 ListImages

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

Each argument is described in detail in: L<Paws::SageMaker::ListImages>

Returns: a L<Paws::SageMaker::ListImagesResponse> instance

Lists the images in your account and their properties. The list can be
filtered by creation time or modified time, and whether the image name
contains a specified string.


=head2 ListImageVersions

=over

=item ImageName => Str

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListImageVersions>

Returns: a L<Paws::SageMaker::ListImageVersionsResponse> instance

Lists the versions of a specified image and their properties. The list
can be filtered by creation time or modified time.


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


=head2 ListModelBiasJobDefinitions

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [EndpointName => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListModelBiasJobDefinitions>

Returns: a L<Paws::SageMaker::ListModelBiasJobDefinitionsResponse> instance

Lists model bias jobs definitions that satisfy various filters.


=head2 ListModelExplainabilityJobDefinitions

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [EndpointName => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListModelExplainabilityJobDefinitions>

Returns: a L<Paws::SageMaker::ListModelExplainabilityJobDefinitionsResponse> instance

Lists model explainability job definitions that satisfy various
filters.


=head2 ListModelPackageGroups

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListModelPackageGroups>

Returns: a L<Paws::SageMaker::ListModelPackageGroupsOutput> instance

Gets a list of the model groups in your AWS account.


=head2 ListModelPackages

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [ModelApprovalStatus => Str]

=item [ModelPackageGroupName => Str]

=item [ModelPackageType => Str]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListModelPackages>

Returns: a L<Paws::SageMaker::ListModelPackagesOutput> instance

Lists the model packages that have been created.


=head2 ListModelQualityJobDefinitions

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [EndpointName => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListModelQualityJobDefinitions>

Returns: a L<Paws::SageMaker::ListModelQualityJobDefinitionsResponse> instance

Gets a list of model quality monitoring job definitions in your
account.


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

Lists models created with the CreateModel API.


=head2 ListMonitoringExecutions

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [EndpointName => Str]

=item [LastModifiedTimeAfter => Str]

=item [LastModifiedTimeBefore => Str]

=item [MaxResults => Int]

=item [MonitoringJobDefinitionName => Str]

=item [MonitoringScheduleName => Str]

=item [MonitoringTypeEquals => Str]

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

=item [MonitoringJobDefinitionName => Str]

=item [MonitoringTypeEquals => Str]

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


=head2 ListPipelineExecutions

=over

=item PipelineName => Str

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListPipelineExecutions>

Returns: a L<Paws::SageMaker::ListPipelineExecutionsResponse> instance

Gets a list of the pipeline executions.


=head2 ListPipelineExecutionSteps

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PipelineExecutionArn => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListPipelineExecutionSteps>

Returns: a L<Paws::SageMaker::ListPipelineExecutionStepsResponse> instance

Gets a list of C<PipeLineExecutionStep> objects.


=head2 ListPipelineParametersForExecution

=over

=item PipelineExecutionArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListPipelineParametersForExecution>

Returns: a L<Paws::SageMaker::ListPipelineParametersForExecutionResponse> instance

Gets a list of parameters for a pipeline execution.


=head2 ListPipelines

=over

=item [CreatedAfter => Str]

=item [CreatedBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PipelineNamePrefix => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListPipelines>

Returns: a L<Paws::SageMaker::ListPipelinesResponse> instance

Gets a list of pipelines.


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


=head2 ListProjects

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListProjects>

Returns: a L<Paws::SageMaker::ListProjectsOutput> instance

Gets a list of the projects in an AWS account.


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

When C<StatusEquals> and C<MaxResults> are set at the same time, the
C<MaxResults> number of training jobs are first retrieved ignoring the
C<StatusEquals> parameter and then they are filtered by the
C<StatusEquals> parameter, which is returned as a response.

For example, if C<ListTrainingJobs> is invoked with the following
parameters:

C<{ ... MaxResults: 100, StatusEquals: InProgress ... }>

First, 100 trainings jobs with any status, including those other than
C<InProgress>, are selected (sorted according to the creation time,
from the most current to the oldest). Next, those with a status of
C<InProgress> are returned.

You can quickly test the API using the following AWS CLI code.

C<aws sagemaker list-training-jobs --max-results 100 --status-equals
InProgress>


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

=item [TrialComponentName => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListTrials>

Returns: a L<Paws::SageMaker::ListTrialsResponse> instance

Lists the trials in your account. Specify an experiment name to limit
the list to the trials that are part of that experiment. Specify a
trial component name to limit the list to the trials that associated
with that trial component. The list can be filtered to show only trials
that were created in a specific time range. The list can be sorted by
trial name or creation time.


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


=head2 ListWorkforces

=over

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [SortBy => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::ListWorkforces>

Returns: a L<Paws::SageMaker::ListWorkforcesResponse> instance

Use this operation to list all private and vendor workforces in an AWS
Region. Note that you can only have one private workforce per AWS
Region.


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

Gets a list of private work teams that you have defined in a region.
The list may be empty if no work team satisfies the filter specified in
the C<NameContains> parameter.


=head2 PutModelPackageGroupPolicy

=over

=item ModelPackageGroupName => Str

=item ResourcePolicy => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::PutModelPackageGroupPolicy>

Returns: a L<Paws::SageMaker::PutModelPackageGroupPolicyOutput> instance

Adds a resouce policy to control access to a model group. For
information about resoure policies, see Identity-based policies and
resource-based policies
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html)
in the I<AWS Identity and Access Management User Guide.>.


=head2 RegisterDevices

=over

=item DeviceFleetName => Str

=item Devices => ArrayRef[L<Paws::SageMaker::Device>]

=item [Tags => ArrayRef[L<Paws::SageMaker::Tag>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::RegisterDevices>

Returns: nothing

Register devices.


=head2 RenderUiTemplate

=over

=item RoleArn => Str

=item Task => L<Paws::SageMaker::RenderableTask>

=item [HumanTaskUiArn => Str]

=item [UiTemplate => L<Paws::SageMaker::UiTemplate>]


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
resources are returned as a list of C<SearchRecord> objects in the
response. You can sort the search results by any resource property in a
ascending or descending order.

You can query against the following value types: numeric, text,
Boolean, and timestamp.


=head2 StartMonitoringSchedule

=over

=item MonitoringScheduleName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StartMonitoringSchedule>

Returns: nothing

Starts a previously stopped monitoring schedule.

By default, when you successfully create a new schedule, the status of
a monitoring schedule is C<scheduled>.


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


=head2 StartPipelineExecution

=over

=item ClientRequestToken => Str

=item PipelineName => Str

=item [PipelineExecutionDescription => Str]

=item [PipelineExecutionDisplayName => Str]

=item [PipelineParameters => ArrayRef[L<Paws::SageMaker::Parameter>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::StartPipelineExecution>

Returns: a L<Paws::SageMaker::StartPipelineExecutionResponse> instance

Starts a pipeline execution.


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


=head2 StopEdgePackagingJob

=over

=item EdgePackagingJobName => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopEdgePackagingJob>

Returns: nothing

Request to stop an edge packaging job.


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


=head2 StopPipelineExecution

=over

=item ClientRequestToken => Str

=item PipelineExecutionArn => Str


=back

Each argument is described in detail in: L<Paws::SageMaker::StopPipelineExecution>

Returns: a L<Paws::SageMaker::StopPipelineExecutionResponse> instance

Stops a pipeline execution.


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


=head2 UpdateAction

=over

=item ActionName => Str

=item [Description => Str]

=item [Properties => L<Paws::SageMaker::LineageEntityParameters>]

=item [PropertiesToRemove => ArrayRef[Str|Undef]]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateAction>

Returns: a L<Paws::SageMaker::UpdateActionResponse> instance

Updates an action.


=head2 UpdateAppImageConfig

=over

=item AppImageConfigName => Str

=item [KernelGatewayImageConfig => L<Paws::SageMaker::KernelGatewayImageConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateAppImageConfig>

Returns: a L<Paws::SageMaker::UpdateAppImageConfigResponse> instance

Updates the properties of an AppImageConfig.


=head2 UpdateArtifact

=over

=item ArtifactArn => Str

=item [ArtifactName => Str]

=item [Properties => L<Paws::SageMaker::LineageEntityParameters>]

=item [PropertiesToRemove => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateArtifact>

Returns: a L<Paws::SageMaker::UpdateArtifactResponse> instance

Updates an artifact.


=head2 UpdateCodeRepository

=over

=item CodeRepositoryName => Str

=item [GitConfig => L<Paws::SageMaker::GitConfigForUpdate>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateCodeRepository>

Returns: a L<Paws::SageMaker::UpdateCodeRepositoryOutput> instance

Updates the specified Git repository with the specified values.


=head2 UpdateContext

=over

=item ContextName => Str

=item [Description => Str]

=item [Properties => L<Paws::SageMaker::LineageEntityParameters>]

=item [PropertiesToRemove => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateContext>

Returns: a L<Paws::SageMaker::UpdateContextResponse> instance

Updates a context.


=head2 UpdateDeviceFleet

=over

=item DeviceFleetName => Str

=item OutputConfig => L<Paws::SageMaker::EdgeOutputConfig>

=item [Description => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateDeviceFleet>

Returns: nothing

Updates a fleet of devices.


=head2 UpdateDevices

=over

=item DeviceFleetName => Str

=item Devices => ArrayRef[L<Paws::SageMaker::Device>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateDevices>

Returns: nothing

Updates one or more devices in a fleet.


=head2 UpdateDomain

=over

=item DomainId => Str

=item [DefaultUserSettings => L<Paws::SageMaker::UserSettings>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateDomain>

Returns: a L<Paws::SageMaker::UpdateDomainResponse> instance

Updates the default settings for new user profiles in the domain.


=head2 UpdateEndpoint

=over

=item EndpointConfigName => Str

=item EndpointName => Str

=item [DeploymentConfig => L<Paws::SageMaker::DeploymentConfig>]

=item [ExcludeRetainedVariantProperties => ArrayRef[L<Paws::SageMaker::VariantProperty>]]

=item [RetainAllVariantProperties => Bool]


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
DescribeEndpoint API.

You must not delete an C<EndpointConfig> in use by an endpoint that is
live or while the C<UpdateEndpoint> or C<CreateEndpoint> operations are
being performed on the endpoint. To update an endpoint, you must create
a new C<EndpointConfig>.

If you delete the C<EndpointConfig> of an endpoint that is active or
being created or updated you may lose visibility into the instance type
the endpoint is using. The endpoint must be deleted in order to stop
incurring charges.


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
use the DescribeEndpoint API.


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


=head2 UpdateImage

=over

=item ImageName => Str

=item [DeleteProperties => ArrayRef[Str|Undef]]

=item [Description => Str]

=item [DisplayName => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateImage>

Returns: a L<Paws::SageMaker::UpdateImageResponse> instance

Updates the properties of a SageMaker image. To change the image's
tags, use the AddTags and DeleteTags APIs.


=head2 UpdateModelPackage

=over

=item ModelApprovalStatus => Str

=item ModelPackageArn => Str

=item [ApprovalDescription => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateModelPackage>

Returns: a L<Paws::SageMaker::UpdateModelPackageOutput> instance

Updates a versioned model.


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


=head2 UpdatePipeline

=over

=item PipelineName => Str

=item [PipelineDefinition => Str]

=item [PipelineDescription => Str]

=item [PipelineDisplayName => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdatePipeline>

Returns: a L<Paws::SageMaker::UpdatePipelineResponse> instance

Updates a pipeline.


=head2 UpdatePipelineExecution

=over

=item PipelineExecutionArn => Str

=item [PipelineExecutionDescription => Str]

=item [PipelineExecutionDisplayName => Str]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdatePipelineExecution>

Returns: a L<Paws::SageMaker::UpdatePipelineExecutionResponse> instance

Updates a pipeline execution.


=head2 UpdateTrainingJob

=over

=item TrainingJobName => Str

=item [ProfilerConfig => L<Paws::SageMaker::ProfilerConfigForUpdate>]

=item [ProfilerRuleConfigurations => ArrayRef[L<Paws::SageMaker::ProfilerRuleConfiguration>]]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateTrainingJob>

Returns: a L<Paws::SageMaker::UpdateTrainingJobResponse> instance

Update a model training job to request a new Debugger profiling
configuration.


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

=item [OidcConfig => L<Paws::SageMaker::OidcConfig>]

=item [SourceIpConfig => L<Paws::SageMaker::SourceIpConfig>]


=back

Each argument is described in detail in: L<Paws::SageMaker::UpdateWorkforce>

Returns: a L<Paws::SageMaker::UpdateWorkforceResponse> instance

Use this operation to update your workforce. You can use this operation
to require that workers use specific IP addresses to work on tasks and
to update your OpenID Connect (OIDC) Identity Provider (IdP) workforce
configuration.

Use C<SourceIpConfig> to restrict worker access to tasks to a specific
range of IP addresses. You specify allowed IP addresses by creating a
list of up to ten CIDRs
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html). By
default, a workforce isn't restricted to specific IP addresses. If you
specify a range of IP addresses, workers who attempt to access tasks
using any IP address outside the specified range are denied and get a
C<Not Found> error message on the worker portal.

Use C<OidcConfig> to update the configuration of a workforce created
using your own OIDC IdP.

You can only update your OIDC IdP configuration when there are no work
teams associated with your workforce. You can delete work teams using
the operation.

After restricting access to a range of IP addresses or updating your
OIDC IdP configuration with this operation, you can view details about
your update workforce using the operation.

This operation only applies to private workforces.


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

=head2 ListAllActions(sub { },[ActionType => Str, CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceUri => Str])

=head2 ListAllActions([ActionType => Str, CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceUri => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ActionSummaries, passing the object as the first parameter, and the string 'ActionSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListActionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAlgorithms(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllAlgorithms([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AlgorithmSummaryList, passing the object as the first parameter, and the string 'AlgorithmSummaryList' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListAlgorithmsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAppImageConfigs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, ModifiedTimeAfter => Str, ModifiedTimeBefore => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllAppImageConfigs([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, ModifiedTimeAfter => Str, ModifiedTimeBefore => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AppImageConfigs, passing the object as the first parameter, and the string 'AppImageConfigs' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListAppImageConfigsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApps(sub { },[DomainIdEquals => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, UserProfileNameEquals => Str])

=head2 ListAllApps([DomainIdEquals => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, UserProfileNameEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Apps, passing the object as the first parameter, and the string 'Apps' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListAppsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllArtifacts(sub { },[ArtifactType => Str, CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceUri => Str])

=head2 ListAllArtifacts([ArtifactType => Str, CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceUri => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ArtifactSummaries, passing the object as the first parameter, and the string 'ArtifactSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListArtifactsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssociations(sub { },[AssociationType => Str, CreatedAfter => Str, CreatedBefore => Str, DestinationArn => Str, DestinationType => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceArn => Str, SourceType => Str])

=head2 ListAllAssociations([AssociationType => Str, CreatedAfter => Str, CreatedBefore => Str, DestinationArn => Str, DestinationType => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceArn => Str, SourceType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AssociationSummaries, passing the object as the first parameter, and the string 'AssociationSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListAssociationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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


=head2 ListAllContexts(sub { },[ContextType => Str, CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceUri => Str])

=head2 ListAllContexts([ContextType => Str, CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, SourceUri => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ContextSummaries, passing the object as the first parameter, and the string 'ContextSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListContextsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataQualityJobDefinitions(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllDataQualityJobDefinitions([CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - JobDefinitionSummaries, passing the object as the first parameter, and the string 'JobDefinitionSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListDataQualityJobDefinitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDeviceFleets(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllDeviceFleets([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DeviceFleetSummaries, passing the object as the first parameter, and the string 'DeviceFleetSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListDeviceFleetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDevices(sub { },[DeviceFleetName => Str, LatestHeartbeatAfter => Str, MaxResults => Int, ModelName => Str, NextToken => Str])

=head2 ListAllDevices([DeviceFleetName => Str, LatestHeartbeatAfter => Str, MaxResults => Int, ModelName => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DeviceSummaries, passing the object as the first parameter, and the string 'DeviceSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListDevicesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDomains(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDomains([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Domains, passing the object as the first parameter, and the string 'Domains' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListDomainsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEdgePackagingJobs(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, ModelNameContains => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllEdgePackagingJobs([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, ModelNameContains => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EdgePackagingJobSummaries, passing the object as the first parameter, and the string 'EdgePackagingJobSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListEdgePackagingJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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


=head2 ListAllFeatureGroups(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, FeatureGroupStatusEquals => Str, MaxResults => Int, NameContains => Str, NextToken => Str, OfflineStoreStatusEquals => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllFeatureGroups([CreationTimeAfter => Str, CreationTimeBefore => Str, FeatureGroupStatusEquals => Str, MaxResults => Int, NameContains => Str, NextToken => Str, OfflineStoreStatusEquals => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FeatureGroupSummaries, passing the object as the first parameter, and the string 'FeatureGroupSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListFeatureGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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


=head2 ListAllImages(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllImages([CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Images, passing the object as the first parameter, and the string 'Images' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListImagesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllImageVersions(sub { },ImageName => Str, [CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllImageVersions(ImageName => Str, [CreationTimeAfter => Str, CreationTimeBefore => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ImageVersions, passing the object as the first parameter, and the string 'ImageVersions' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListImageVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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


=head2 ListAllModelBiasJobDefinitions(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllModelBiasJobDefinitions([CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - JobDefinitionSummaries, passing the object as the first parameter, and the string 'JobDefinitionSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListModelBiasJobDefinitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelExplainabilityJobDefinitions(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllModelExplainabilityJobDefinitions([CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - JobDefinitionSummaries, passing the object as the first parameter, and the string 'JobDefinitionSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListModelExplainabilityJobDefinitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelPackageGroups(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllModelPackageGroups([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ModelPackageGroupSummaryList, passing the object as the first parameter, and the string 'ModelPackageGroupSummaryList' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListModelPackageGroupsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelPackages(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, ModelApprovalStatus => Str, ModelPackageGroupName => Str, ModelPackageType => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllModelPackages([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, ModelApprovalStatus => Str, ModelPackageGroupName => Str, ModelPackageType => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ModelPackageSummaryList, passing the object as the first parameter, and the string 'ModelPackageSummaryList' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListModelPackagesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModelQualityJobDefinitions(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllModelQualityJobDefinitions([CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - JobDefinitionSummaries, passing the object as the first parameter, and the string 'JobDefinitionSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListModelQualityJobDefinitionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllModels(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllModels([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Models, passing the object as the first parameter, and the string 'Models' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListModelsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMonitoringExecutions(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, MonitoringJobDefinitionName => Str, MonitoringScheduleName => Str, MonitoringTypeEquals => Str, NextToken => Str, ScheduledTimeAfter => Str, ScheduledTimeBefore => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllMonitoringExecutions([CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, MonitoringJobDefinitionName => Str, MonitoringScheduleName => Str, MonitoringTypeEquals => Str, NextToken => Str, ScheduledTimeAfter => Str, ScheduledTimeBefore => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MonitoringExecutionSummaries, passing the object as the first parameter, and the string 'MonitoringExecutionSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListMonitoringExecutionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMonitoringSchedules(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, MonitoringJobDefinitionName => Str, MonitoringTypeEquals => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])

=head2 ListAllMonitoringSchedules([CreationTimeAfter => Str, CreationTimeBefore => Str, EndpointName => Str, LastModifiedTimeAfter => Str, LastModifiedTimeBefore => Str, MaxResults => Int, MonitoringJobDefinitionName => Str, MonitoringTypeEquals => Str, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str, StatusEquals => Str])


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


=head2 ListAllPipelineExecutions(sub { },PipelineName => Str, [CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllPipelineExecutions(PipelineName => Str, [CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PipelineExecutionSummaries, passing the object as the first parameter, and the string 'PipelineExecutionSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListPipelineExecutionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPipelineExecutionSteps(sub { },[MaxResults => Int, NextToken => Str, PipelineExecutionArn => Str, SortOrder => Str])

=head2 ListAllPipelineExecutionSteps([MaxResults => Int, NextToken => Str, PipelineExecutionArn => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PipelineExecutionSteps, passing the object as the first parameter, and the string 'PipelineExecutionSteps' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListPipelineExecutionStepsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPipelineParametersForExecution(sub { },PipelineExecutionArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPipelineParametersForExecution(PipelineExecutionArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PipelineParameters, passing the object as the first parameter, and the string 'PipelineParameters' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListPipelineParametersForExecutionResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPipelines(sub { },[CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, PipelineNamePrefix => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllPipelines([CreatedAfter => Str, CreatedBefore => Str, MaxResults => Int, NextToken => Str, PipelineNamePrefix => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PipelineSummaries, passing the object as the first parameter, and the string 'PipelineSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListPipelinesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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


=head2 ListAllTrials(sub { },[CreatedAfter => Str, CreatedBefore => Str, ExperimentName => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, TrialComponentName => Str])

=head2 ListAllTrials([CreatedAfter => Str, CreatedBefore => Str, ExperimentName => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, TrialComponentName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TrialSummaries, passing the object as the first parameter, and the string 'TrialSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListTrialsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUserProfiles(sub { },[DomainIdEquals => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, UserProfileNameContains => Str])

=head2 ListAllUserProfiles([DomainIdEquals => Str, MaxResults => Int, NextToken => Str, SortBy => Str, SortOrder => Str, UserProfileNameContains => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - UserProfiles, passing the object as the first parameter, and the string 'UserProfiles' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListUserProfilesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkforces(sub { },[MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])

=head2 ListAllWorkforces([MaxResults => Int, NameContains => Str, NextToken => Str, SortBy => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Workforces, passing the object as the first parameter, and the string 'Workforces' as the second parameter 

If not, it will return a a L<Paws::SageMaker::ListWorkforcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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

