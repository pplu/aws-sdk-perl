
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::ElasticBeanstalk::ConfigurationDeploymentStatus', ['deployed','pending','failed',];
enum 'Aws::ElasticBeanstalk::ConfigurationOptionValueType', ['Scalar','List',];
enum 'Aws::ElasticBeanstalk::EnvironmentHealth', ['Green','Yellow','Red','Grey',];
enum 'Aws::ElasticBeanstalk::EnvironmentInfoType', ['tail',];
enum 'Aws::ElasticBeanstalk::EnvironmentStatus', ['Launching','Updating','Ready','Terminating','Terminated',];
enum 'Aws::ElasticBeanstalk::EventSeverity', ['TRACE','DEBUG','INFO','WARN','ERROR','FATAL',];
enum 'Aws::ElasticBeanstalk::ValidationSeverity', ['error','warning',];


class Aws::ElasticBeanstalk::ApplicationDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has ConfigurationTemplates => (is => 'ro', isa => 'ArrayRef[Str]');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Versions => (is => 'ro', isa => 'ArrayRef[Str]');
}

class Aws::ElasticBeanstalk::ApplicationVersionDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has SourceBundle => (is => 'ro', isa => 'Aws::ElasticBeanstalk::S3Location');
  has VersionLabel => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::AutoScalingGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::ConfigurationOptionDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ChangeSeverity => (is => 'ro', isa => 'Str');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has MaxLength => (is => 'ro', isa => 'Int');
  has MaxValue => (is => 'ro', isa => 'Int');
  has MinValue => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has Regex => (is => 'ro', isa => 'Aws::ElasticBeanstalk::OptionRestrictionRegex');
  has UserDefined => (is => 'ro', isa => 'Str');
  has ValueOptions => (is => 'ro', isa => 'ArrayRef[Str]');
  has ValueType => (is => 'ro', isa => 'Aws::ElasticBeanstalk::ConfigurationOptionValueType');
}

class Aws::ElasticBeanstalk::ConfigurationOptionSetting with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Namespace => (is => 'ro', isa => 'Str');
  has OptionName => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::ConfigurationSettingsDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has DeploymentStatus => (is => 'ro', isa => 'Aws::ElasticBeanstalk::ConfigurationDeploymentStatus');
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionSetting]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::EnvironmentDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has CNAME => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EndpointURL => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Health => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentHealth');
  has Resources => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentResourcesDescription');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentStatus');
  has TemplateName => (is => 'ro', isa => 'Str');
  has Tier => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentTier');
  has VersionLabel => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::EnvironmentInfoDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Ec2InstanceId => (is => 'ro', isa => 'Str');
  has InfoType => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentInfoType');
  has Message => (is => 'ro', isa => 'Str');
  has SampleTimestamp => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::EnvironmentResourceDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::AutoScalingGroup]');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::Instance]');
  has LaunchConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::LaunchConfiguration]');
  has LoadBalancers => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::LoadBalancer]');
  has Queues => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::Queue]');
  has Triggers => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::Trigger]');
}

class Aws::ElasticBeanstalk::EnvironmentResourcesDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has LoadBalancer => (is => 'ro', isa => 'Aws::ElasticBeanstalk::LoadBalancerDescription');
}

class Aws::ElasticBeanstalk::EnvironmentTier with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::EventDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has EventDate => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EventSeverity');
  has TemplateName => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::Instance with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Id => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::LaunchConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::Listener with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Port => (is => 'ro', isa => 'Int');
  has Protocol => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::LoadBalancer with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::LoadBalancerDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Domain => (is => 'ro', isa => 'Str');
  has Listeners => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::Listener]');
  has LoadBalancerName => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::OptionRestrictionRegex with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Label => (is => 'ro', isa => 'Str');
  has Pattern => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::OptionSpecification with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Namespace => (is => 'ro', isa => 'Str');
  has OptionName => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::Queue with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str');
  has URL => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::S3Location with (AWS::API::ResultParser, AWS::API::ToParams) {
  has S3Bucket => (is => 'ro', isa => 'Str');
  has S3Key => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::SolutionStackDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has PermittedFileTypes => (is => 'ro', isa => 'ArrayRef[Str]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::SourceConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::Trigger with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str');
}

class Aws::ElasticBeanstalk::ValidationMessage with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Message => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has OptionName => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Aws::ElasticBeanstalk::ValidationSeverity');
}



class Aws::ElasticBeanstalk::CheckDNSAvailability {
  has CNAMEPrefix => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CheckDNSAvailability');
  has _returns => (isa => 'Aws::ElasticBeanstalk::CheckDNSAvailabilityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CheckDNSAvailabilityResult');  
}
class Aws::ElasticBeanstalk::CreateApplication {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  has _returns => (isa => 'Aws::ElasticBeanstalk::CreateApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateApplicationResult');  
}
class Aws::ElasticBeanstalk::CreateApplicationVersion {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has AutoCreateApplication => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has SourceBundle => (is => 'ro', isa => 'Aws::ElasticBeanstalk::S3Location');
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplicationVersion');
  has _returns => (isa => 'Aws::ElasticBeanstalk::CreateApplicationVersionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateApplicationVersionResult');  
}
class Aws::ElasticBeanstalk::CreateConfigurationTemplate {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionSetting]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has SourceConfiguration => (is => 'ro', isa => 'Aws::ElasticBeanstalk::SourceConfiguration');
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfigurationTemplate');
  has _returns => (isa => 'Aws::ElasticBeanstalk::CreateConfigurationTemplateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateConfigurationTemplateResult');  
}
class Aws::ElasticBeanstalk::CreateEnvironment {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CNAMEPrefix => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str', required => 1);
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionSetting]');
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::OptionSpecification]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has Tier => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentTier');
  has VersionLabel => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironment');
  has _returns => (isa => 'Aws::ElasticBeanstalk::CreateEnvironmentResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateEnvironmentResult');  
}
class Aws::ElasticBeanstalk::CreateStorageLocation {

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStorageLocation');
  has _returns => (isa => 'Aws::ElasticBeanstalk::CreateStorageLocationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStorageLocationResult');  
}
class Aws::ElasticBeanstalk::DeleteApplication {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has TerminateEnvByForce => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplication');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DeleteApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteApplicationResult');  
}
class Aws::ElasticBeanstalk::DeleteApplicationVersion {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has DeleteSourceBundle => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplicationVersion');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DeleteApplicationVersionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteApplicationVersionResult');  
}
class Aws::ElasticBeanstalk::DeleteConfigurationTemplate {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConfigurationTemplate');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DeleteConfigurationTemplateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteConfigurationTemplateResult');  
}
class Aws::ElasticBeanstalk::DeleteEnvironmentConfiguration {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEnvironmentConfiguration');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DeleteEnvironmentConfigurationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteEnvironmentConfigurationResult');  
}
class Aws::ElasticBeanstalk::DescribeApplicationVersions {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has VersionLabels => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplicationVersions');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DescribeApplicationVersionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeApplicationVersionsResult');  
}
class Aws::ElasticBeanstalk::DescribeApplications {
  has ApplicationNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplications');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DescribeApplicationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeApplicationsResult');  
}
class Aws::ElasticBeanstalk::DescribeConfigurationOptions {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::OptionSpecification]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationOptions');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DescribeConfigurationOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationOptionsResult');  
}
class Aws::ElasticBeanstalk::DescribeConfigurationSettings {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationSettings');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DescribeConfigurationSettingsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationSettingsResult');  
}
class Aws::ElasticBeanstalk::DescribeEnvironmentResources {
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentResources');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DescribeEnvironmentResourcesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentResourcesResult');  
}
class Aws::ElasticBeanstalk::DescribeEnvironments {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has EnvironmentIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnvironmentNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has IncludedDeletedBackTo => (is => 'ro', isa => 'Str');
  has IncludeDeleted => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironments');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DescribeEnvironmentsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentsResult');  
}
class Aws::ElasticBeanstalk::DescribeEvents {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEvents');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DescribeEventsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventsResult');  
}
class Aws::ElasticBeanstalk::ListAvailableSolutionStacks {

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListAvailableSolutionStacks');
  has _returns => (isa => 'Aws::ElasticBeanstalk::ListAvailableSolutionStacksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListAvailableSolutionStacksResult');  
}
class Aws::ElasticBeanstalk::RebuildEnvironment {
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RebuildEnvironment');
  has _returns => (isa => 'Aws::ElasticBeanstalk::RebuildEnvironmentResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RebuildEnvironmentResult');  
}
class Aws::ElasticBeanstalk::RequestEnvironmentInfo {
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has InfoType => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RequestEnvironmentInfo');
  has _returns => (isa => 'Aws::ElasticBeanstalk::RequestEnvironmentInfoResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RequestEnvironmentInfoResult');  
}
class Aws::ElasticBeanstalk::RestartAppServer {
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RestartAppServer');
  has _returns => (isa => 'Aws::ElasticBeanstalk::RestartAppServerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RestartAppServerResult');  
}
class Aws::ElasticBeanstalk::RetrieveEnvironmentInfo {
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has InfoType => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveEnvironmentInfo');
  has _returns => (isa => 'Aws::ElasticBeanstalk::RetrieveEnvironmentInfoResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RetrieveEnvironmentInfoResult');  
}
class Aws::ElasticBeanstalk::SwapEnvironmentCNAMEs {
  has DestinationEnvironmentId => (is => 'ro', isa => 'Str');
  has DestinationEnvironmentName => (is => 'ro', isa => 'Str');
  has SourceEnvironmentId => (is => 'ro', isa => 'Str');
  has SourceEnvironmentName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SwapEnvironmentCNAMEs');
  has _returns => (isa => 'Aws::ElasticBeanstalk::SwapEnvironmentCNAMEsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SwapEnvironmentCNAMEsResult');  
}
class Aws::ElasticBeanstalk::TerminateEnvironment {
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has TerminateResources => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateEnvironment');
  has _returns => (isa => 'Aws::ElasticBeanstalk::TerminateEnvironmentResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'TerminateEnvironmentResult');  
}
class Aws::ElasticBeanstalk::UpdateApplication {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplication');
  has _returns => (isa => 'Aws::ElasticBeanstalk::UpdateApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateApplicationResult');  
}
class Aws::ElasticBeanstalk::UpdateApplicationVersion {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplicationVersion');
  has _returns => (isa => 'Aws::ElasticBeanstalk::UpdateApplicationVersionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateApplicationVersionResult');  
}
class Aws::ElasticBeanstalk::UpdateConfigurationTemplate {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionSetting]');
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::OptionSpecification]');
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationTemplate');
  has _returns => (isa => 'Aws::ElasticBeanstalk::UpdateConfigurationTemplateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationTemplateResult');  
}
class Aws::ElasticBeanstalk::UpdateEnvironment {
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionSetting]');
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::OptionSpecification]');
  has TemplateName => (is => 'ro', isa => 'Str');
  has Tier => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentTier');
  has VersionLabel => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnvironment');
  has _returns => (isa => 'Aws::ElasticBeanstalk::UpdateEnvironmentResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateEnvironmentResult');  
}
class Aws::ElasticBeanstalk::ValidateConfigurationSettings {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionSetting]', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateConfigurationSettings');
  has _returns => (isa => 'Aws::ElasticBeanstalk::ValidateConfigurationSettingsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ValidateConfigurationSettingsResult');  
}

class Aws::ElasticBeanstalk::CheckDNSAvailabilityResult with AWS::API::ResultParser {
  has Available => (is => 'ro', isa => 'Str');
  has FullyQualifiedCNAME => (is => 'ro', isa => 'Str');

}
class Aws::ElasticBeanstalk::CreateApplicationResult with AWS::API::ResultParser {
  has Application => (is => 'ro', isa => 'Aws::ElasticBeanstalk::ApplicationDescription');

}
class Aws::ElasticBeanstalk::CreateApplicationVersionResult with AWS::API::ResultParser {
  has ApplicationVersion => (is => 'ro', isa => 'Aws::ElasticBeanstalk::ApplicationVersionDescription');

}
class Aws::ElasticBeanstalk::CreateConfigurationTemplateResult with AWS::API::ResultParser {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has DeploymentStatus => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionSetting]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');

}
class Aws::ElasticBeanstalk::CreateEnvironmentResult with AWS::API::ResultParser {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has CNAME => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EndpointURL => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Health => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentResourcesDescription');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has Tier => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentTier');
  has VersionLabel => (is => 'ro', isa => 'Str');

}
class Aws::ElasticBeanstalk::CreateStorageLocationResult with AWS::API::ResultParser {
  has S3Bucket => (is => 'ro', isa => 'Str');

}
class Aws::ElasticBeanstalk::DescribeApplicationVersionsResult with AWS::API::ResultParser {
  has ApplicationVersions => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ApplicationVersionDescription]');

}
class Aws::ElasticBeanstalk::DescribeApplicationsResult with AWS::API::ResultParser {
  has Applications => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ApplicationDescription]');

}
class Aws::ElasticBeanstalk::DescribeConfigurationOptionsResult with AWS::API::ResultParser {
  has Options => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionDescription]');
  has SolutionStackName => (is => 'ro', isa => 'Str');

}
class Aws::ElasticBeanstalk::DescribeConfigurationSettingsResult with AWS::API::ResultParser {
  has ConfigurationSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationSettingsDescription]');

}
class Aws::ElasticBeanstalk::DescribeEnvironmentResourcesResult with AWS::API::ResultParser {
  has EnvironmentResources => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentResourceDescription');

}
class Aws::ElasticBeanstalk::DescribeEnvironmentsResult with AWS::API::ResultParser {
  has Environments => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::EnvironmentDescription]');

}
class Aws::ElasticBeanstalk::DescribeEventsResult with AWS::API::ResultParser {
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::EventDescription]');
  has NextToken => (is => 'ro', isa => 'Str');

}
class Aws::ElasticBeanstalk::ListAvailableSolutionStacksResult with AWS::API::ResultParser {
  has SolutionStackDetails => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::SolutionStackDescription]');
  has SolutionStacks => (is => 'ro', isa => 'ArrayRef[Str]');

}
class Aws::ElasticBeanstalk::RetrieveEnvironmentInfoResult with AWS::API::ResultParser {
  has EnvironmentInfo => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::EnvironmentInfoDescription]');

}
class Aws::ElasticBeanstalk::TerminateEnvironmentResult with AWS::API::ResultParser {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has CNAME => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EndpointURL => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Health => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentResourcesDescription');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has Tier => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentTier');
  has VersionLabel => (is => 'ro', isa => 'Str');

}
class Aws::ElasticBeanstalk::UpdateApplicationResult with AWS::API::ResultParser {
  has Application => (is => 'ro', isa => 'Aws::ElasticBeanstalk::ApplicationDescription');

}
class Aws::ElasticBeanstalk::UpdateApplicationVersionResult with AWS::API::ResultParser {
  has ApplicationVersion => (is => 'ro', isa => 'Aws::ElasticBeanstalk::ApplicationVersionDescription');

}
class Aws::ElasticBeanstalk::UpdateConfigurationTemplateResult with AWS::API::ResultParser {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has DeploymentStatus => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionSetting]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');

}
class Aws::ElasticBeanstalk::UpdateEnvironmentResult with AWS::API::ResultParser {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has CNAME => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EndpointURL => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Health => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentResourcesDescription');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has Tier => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentTier');
  has VersionLabel => (is => 'ro', isa => 'Str');

}
class Aws::ElasticBeanstalk::ValidateConfigurationSettingsResult with AWS::API::ResultParser {
  has Messages => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ValidationMessage]');

}

class Aws::ElasticBeanstalk with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'elasticbeanstalk');
  has version => (is => 'ro', isa => 'Str', default => '2010-12-01');
  
  method CheckDNSAvailability (%args) {
    my $call = Aws::ElasticBeanstalk::CheckDNSAvailability->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::CheckDNSAvailabilityResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateApplication (%args) {
    my $call = Aws::ElasticBeanstalk::CreateApplication->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::CreateApplicationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateApplicationVersion (%args) {
    my $call = Aws::ElasticBeanstalk::CreateApplicationVersion->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::CreateApplicationVersionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateConfigurationTemplate (%args) {
    my $call = Aws::ElasticBeanstalk::CreateConfigurationTemplate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::CreateConfigurationTemplateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateEnvironment (%args) {
    my $call = Aws::ElasticBeanstalk::CreateEnvironment->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::CreateEnvironmentResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateStorageLocation (%args) {
    my $call = Aws::ElasticBeanstalk::CreateStorageLocation->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::CreateStorageLocationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteApplication (%args) {
    my $call = Aws::ElasticBeanstalk::DeleteApplication->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteApplicationVersion (%args) {
    my $call = Aws::ElasticBeanstalk::DeleteApplicationVersion->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteConfigurationTemplate (%args) {
    my $call = Aws::ElasticBeanstalk::DeleteConfigurationTemplate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteEnvironmentConfiguration (%args) {
    my $call = Aws::ElasticBeanstalk::DeleteEnvironmentConfiguration->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DescribeApplications (%args) {
    my $call = Aws::ElasticBeanstalk::DescribeApplications->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::DescribeApplicationsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeApplicationVersions (%args) {
    my $call = Aws::ElasticBeanstalk::DescribeApplicationVersions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::DescribeApplicationVersionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeConfigurationOptions (%args) {
    my $call = Aws::ElasticBeanstalk::DescribeConfigurationOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::DescribeConfigurationOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeConfigurationSettings (%args) {
    my $call = Aws::ElasticBeanstalk::DescribeConfigurationSettings->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::DescribeConfigurationSettingsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeEnvironmentResources (%args) {
    my $call = Aws::ElasticBeanstalk::DescribeEnvironmentResources->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::DescribeEnvironmentResourcesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeEnvironments (%args) {
    my $call = Aws::ElasticBeanstalk::DescribeEnvironments->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::DescribeEnvironmentsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeEvents (%args) {
    my $call = Aws::ElasticBeanstalk::DescribeEvents->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::DescribeEventsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListAvailableSolutionStacks (%args) {
    my $call = Aws::ElasticBeanstalk::ListAvailableSolutionStacks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::ListAvailableSolutionStacksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RebuildEnvironment (%args) {
    my $call = Aws::ElasticBeanstalk::RebuildEnvironment->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RequestEnvironmentInfo (%args) {
    my $call = Aws::ElasticBeanstalk::RequestEnvironmentInfo->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RestartAppServer (%args) {
    my $call = Aws::ElasticBeanstalk::RestartAppServer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RetrieveEnvironmentInfo (%args) {
    my $call = Aws::ElasticBeanstalk::RetrieveEnvironmentInfo->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::RetrieveEnvironmentInfoResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SwapEnvironmentCNAMEs (%args) {
    my $call = Aws::ElasticBeanstalk::SwapEnvironmentCNAMEs->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method TerminateEnvironment (%args) {
    my $call = Aws::ElasticBeanstalk::TerminateEnvironment->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::TerminateEnvironmentResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateApplication (%args) {
    my $call = Aws::ElasticBeanstalk::UpdateApplication->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::UpdateApplicationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateApplicationVersion (%args) {
    my $call = Aws::ElasticBeanstalk::UpdateApplicationVersion->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::UpdateApplicationVersionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateConfigurationTemplate (%args) {
    my $call = Aws::ElasticBeanstalk::UpdateConfigurationTemplate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::UpdateConfigurationTemplateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateEnvironment (%args) {
    my $call = Aws::ElasticBeanstalk::UpdateEnvironment->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::UpdateEnvironmentResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ValidateConfigurationSettings (%args) {
    my $call = Aws::ElasticBeanstalk::ValidateConfigurationSettings->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::ValidateConfigurationSettingsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
