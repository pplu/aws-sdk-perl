use MooseX::Declare;
use AWS::API;
class AWS::ElasticBeanstalk::ApplicationDescription with AWS::API::ResultParser {
  has ConfigurationTemplates => (is => 'ro', isa => 'ArrayRef[Str]');
  has Versions => (is => 'ro', isa => 'ArrayRef[Str]');
  has DateCreated => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::ApplicationVersionDescription with AWS::API::ResultParser {
  has DateCreated => (is => 'ro', isa => 'Str');
  has SourceBundle => (is => 'ro', isa => 'AWS::ElasticBeanstalk::S3Location');
  has ApplicationName => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::AutoScalingGroup with AWS::API::ResultParser {
  has Name => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::ConfigurationOptionDescription with AWS::API::ResultParser {
  has Regex => (is => 'ro', isa => 'AWS::ElasticBeanstalk::OptionRestrictionRegex');
  has MaxValue => (is => 'ro', isa => 'Int');
  has UserDefined => (is => 'ro', isa => 'Str');
  has MinValue => (is => 'ro', isa => 'Int');
  has ChangeSeverity => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has ValueType => (is => 'ro', isa => 'Str');
  has MaxLength => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has ValueOptions => (is => 'ro', isa => 'ArrayRef[Str]');
}

class AWS::ElasticBeanstalk::ConfigurationOptionSetting with AWS::API::ResultParser {
  has Value => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has OptionName => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::ConfigurationSettingsDescription with AWS::API::ResultParser {
  has DateCreated => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationOptionSetting]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DeploymentStatus => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::EnvironmentDescription with AWS::API::ResultParser {
  has DateCreated => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has CNAME => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'AWS::ElasticBeanstalk::EnvironmentResourcesDescription');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has EndpointURL => (is => 'ro', isa => 'Str');
  has Health => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::EnvironmentInfoDescription with AWS::API::ResultParser {
  has Message => (is => 'ro', isa => 'Str');
  has InfoType => (is => 'ro', isa => 'Str');
  has SampleTimestamp => (is => 'ro', isa => 'Str');
  has Ec2InstanceId => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::EnvironmentResourceDescription with AWS::API::ResultParser {
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::AutoScalingGroup]');
  has Triggers => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::Trigger]');
  has LaunchConfigurations => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::LaunchConfiguration]');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has LoadBalancers => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::LoadBalancer]');
  has Instances => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::Instance]');
}

class AWS::ElasticBeanstalk::EnvironmentResourcesDescription with AWS::API::ResultParser {
  has LoadBalancer => (is => 'ro', isa => 'AWS::ElasticBeanstalk::LoadBalancerDescription');
}

class AWS::ElasticBeanstalk::EventDescription with AWS::API::ResultParser {
  has EventDate => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::Instance with AWS::API::ResultParser {
  has Id => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::LaunchConfiguration with AWS::API::ResultParser {
  has Name => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::LoadBalancer with AWS::API::ResultParser {
  has Name => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::LoadBalancerDescription with AWS::API::ResultParser {
  has LoadBalancerName => (is => 'ro', isa => 'Str');
  has Domain => (is => 'ro', isa => 'Str');
  has Listeners => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::Listener]');
}

class AWS::ElasticBeanstalk::OptionRestrictionRegex with AWS::API::ResultParser {
  has Label => (is => 'ro', isa => 'Str');
  has Pattern => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::OptionSpecification with AWS::API::ResultParser {
  has Namespace => (is => 'ro', isa => 'Str');
  has OptionName => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::S3Location with AWS::API::ResultParser {
  has S3Key => (is => 'ro', isa => 'Str');
  has S3Bucket => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::SolutionStackDescription with AWS::API::ResultParser {
  has PermittedFileTypes => (is => 'ro', isa => 'ArrayRef[Str]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::SourceConfiguration with AWS::API::ResultParser {
  has TemplateName => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::Trigger with AWS::API::ResultParser {
  has Name => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::ValidationMessage with AWS::API::ResultParser {
  has Namespace => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has OptionName => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Str');
}

class AWS::ElasticBeanstalk::DescribeConfigurationOptions {
  has Options => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::OptionSpecification]');
  has TemplateName => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str');
  has SolutionStackName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationOptions');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DescribeConfigurationOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationOptionsResult');
}
class AWS::ElasticBeanstalk::DeleteApplicationVersion {
  has DeleteSourceBundle => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplicationVersion');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DeleteApplicationVersionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteApplicationVersionResult');
}
class AWS::ElasticBeanstalk::UpdateEnvironment {
  has TemplateName => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationOptionSetting]');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::OptionSpecification]');
  has Description => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnvironment');
  has _returns => (isa => 'AWS::ElasticBeanstalk::UpdateEnvironmentResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateEnvironmentResult');
}
class AWS::ElasticBeanstalk::TerminateEnvironment {
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has TerminateResources => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateEnvironment');
  has _returns => (isa => 'AWS::ElasticBeanstalk::TerminateEnvironmentResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'TerminateEnvironmentResult');
}
class AWS::ElasticBeanstalk::CreateEnvironment {
  has EnvironmentName => (is => 'ro', isa => 'Str', required => 1);
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::OptionSpecification]');
  has TemplateName => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationOptionSetting]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has CNAMEPrefix => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironment');
  has _returns => (isa => 'AWS::ElasticBeanstalk::CreateEnvironmentResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateEnvironmentResult');
}
class AWS::ElasticBeanstalk::RebuildEnvironment {
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RebuildEnvironment');
  has _returns => (isa => 'AWS::ElasticBeanstalk::RebuildEnvironmentResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RebuildEnvironmentResult');
}
class AWS::ElasticBeanstalk::ValidateConfigurationSettings {
  has TemplateName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationOptionSetting]', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateConfigurationSettings');
  has _returns => (isa => 'AWS::ElasticBeanstalk::ValidateConfigurationSettingsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ValidateConfigurationSettingsResult');
}
class AWS::ElasticBeanstalk::RestartAppServer {
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RestartAppServer');
  has _returns => (isa => 'AWS::ElasticBeanstalk::RestartAppServerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RestartAppServerResult');
}
class AWS::ElasticBeanstalk::DescribeEvents {
  has RequestId => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has TemplateName => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEvents');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DescribeEventsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventsResult');
}
class AWS::ElasticBeanstalk::SwapEnvironmentCNAMEs {
  has DestinationEnvironmentName => (is => 'ro', isa => 'Str');
  has DestinationEnvironmentId => (is => 'ro', isa => 'Str');
  has SourceEnvironmentName => (is => 'ro', isa => 'Str');
  has SourceEnvironmentId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SwapEnvironmentCNAMEs');
  has _returns => (isa => 'AWS::ElasticBeanstalk::SwapEnvironmentCNAMEsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SwapEnvironmentCNAMEsResult');
}
class AWS::ElasticBeanstalk::CreateApplication {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  has _returns => (isa => 'AWS::ElasticBeanstalk::CreateApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateApplicationResult');
}
class AWS::ElasticBeanstalk::DescribeConfigurationSettings {
  has TemplateName => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationSettings');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DescribeConfigurationSettingsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationSettingsResult');
}
class AWS::ElasticBeanstalk::DeleteEnvironmentConfiguration {
  has EnvironmentName => (is => 'ro', isa => 'Str', required => 1);
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEnvironmentConfiguration');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DeleteEnvironmentConfigurationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteEnvironmentConfigurationResult');
}
class AWS::ElasticBeanstalk::ListAvailableSolutionStacks {

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListAvailableSolutionStacks');
  has _returns => (isa => 'AWS::ElasticBeanstalk::ListAvailableSolutionStacksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListAvailableSolutionStacksResult');
}
class AWS::ElasticBeanstalk::DescribeEnvironments {
  has EnvironmentIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has ApplicationName => (is => 'ro', isa => 'Str');
  has IncludedDeletedBackTo => (is => 'ro', isa => 'Str');
  has EnvironmentNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has IncludeDeleted => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironments');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DescribeEnvironmentsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentsResult');
}
class AWS::ElasticBeanstalk::DeleteApplication {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has TerminateEnvByForce => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplication');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DeleteApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteApplicationResult');
}
class AWS::ElasticBeanstalk::UpdateApplicationVersion {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplicationVersion');
  has _returns => (isa => 'AWS::ElasticBeanstalk::UpdateApplicationVersionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateApplicationVersionResult');
}
class AWS::ElasticBeanstalk::DescribeApplications {
  has ApplicationNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplications');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DescribeApplicationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeApplicationsResult');
}
class AWS::ElasticBeanstalk::UpdateConfigurationTemplate {
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationOptionSetting]');
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::OptionSpecification]');
  has Description => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationTemplate');
  has _returns => (isa => 'AWS::ElasticBeanstalk::UpdateConfigurationTemplateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationTemplateResult');
}
class AWS::ElasticBeanstalk::CreateConfigurationTemplate {
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has SourceConfiguration => (is => 'ro', isa => 'AWS::ElasticBeanstalk::SourceConfiguration');
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationOptionSetting]');
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfigurationTemplate');
  has _returns => (isa => 'AWS::ElasticBeanstalk::CreateConfigurationTemplateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateConfigurationTemplateResult');
}
class AWS::ElasticBeanstalk::DescribeEnvironmentResources {
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentResources');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DescribeEnvironmentResourcesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentResourcesResult');
}
class AWS::ElasticBeanstalk::RequestEnvironmentInfo {
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has InfoType => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RequestEnvironmentInfo');
  has _returns => (isa => 'AWS::ElasticBeanstalk::RequestEnvironmentInfoResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RequestEnvironmentInfoResult');
}
class AWS::ElasticBeanstalk::RetrieveEnvironmentInfo {
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has InfoType => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveEnvironmentInfo');
  has _returns => (isa => 'AWS::ElasticBeanstalk::RetrieveEnvironmentInfoResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RetrieveEnvironmentInfoResult');
}
class AWS::ElasticBeanstalk::CreateApplicationVersion {
  has AutoCreateApplication => (is => 'ro', isa => 'Str');
  has SourceBundle => (is => 'ro', isa => 'AWS::ElasticBeanstalk::S3Location');
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplicationVersion');
  has _returns => (isa => 'AWS::ElasticBeanstalk::CreateApplicationVersionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateApplicationVersionResult');
}
class AWS::ElasticBeanstalk::UpdateApplication {
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplication');
  has _returns => (isa => 'AWS::ElasticBeanstalk::UpdateApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateApplicationResult');
}
class AWS::ElasticBeanstalk::DeleteConfigurationTemplate {
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConfigurationTemplate');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DeleteConfigurationTemplateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteConfigurationTemplateResult');
}
class AWS::ElasticBeanstalk::DescribeApplicationVersions {
  has ApplicationName => (is => 'ro', isa => 'Str');
  has VersionLabels => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplicationVersions');
  has _returns => (isa => 'AWS::ElasticBeanstalk::DescribeApplicationVersionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeApplicationVersionsResult');
}
class AWS::ElasticBeanstalk::CreateStorageLocation {

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStorageLocation');
  has _returns => (isa => 'AWS::ElasticBeanstalk::CreateStorageLocationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStorageLocationResult');
}
class AWS::ElasticBeanstalk::CheckDNSAvailability {
  has CNAMEPrefix => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CheckDNSAvailability');
  has _returns => (isa => 'AWS::ElasticBeanstalk::CheckDNSAvailabilityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CheckDNSAvailabilityResult');
}
class AWS::ElasticBeanstalk::DescribeConfigurationOptionsResult with AWS::API::ResultParser {
  has Options => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationOptionDescription]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
}
class AWS::ElasticBeanstalk::UpdateEnvironmentResult with AWS::API::ResultParser {
  has DateCreated => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has CNAME => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'AWS::ElasticBeanstalk::EnvironmentResourcesDescription');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has EndpointURL => (is => 'ro', isa => 'Str');
  has Health => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');
}
class AWS::ElasticBeanstalk::TerminateEnvironmentResult with AWS::API::ResultParser {
  has DateCreated => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has CNAME => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'AWS::ElasticBeanstalk::EnvironmentResourcesDescription');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has EndpointURL => (is => 'ro', isa => 'Str');
  has Health => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');
}
class AWS::ElasticBeanstalk::CreateEnvironmentResult with AWS::API::ResultParser {
  has DateCreated => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has CNAME => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'AWS::ElasticBeanstalk::EnvironmentResourcesDescription');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has EndpointURL => (is => 'ro', isa => 'Str');
  has Health => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');
}
class AWS::ElasticBeanstalk::ValidateConfigurationSettingsResult with AWS::API::ResultParser {
  has Messages => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ValidationMessage]');
}
class AWS::ElasticBeanstalk::DescribeEventsResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has Events => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::EventDescription]');
}
class AWS::ElasticBeanstalk::CreateApplicationResult with AWS::API::ResultParser {
  has Application => (is => 'ro', isa => 'AWS::ElasticBeanstalk::ApplicationDescription');
}
class AWS::ElasticBeanstalk::DescribeConfigurationSettingsResult with AWS::API::ResultParser {
  has ConfigurationSettings => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationSettingsDescription]');
}
class AWS::ElasticBeanstalk::ListAvailableSolutionStacksResult with AWS::API::ResultParser {
  has SolutionStacks => (is => 'ro', isa => 'ArrayRef[Str]');
  has SolutionStackDetails => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::SolutionStackDescription]');
}
class AWS::ElasticBeanstalk::DescribeEnvironmentsResult with AWS::API::ResultParser {
  has Environments => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::EnvironmentDescription]');
}
class AWS::ElasticBeanstalk::UpdateApplicationVersionResult with AWS::API::ResultParser {
  has ApplicationVersion => (is => 'ro', isa => 'AWS::ElasticBeanstalk::ApplicationVersionDescription');
}
class AWS::ElasticBeanstalk::DescribeApplicationsResult with AWS::API::ResultParser {
  has Applications => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ApplicationDescription]');
}
class AWS::ElasticBeanstalk::UpdateConfigurationTemplateResult with AWS::API::ResultParser {
  has DateCreated => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationOptionSetting]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DeploymentStatus => (is => 'ro', isa => 'Str');
}
class AWS::ElasticBeanstalk::CreateConfigurationTemplateResult with AWS::API::ResultParser {
  has DateCreated => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has ApplicationName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ConfigurationOptionSetting]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DeploymentStatus => (is => 'ro', isa => 'Str');
}
class AWS::ElasticBeanstalk::DescribeEnvironmentResourcesResult with AWS::API::ResultParser {
  has EnvironmentResources => (is => 'ro', isa => 'AWS::ElasticBeanstalk::EnvironmentResourceDescription');
}
class AWS::ElasticBeanstalk::RetrieveEnvironmentInfoResult with AWS::API::ResultParser {
  has EnvironmentInfo => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::EnvironmentInfoDescription]');
}
class AWS::ElasticBeanstalk::CreateApplicationVersionResult with AWS::API::ResultParser {
  has ApplicationVersion => (is => 'ro', isa => 'AWS::ElasticBeanstalk::ApplicationVersionDescription');
}
class AWS::ElasticBeanstalk::UpdateApplicationResult with AWS::API::ResultParser {
  has Application => (is => 'ro', isa => 'AWS::ElasticBeanstalk::ApplicationDescription');
}
class AWS::ElasticBeanstalk::DescribeApplicationVersionsResult with AWS::API::ResultParser {
  has ApplicationVersions => (is => 'ro', isa => 'ArrayRef[AWS::ElasticBeanstalk::ApplicationVersionDescription]');
}
class AWS::ElasticBeanstalk::CreateStorageLocationResult with AWS::API::ResultParser {
  has S3Bucket => (is => 'ro', isa => 'Str');
}
class AWS::ElasticBeanstalk::CheckDNSAvailabilityResult with AWS::API::ResultParser {
  has FullyQualifiedCNAME => (is => 'ro', isa => 'Str');
  has Available => (is => 'ro', isa => 'Str');
}
class AWS::ElasticBeanstalk with AWS::API::Caller with AWS::API::RegionalEndpointCaller {
  has service => (is => 'ro', isa => 'Str', default => 'elasticbeanstalk');
  has version => (is => 'ro', isa => 'Str', default => '2010-12-01');

  method DescribeConfigurationOptions (%args) {
    my $call = AWS::ElasticBeanstalk::DescribeConfigurationOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::DescribeConfigurationOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteApplicationVersion (%args) {
    my $call = AWS::ElasticBeanstalk::DeleteApplicationVersion->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::DeleteApplicationVersionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method UpdateEnvironment (%args) {
    my $call = AWS::ElasticBeanstalk::UpdateEnvironment->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::UpdateEnvironmentResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method TerminateEnvironment (%args) {
    my $call = AWS::ElasticBeanstalk::TerminateEnvironment->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::TerminateEnvironmentResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateEnvironment (%args) {
    my $call = AWS::ElasticBeanstalk::CreateEnvironment->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::CreateEnvironmentResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RebuildEnvironment (%args) {
    my $call = AWS::ElasticBeanstalk::RebuildEnvironment->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::RebuildEnvironmentResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ValidateConfigurationSettings (%args) {
    my $call = AWS::ElasticBeanstalk::ValidateConfigurationSettings->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::ValidateConfigurationSettingsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RestartAppServer (%args) {
    my $call = AWS::ElasticBeanstalk::RestartAppServer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::RestartAppServerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeEvents (%args) {
    my $call = AWS::ElasticBeanstalk::DescribeEvents->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::DescribeEventsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method SwapEnvironmentCNAMEs (%args) {
    my $call = AWS::ElasticBeanstalk::SwapEnvironmentCNAMEs->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::SwapEnvironmentCNAMEsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateApplication (%args) {
    my $call = AWS::ElasticBeanstalk::CreateApplication->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::CreateApplicationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeConfigurationSettings (%args) {
    my $call = AWS::ElasticBeanstalk::DescribeConfigurationSettings->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::DescribeConfigurationSettingsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteEnvironmentConfiguration (%args) {
    my $call = AWS::ElasticBeanstalk::DeleteEnvironmentConfiguration->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::DeleteEnvironmentConfigurationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ListAvailableSolutionStacks (%args) {
    my $call = AWS::ElasticBeanstalk::ListAvailableSolutionStacks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::ListAvailableSolutionStacksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeEnvironments (%args) {
    my $call = AWS::ElasticBeanstalk::DescribeEnvironments->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::DescribeEnvironmentsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteApplication (%args) {
    my $call = AWS::ElasticBeanstalk::DeleteApplication->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::DeleteApplicationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method UpdateApplicationVersion (%args) {
    my $call = AWS::ElasticBeanstalk::UpdateApplicationVersion->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::UpdateApplicationVersionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeApplications (%args) {
    my $call = AWS::ElasticBeanstalk::DescribeApplications->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::DescribeApplicationsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method UpdateConfigurationTemplate (%args) {
    my $call = AWS::ElasticBeanstalk::UpdateConfigurationTemplate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::UpdateConfigurationTemplateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateConfigurationTemplate (%args) {
    my $call = AWS::ElasticBeanstalk::CreateConfigurationTemplate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::CreateConfigurationTemplateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeEnvironmentResources (%args) {
    my $call = AWS::ElasticBeanstalk::DescribeEnvironmentResources->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::DescribeEnvironmentResourcesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RequestEnvironmentInfo (%args) {
    my $call = AWS::ElasticBeanstalk::RequestEnvironmentInfo->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::RequestEnvironmentInfoResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RetrieveEnvironmentInfo (%args) {
    my $call = AWS::ElasticBeanstalk::RetrieveEnvironmentInfo->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::RetrieveEnvironmentInfoResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateApplicationVersion (%args) {
    my $call = AWS::ElasticBeanstalk::CreateApplicationVersion->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::CreateApplicationVersionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method UpdateApplication (%args) {
    my $call = AWS::ElasticBeanstalk::UpdateApplication->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::UpdateApplicationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteConfigurationTemplate (%args) {
    my $call = AWS::ElasticBeanstalk::DeleteConfigurationTemplate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::DeleteConfigurationTemplateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeApplicationVersions (%args) {
    my $call = AWS::ElasticBeanstalk::DescribeApplicationVersions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::DescribeApplicationVersionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateStorageLocation (%args) {
    my $call = AWS::ElasticBeanstalk::CreateStorageLocation->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::CreateStorageLocationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CheckDNSAvailability (%args) {
    my $call = AWS::ElasticBeanstalk::CheckDNSAvailability->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElasticBeanstalk::CheckDNSAvailabilityResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

}

