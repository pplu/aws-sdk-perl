
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'AWS::ElasticBeanstalk::ConfigurationDeploymentStatus', [qw(deployed pending failed )];
enum 'AWS::ElasticBeanstalk::ConfigurationOptionValueType', [qw(Scalar List )];
enum 'AWS::ElasticBeanstalk::EnvironmentHealth', [qw(Green Yellow Red Grey )];
enum 'AWS::ElasticBeanstalk::EnvironmentInfoType', [qw(tail )];
enum 'AWS::ElasticBeanstalk::EnvironmentStatus', [qw(Launching Updating Ready Terminating Terminated )];
enum 'AWS::ElasticBeanstalk::EventSeverity', [qw(TRACE DEBUG INFO WARN ERROR FATAL )];
enum 'AWS::ElasticBeanstalk::ValidationSeverity', [qw(error warning )];


class AWS::ElasticBeanstalk::ApplicationDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has ConfigurationTemplates => (is => 'ro', isa => 'ArrayRef[Str]');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Versions => (is => 'ro', isa => 'ArrayRef[Str]');
}

class AWS::ElasticBeanstalk::ApplicationVersionDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has SourceBundle => (is => 'ro', isa => 'AWS::ElasticBeanstalk::S3Location');
  has VersionLabel => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::AutoScalingGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::ConfigurationOptionDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ChangeSeverity => (is => 'ro', isa => 'Str');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has MaxLength => (is => 'ro', isa => 'Int');
  has MaxValue => (is => 'ro', isa => 'Int');
  has MinValue => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has Regex => (is => 'ro', isa => 'AWS::ElasticBeanstalk::OptionRestrictionRegex');
  has UserDefined => (is => 'ro', isa => 'Str');
  has ValueOptions => (is => 'ro', isa => 'ArrayRef[Str]');
  has ValueType => (is => 'ro', isa => 'AWS::ElasticBeanstalk::ConfigurationOptionValueType');
}

class AWS::ElasticBeanstalk::ConfigurationOptionSetting with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Namespace => (is => 'ro', isa => 'Str');
  has OptionName => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::ConfigurationSettingsDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has DeploymentStatus => (is => 'ro', isa => 'AWS::ElasticBeanstalk::ConfigurationDeploymentStatus');
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationOptionSetting]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::EnvironmentDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has CNAME => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EndpointURL => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Health => (is => 'ro', isa => 'AWS::ElasticBeanstalk::EnvironmentHealth');
  has Resources => (is => 'ro', isa => 'AWS::ElasticBeanstalk::EnvironmentResourcesDescription');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'AWS::ElasticBeanstalk::EnvironmentStatus');
  has TemplateName => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::EnvironmentInfoDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Ec2InstanceId => (is => 'ro', isa => 'Str');
  has InfoType => (is => 'ro', isa => 'AWS::ElasticBeanstalk::EnvironmentInfoType');
  has Message => (is => 'ro', isa => 'Str');
  has SampleTimestamp => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::EnvironmentResourceDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::AutoScalingGroup]');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Instances => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::Instance]');
  has LaunchConfigurations => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::LaunchConfiguration]');
  has LoadBalancers => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::LoadBalancer]');
  has Triggers => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::Trigger]');
}

class AWS::ElasticBeanstalk::EnvironmentResourcesDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has LoadBalancer => (is => 'ro', isa => 'AWS::ElasticBeanstalk::LoadBalancerDescription');
}

class AWS::ElasticBeanstalk::EventDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has EventDate => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'AWS::ElasticBeanstalk::EventSeverity');
  has TemplateName => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::Instance with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Id => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::LaunchConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::LoadBalancer with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::LoadBalancerDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Domain => (is => 'ro', isa => 'Str');
  has Listeners => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::Listener]');
  has LoadBalancerName => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::OptionRestrictionRegex with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Label => (is => 'ro', isa => 'Str');
  has Pattern => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::OptionSpecification with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Namespace => (is => 'ro', isa => 'Str');
  has OptionName => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::S3Location with (AWS::API::ResultParser, AWS::API::ToParams) {
  has S3Bucket => (is => 'ro', isa => 'Str');
  has S3Key => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::SolutionStackDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has PermittedFileTypes => (is => 'ro', isa => 'ArrayRef[Str]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::SourceConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::Trigger with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::ValidationMessage with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Message => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has OptionName => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'AWS::ElasticBeanstalk::ValidationSeverity');
}



class AWS::ElasticBeanstalk::CheckDNSAvailability {
  has CNAMEPrefix => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CheckDNSAvailability');
  has _returns => (isa => 'AWS::ElasticBeanstalk::CheckDNSAvailabilityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CheckDNSAvailabilityResult');  
}
class AWS::ElasticBeanstalk::CreateApplication {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  has _returns => (isa => 'AWS::ElasticBeanstalk::CreateApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateApplicationResult');  
}
class AWS::ElasticBeanstalk::CreateApplicationVersion {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has AutoCreateApplication => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has SourceBundle => (is => 'ro', isa => 'AWS::ElasticBeanstalk::S3Location');
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplicationVersion');
  has _returns => (isa => 'AWS::ElasticBeanstalk::CreateApplicationVersionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateApplicationVersionResult');  
}
class AWS::ElasticBeanstalk::CreateConfigurationTemplate {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationOptionSetting]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has SourceConfiguration => (is => 'ro', isa => 'AWS::ElasticBeanstalk::SourceConfiguration');
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfigurationTemplate');
  has _returns => (isa => 'AWS::ElasticBeanstalk::CreateConfigurationTemplateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateConfigurationTemplateResult');  
}
class AWS::ElasticBeanstalk::CreateEnvironment {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CNAMEPrefix => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str', required => 1);
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationOptionSetting]');
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::OptionSpecification]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironment');
  has _returns => (isa => 'AWS::ElasticBeanstalk::CreateEnvironmentResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateEnvironmentResult');  
}
class AWS::ElasticBeanstalk::CreateStorageLocation {

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStorageLocation');
  has _returns => (isa => 'AWS::ElasticBeanstalk::CreateStorageLocationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStorageLocationResult');  
}
class AWS::ElasticBeanstalk::DeleteApplication {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has TerminateEnvByForce => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplication');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DeleteApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteApplicationResult');  
}
class AWS::ElasticBeanstalk::DeleteApplicationVersion {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has DeleteSourceBundle => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplicationVersion');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DeleteApplicationVersionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteApplicationVersionResult');  
}
class AWS::ElasticBeanstalk::DeleteConfigurationTemplate {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConfigurationTemplate');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DeleteConfigurationTemplateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteConfigurationTemplateResult');  
}
class AWS::ElasticBeanstalk::DeleteEnvironmentConfiguration {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEnvironmentConfiguration');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DeleteEnvironmentConfigurationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteEnvironmentConfigurationResult');  
}
class AWS::ElasticBeanstalk::DescribeApplicationVersions {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has VersionLabels => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplicationVersions');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DescribeApplicationVersionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeApplicationVersionsResult');  
}
class AWS::ElasticBeanstalk::DescribeApplications {
  has ApplicationNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplications');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DescribeApplicationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeApplicationsResult');  
}
class AWS::ElasticBeanstalk::DescribeConfigurationOptions {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::OptionSpecification]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationOptions');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DescribeConfigurationOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationOptionsResult');  
}
class AWS::ElasticBeanstalk::DescribeConfigurationSettings {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationSettings');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DescribeConfigurationSettingsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationSettingsResult');  
}
class AWS::ElasticBeanstalk::DescribeEnvironmentResources {
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentResources');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DescribeEnvironmentResourcesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentResourcesResult');  
}
class AWS::ElasticBeanstalk::DescribeEnvironments {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has EnvironmentIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnvironmentNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has IncludedDeletedBackTo => (is => 'ro', isa => 'Str');
  has IncludeDeleted => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironments');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DescribeEnvironmentsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentsResult');  
}
class AWS::ElasticBeanstalk::DescribeEvents {
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
  has _returns => (isa => 'AWS::ElasticBeanstalk::DescribeEventsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventsResult');  
}
class AWS::ElasticBeanstalk::ListAvailableSolutionStacks {

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListAvailableSolutionStacks');
  has _returns => (isa => 'AWS::ElasticBeanstalk::ListAvailableSolutionStacksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListAvailableSolutionStacksResult');  
}
class AWS::ElasticBeanstalk::RebuildEnvironment {
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RebuildEnvironment');
  has _returns => (isa => 'AWS::ElasticBeanstalk::RebuildEnvironmentResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RebuildEnvironmentResult');  
}
class AWS::ElasticBeanstalk::RequestEnvironmentInfo {
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has InfoType => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RequestEnvironmentInfo');
  has _returns => (isa => 'AWS::ElasticBeanstalk::RequestEnvironmentInfoResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RequestEnvironmentInfoResult');  
}
class AWS::ElasticBeanstalk::RestartAppServer {
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RestartAppServer');
  has _returns => (isa => 'AWS::ElasticBeanstalk::RestartAppServerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RestartAppServerResult');  
}
class AWS::ElasticBeanstalk::RetrieveEnvironmentInfo {
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has InfoType => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveEnvironmentInfo');
  has _returns => (isa => 'AWS::ElasticBeanstalk::RetrieveEnvironmentInfoResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RetrieveEnvironmentInfoResult');  
}
class AWS::ElasticBeanstalk::SwapEnvironmentCNAMEs {
  has DestinationEnvironmentId => (is => 'ro', isa => 'Str');
  has DestinationEnvironmentName => (is => 'ro', isa => 'Str');
  has SourceEnvironmentId => (is => 'ro', isa => 'Str');
  has SourceEnvironmentName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SwapEnvironmentCNAMEs');
  has _returns => (isa => 'AWS::ElasticBeanstalk::SwapEnvironmentCNAMEsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SwapEnvironmentCNAMEsResult');  
}
class AWS::ElasticBeanstalk::TerminateEnvironment {
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has TerminateResources => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateEnvironment');
  has _returns => (isa => 'AWS::ElasticBeanstalk::TerminateEnvironmentResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'TerminateEnvironmentResult');  
}
class AWS::ElasticBeanstalk::UpdateApplication {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplication');
  has _returns => (isa => 'AWS::ElasticBeanstalk::UpdateApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateApplicationResult');  
}
class AWS::ElasticBeanstalk::UpdateApplicationVersion {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplicationVersion');
  has _returns => (isa => 'AWS::ElasticBeanstalk::UpdateApplicationVersionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateApplicationVersionResult');  
}
class AWS::ElasticBeanstalk::UpdateConfigurationTemplate {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationOptionSetting]');
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::OptionSpecification]');
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationTemplate');
  has _returns => (isa => 'AWS::ElasticBeanstalk::UpdateConfigurationTemplateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationTemplateResult');  
}
class AWS::ElasticBeanstalk::UpdateEnvironment {
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationOptionSetting]');
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::OptionSpecification]');
  has TemplateName => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnvironment');
  has _returns => (isa => 'AWS::ElasticBeanstalk::UpdateEnvironmentResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateEnvironmentResult');  
}
class AWS::ElasticBeanstalk::ValidateConfigurationSettings {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationOptionSetting]', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateConfigurationSettings');
  has _returns => (isa => 'AWS::ElasticBeanstalk::ValidateConfigurationSettingsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ValidateConfigurationSettingsResult');  
}

class AWS::ElasticBeanstalk::CheckDNSAvailabilityResult with AWS::API::ResultParser {
  has Available => (is => 'ro', isa => 'Str');
  has FullyQualifiedCNAME => (is => 'ro', isa => 'Str');

}
class AWS::ElasticBeanstalk::CreateApplicationResult with AWS::API::ResultParser {
  has Application => (is => 'ro', isa => 'AWS::ElasticBeanstalk::ApplicationDescription');

}
class AWS::ElasticBeanstalk::CreateApplicationVersionResult with AWS::API::ResultParser {
  has ApplicationVersion => (is => 'ro', isa => 'AWS::ElasticBeanstalk::ApplicationVersionDescription');

}
class AWS::ElasticBeanstalk::CreateConfigurationTemplateResult with AWS::API::ResultParser {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has DeploymentStatus => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationOptionSetting]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');

}
class AWS::ElasticBeanstalk::CreateEnvironmentResult with AWS::API::ResultParser {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has CNAME => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EndpointURL => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Health => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'AWS::ElasticBeanstalk::EnvironmentResourcesDescription');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');

}
class AWS::ElasticBeanstalk::CreateStorageLocationResult with AWS::API::ResultParser {
  has S3Bucket => (is => 'ro', isa => 'Str');

}
class AWS::ElasticBeanstalk::DescribeApplicationVersionsResult with AWS::API::ResultParser {
  has ApplicationVersions => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ApplicationVersionDescription]');

}
class AWS::ElasticBeanstalk::DescribeApplicationsResult with AWS::API::ResultParser {
  has Applications => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ApplicationDescription]');

}
class AWS::ElasticBeanstalk::DescribeConfigurationOptionsResult with AWS::API::ResultParser {
  has Options => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationOptionDescription]');
  has SolutionStackName => (is => 'ro', isa => 'Str');

}
class AWS::ElasticBeanstalk::DescribeConfigurationSettingsResult with AWS::API::ResultParser {
  has ConfigurationSettings => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationSettingsDescription]');

}
class AWS::ElasticBeanstalk::DescribeEnvironmentResourcesResult with AWS::API::ResultParser {
  has EnvironmentResources => (is => 'ro', isa => 'AWS::ElasticBeanstalk::EnvironmentResourceDescription');

}
class AWS::ElasticBeanstalk::DescribeEnvironmentsResult with AWS::API::ResultParser {
  has Environments => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::EnvironmentDescription]');

}
class AWS::ElasticBeanstalk::DescribeEventsResult with AWS::API::ResultParser {
  has Events => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::EventDescription]');
  has NextToken => (is => 'ro', isa => 'Str');

}
class AWS::ElasticBeanstalk::ListAvailableSolutionStacksResult with AWS::API::ResultParser {
  has SolutionStackDetails => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::SolutionStackDescription]');
  has SolutionStacks => (is => 'ro', isa => 'ArrayRef[Str]');

}
class AWS::ElasticBeanstalk::RetrieveEnvironmentInfoResult with AWS::API::ResultParser {
  has EnvironmentInfo => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::EnvironmentInfoDescription]');

}
class AWS::ElasticBeanstalk::TerminateEnvironmentResult with AWS::API::ResultParser {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has CNAME => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EndpointURL => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Health => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'AWS::ElasticBeanstalk::EnvironmentResourcesDescription');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');

}
class AWS::ElasticBeanstalk::UpdateApplicationResult with AWS::API::ResultParser {
  has Application => (is => 'ro', isa => 'AWS::ElasticBeanstalk::ApplicationDescription');

}
class AWS::ElasticBeanstalk::UpdateApplicationVersionResult with AWS::API::ResultParser {
  has ApplicationVersion => (is => 'ro', isa => 'AWS::ElasticBeanstalk::ApplicationVersionDescription');

}
class AWS::ElasticBeanstalk::UpdateConfigurationTemplateResult with AWS::API::ResultParser {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has DeploymentStatus => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationOptionSetting]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');

}
class AWS::ElasticBeanstalk::UpdateEnvironmentResult with AWS::API::ResultParser {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has CNAME => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EndpointURL => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Health => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'AWS::ElasticBeanstalk::EnvironmentResourcesDescription');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');

}
class AWS::ElasticBeanstalk::ValidateConfigurationSettingsResult with AWS::API::ResultParser {
  has Messages => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ValidationMessage]');

}

class AWS::ElasticBeanstalk with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'elasticbeanstalk');
  has version => (is => 'ro', isa => 'Str', default => '2010-12-01');
  
  method CheckDNSAvailability (%args) {
    my $call = AWS::ElasticBeanstalk::CheckDNSAvailability->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::CheckDNSAvailabilityResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateApplication (%args) {
    my $call = AWS::ElasticBeanstalk::CreateApplication->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::CreateApplicationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateApplicationVersion (%args) {
    my $call = AWS::ElasticBeanstalk::CreateApplicationVersion->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::CreateApplicationVersionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateConfigurationTemplate (%args) {
    my $call = AWS::ElasticBeanstalk::CreateConfigurationTemplate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::CreateConfigurationTemplateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateEnvironment (%args) {
    my $call = AWS::ElasticBeanstalk::CreateEnvironment->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::CreateEnvironmentResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateStorageLocation (%args) {
    my $call = AWS::ElasticBeanstalk::CreateStorageLocation->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::CreateStorageLocationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteApplication (%args) {
    my $call = AWS::ElasticBeanstalk::DeleteApplication->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteApplicationVersion (%args) {
    my $call = AWS::ElasticBeanstalk::DeleteApplicationVersion->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteConfigurationTemplate (%args) {
    my $call = AWS::ElasticBeanstalk::DeleteConfigurationTemplate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteEnvironmentConfiguration (%args) {
    my $call = AWS::ElasticBeanstalk::DeleteEnvironmentConfiguration->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DescribeApplications (%args) {
    my $call = AWS::ElasticBeanstalk::DescribeApplications->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::DescribeApplicationsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeApplicationVersions (%args) {
    my $call = AWS::ElasticBeanstalk::DescribeApplicationVersions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::DescribeApplicationVersionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeConfigurationOptions (%args) {
    my $call = AWS::ElasticBeanstalk::DescribeConfigurationOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::DescribeConfigurationOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeConfigurationSettings (%args) {
    my $call = AWS::ElasticBeanstalk::DescribeConfigurationSettings->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::DescribeConfigurationSettingsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeEnvironmentResources (%args) {
    my $call = AWS::ElasticBeanstalk::DescribeEnvironmentResources->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::DescribeEnvironmentResourcesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeEnvironments (%args) {
    my $call = AWS::ElasticBeanstalk::DescribeEnvironments->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::DescribeEnvironmentsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeEvents (%args) {
    my $call = AWS::ElasticBeanstalk::DescribeEvents->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::DescribeEventsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListAvailableSolutionStacks (%args) {
    my $call = AWS::ElasticBeanstalk::ListAvailableSolutionStacks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::ListAvailableSolutionStacksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RebuildEnvironment (%args) {
    my $call = AWS::ElasticBeanstalk::RebuildEnvironment->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RequestEnvironmentInfo (%args) {
    my $call = AWS::ElasticBeanstalk::RequestEnvironmentInfo->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RestartAppServer (%args) {
    my $call = AWS::ElasticBeanstalk::RestartAppServer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RetrieveEnvironmentInfo (%args) {
    my $call = AWS::ElasticBeanstalk::RetrieveEnvironmentInfo->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::RetrieveEnvironmentInfoResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SwapEnvironmentCNAMEs (%args) {
    my $call = AWS::ElasticBeanstalk::SwapEnvironmentCNAMEs->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method TerminateEnvironment (%args) {
    my $call = AWS::ElasticBeanstalk::TerminateEnvironment->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::TerminateEnvironmentResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateApplication (%args) {
    my $call = AWS::ElasticBeanstalk::UpdateApplication->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::UpdateApplicationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateApplicationVersion (%args) {
    my $call = AWS::ElasticBeanstalk::UpdateApplicationVersion->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::UpdateApplicationVersionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateConfigurationTemplate (%args) {
    my $call = AWS::ElasticBeanstalk::UpdateConfigurationTemplate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::UpdateConfigurationTemplateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateEnvironment (%args) {
    my $call = AWS::ElasticBeanstalk::UpdateEnvironment->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::UpdateEnvironmentResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ValidateConfigurationSettings (%args) {
    my $call = AWS::ElasticBeanstalk::ValidateConfigurationSettings->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::ValidateConfigurationSettingsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
