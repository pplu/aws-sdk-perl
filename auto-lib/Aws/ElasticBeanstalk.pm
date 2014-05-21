
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::ElasticBeanstalk::ConfigurationDeploymentStatus', ['deployed','pending','failed',];
enum 'Aws::ElasticBeanstalk::ConfigurationOptionValueType', ['Scalar','List',];
enum 'Aws::ElasticBeanstalk::EnvironmentHealth', ['Green','Yellow','Red','Grey',];
enum 'Aws::ElasticBeanstalk::EnvironmentInfoType', ['tail',];
enum 'Aws::ElasticBeanstalk::EnvironmentStatus', ['Launching','Updating','Ready','Terminating','Terminated',];
enum 'Aws::ElasticBeanstalk::EventSeverity', ['TRACE','DEBUG','INFO','WARN','ERROR','FATAL',];
enum 'Aws::ElasticBeanstalk::ValidationSeverity', ['error','warning',];


package Aws::ElasticBeanstalk::ApplicationDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has ApplicationName => (is => 'ro', isa => 'Str');
  has ConfigurationTemplates => (is => 'ro', isa => 'ArrayRef[Str]');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Versions => (is => 'ro', isa => 'ArrayRef[Str]');
}

package Aws::ElasticBeanstalk::ApplicationVersionDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has ApplicationName => (is => 'ro', isa => 'Str');
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateUpdated => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has SourceBundle => (is => 'ro', isa => 'Aws::ElasticBeanstalk::S3Location');
  has VersionLabel => (is => 'ro', isa => 'Str');
}

package Aws::ElasticBeanstalk::AutoScalingGroup {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Name => (is => 'ro', isa => 'Str');
}

package Aws::ElasticBeanstalk::ConfigurationOptionDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has ChangeSeverity => (is => 'ro', isa => 'Str');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has MaxLength => (is => 'ro', isa => 'Int');
  has MaxValue => (is => 'ro', isa => 'Int');
  has MinValue => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has Regex => (is => 'ro', isa => 'Aws::ElasticBeanstalk::OptionRestrictionRegex');
  has UserDefined => (is => 'ro', isa => 'Bool');
  has ValueOptions => (is => 'ro', isa => 'ArrayRef[Str]');
  has ValueType => (is => 'ro', isa => 'Aws::ElasticBeanstalk::ConfigurationOptionValueType');
}

package Aws::ElasticBeanstalk::ConfigurationOptionSetting {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Namespace => (is => 'ro', isa => 'Str');
  has OptionName => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

package Aws::ElasticBeanstalk::ConfigurationSettingsDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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

package Aws::ElasticBeanstalk::EnvironmentDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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

package Aws::ElasticBeanstalk::EnvironmentInfoDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Ec2InstanceId => (is => 'ro', isa => 'Str');
  has InfoType => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentInfoType');
  has Message => (is => 'ro', isa => 'Str');
  has SampleTimestamp => (is => 'ro', isa => 'Str');
}

package Aws::ElasticBeanstalk::EnvironmentResourceDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::AutoScalingGroup]');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::Instance]');
  has LaunchConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::LaunchConfiguration]');
  has LoadBalancers => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::LoadBalancer]');
  has Queues => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::Queue]');
  has Triggers => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::Trigger]');
}

package Aws::ElasticBeanstalk::EnvironmentResourcesDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has LoadBalancer => (is => 'ro', isa => 'Aws::ElasticBeanstalk::LoadBalancerDescription');
}

package Aws::ElasticBeanstalk::EnvironmentTier {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Name => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
}

package Aws::ElasticBeanstalk::EventDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has ApplicationName => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has EventDate => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EventSeverity');
  has TemplateName => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str');
}

package Aws::ElasticBeanstalk::Instance {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Id => (is => 'ro', isa => 'Str');
}

package Aws::ElasticBeanstalk::LaunchConfiguration {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Name => (is => 'ro', isa => 'Str');
}

package Aws::ElasticBeanstalk::Listener {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Port => (is => 'ro', isa => 'Int');
  has Protocol => (is => 'ro', isa => 'Str');
}

package Aws::ElasticBeanstalk::LoadBalancer {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Name => (is => 'ro', isa => 'Str');
}

package Aws::ElasticBeanstalk::LoadBalancerDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Domain => (is => 'ro', isa => 'Str');
  has Listeners => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::Listener]');
  has LoadBalancerName => (is => 'ro', isa => 'Str');
}

package Aws::ElasticBeanstalk::OptionRestrictionRegex {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Label => (is => 'ro', isa => 'Str');
  has Pattern => (is => 'ro', isa => 'Str');
}

package Aws::ElasticBeanstalk::OptionSpecification {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Namespace => (is => 'ro', isa => 'Str');
  has OptionName => (is => 'ro', isa => 'Str');
}

package Aws::ElasticBeanstalk::Queue {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Name => (is => 'ro', isa => 'Str');
  has URL => (is => 'ro', isa => 'Str');
}

package Aws::ElasticBeanstalk::S3Location {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has S3Bucket => (is => 'ro', isa => 'Str');
  has S3Key => (is => 'ro', isa => 'Str');
}

package Aws::ElasticBeanstalk::SolutionStackDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has PermittedFileTypes => (is => 'ro', isa => 'ArrayRef[Str]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
}

package Aws::ElasticBeanstalk::SourceConfiguration {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has ApplicationName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
}

package Aws::ElasticBeanstalk::Trigger {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Name => (is => 'ro', isa => 'Str');
}

package Aws::ElasticBeanstalk::ValidationMessage {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Message => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has OptionName => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Aws::ElasticBeanstalk::ValidationSeverity');
}



package Aws::ElasticBeanstalk::CheckDNSAvailability {
  use Moose;
  has CNAMEPrefix => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CheckDNSAvailability');
  has _returns => (isa => 'Aws::ElasticBeanstalk::CheckDNSAvailabilityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CheckDNSAvailabilityResult');  
}
package Aws::ElasticBeanstalk::CreateApplication {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  has _returns => (isa => 'Aws::ElasticBeanstalk::CreateApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateApplicationResult');  
}
package Aws::ElasticBeanstalk::CreateApplicationVersion {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has AutoCreateApplication => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has SourceBundle => (is => 'ro', isa => 'Aws::ElasticBeanstalk::S3Location');
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplicationVersion');
  has _returns => (isa => 'Aws::ElasticBeanstalk::CreateApplicationVersionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateApplicationVersionResult');  
}
package Aws::ElasticBeanstalk::CreateConfigurationTemplate {
  use Moose;
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
package Aws::ElasticBeanstalk::CreateEnvironment {
  use Moose;
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
package Aws::ElasticBeanstalk::CreateStorageLocation {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStorageLocation');
  has _returns => (isa => 'Aws::ElasticBeanstalk::CreateStorageLocationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStorageLocationResult');  
}
package Aws::ElasticBeanstalk::DeleteApplication {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has TerminateEnvByForce => (is => 'ro', isa => 'Bool');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplication');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DeleteApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteApplicationResult');  
}
package Aws::ElasticBeanstalk::DeleteApplicationVersion {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has DeleteSourceBundle => (is => 'ro', isa => 'Bool');
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplicationVersion');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DeleteApplicationVersionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteApplicationVersionResult');  
}
package Aws::ElasticBeanstalk::DeleteConfigurationTemplate {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConfigurationTemplate');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DeleteConfigurationTemplateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteConfigurationTemplateResult');  
}
package Aws::ElasticBeanstalk::DeleteEnvironmentConfiguration {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEnvironmentConfiguration');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DeleteEnvironmentConfigurationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteEnvironmentConfigurationResult');  
}
package Aws::ElasticBeanstalk::DescribeApplicationVersions {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str');
  has VersionLabels => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplicationVersions');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DescribeApplicationVersionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeApplicationVersionsResult');  
}
package Aws::ElasticBeanstalk::DescribeApplications {
  use Moose;
  has ApplicationNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplications');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DescribeApplicationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeApplicationsResult');  
}
package Aws::ElasticBeanstalk::DescribeConfigurationOptions {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::OptionSpecification]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationOptions');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DescribeConfigurationOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationOptionsResult');  
}
package Aws::ElasticBeanstalk::DescribeConfigurationSettings {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationSettings');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DescribeConfigurationSettingsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationSettingsResult');  
}
package Aws::ElasticBeanstalk::DescribeEnvironmentResources {
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentResources');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DescribeEnvironmentResourcesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentResourcesResult');  
}
package Aws::ElasticBeanstalk::DescribeEnvironments {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str');
  has EnvironmentIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnvironmentNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has IncludedDeletedBackTo => (is => 'ro', isa => 'Str');
  has IncludeDeleted => (is => 'ro', isa => 'Bool');
  has VersionLabel => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironments');
  has _returns => (isa => 'Aws::ElasticBeanstalk::DescribeEnvironmentsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentsResult');  
}
package Aws::ElasticBeanstalk::DescribeEvents {
  use Moose;
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
package Aws::ElasticBeanstalk::ListAvailableSolutionStacks {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListAvailableSolutionStacks');
  has _returns => (isa => 'Aws::ElasticBeanstalk::ListAvailableSolutionStacksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListAvailableSolutionStacksResult');  
}
package Aws::ElasticBeanstalk::RebuildEnvironment {
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RebuildEnvironment');
  has _returns => (isa => 'Aws::ElasticBeanstalk::RebuildEnvironmentResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RebuildEnvironmentResult');  
}
package Aws::ElasticBeanstalk::RequestEnvironmentInfo {
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has InfoType => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RequestEnvironmentInfo');
  has _returns => (isa => 'Aws::ElasticBeanstalk::RequestEnvironmentInfoResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RequestEnvironmentInfoResult');  
}
package Aws::ElasticBeanstalk::RestartAppServer {
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RestartAppServer');
  has _returns => (isa => 'Aws::ElasticBeanstalk::RestartAppServerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RestartAppServerResult');  
}
package Aws::ElasticBeanstalk::RetrieveEnvironmentInfo {
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has InfoType => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveEnvironmentInfo');
  has _returns => (isa => 'Aws::ElasticBeanstalk::RetrieveEnvironmentInfoResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RetrieveEnvironmentInfoResult');  
}
package Aws::ElasticBeanstalk::SwapEnvironmentCNAMEs {
  use Moose;
  has DestinationEnvironmentId => (is => 'ro', isa => 'Str');
  has DestinationEnvironmentName => (is => 'ro', isa => 'Str');
  has SourceEnvironmentId => (is => 'ro', isa => 'Str');
  has SourceEnvironmentName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SwapEnvironmentCNAMEs');
  has _returns => (isa => 'Aws::ElasticBeanstalk::SwapEnvironmentCNAMEsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SwapEnvironmentCNAMEsResult');  
}
package Aws::ElasticBeanstalk::TerminateEnvironment {
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has TerminateResources => (is => 'ro', isa => 'Bool');

  has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateEnvironment');
  has _returns => (isa => 'Aws::ElasticBeanstalk::TerminateEnvironmentResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'TerminateEnvironmentResult');  
}
package Aws::ElasticBeanstalk::UpdateApplication {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplication');
  has _returns => (isa => 'Aws::ElasticBeanstalk::UpdateApplicationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateApplicationResult');  
}
package Aws::ElasticBeanstalk::UpdateApplicationVersion {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplicationVersion');
  has _returns => (isa => 'Aws::ElasticBeanstalk::UpdateApplicationVersionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateApplicationVersionResult');  
}
package Aws::ElasticBeanstalk::UpdateConfigurationTemplate {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionSetting]');
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::OptionSpecification]');
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationTemplate');
  has _returns => (isa => 'Aws::ElasticBeanstalk::UpdateConfigurationTemplateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationTemplateResult');  
}
package Aws::ElasticBeanstalk::UpdateEnvironment {
  use Moose;
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
package Aws::ElasticBeanstalk::ValidateConfigurationSettings {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionSetting]', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateConfigurationSettings');
  has _returns => (isa => 'Aws::ElasticBeanstalk::ValidateConfigurationSettingsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ValidateConfigurationSettingsResult');  
}

package Aws::ElasticBeanstalk::CheckDNSAvailabilityResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Available => (is => 'ro', isa => 'Bool');
  has FullyQualifiedCNAME => (is => 'ro', isa => 'Str');

}
package Aws::ElasticBeanstalk::CreateApplicationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Application => (is => 'ro', isa => 'Aws::ElasticBeanstalk::ApplicationDescription');

}
package Aws::ElasticBeanstalk::CreateApplicationVersionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ApplicationVersion => (is => 'ro', isa => 'Aws::ElasticBeanstalk::ApplicationVersionDescription');

}
package Aws::ElasticBeanstalk::CreateConfigurationTemplateResult {
  use Moose;
  with 'AWS::API::ResultParser';
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
package Aws::ElasticBeanstalk::CreateEnvironmentResult {
  use Moose;
  with 'AWS::API::ResultParser';
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
package Aws::ElasticBeanstalk::CreateStorageLocationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has S3Bucket => (is => 'ro', isa => 'Str');

}
package Aws::ElasticBeanstalk::DescribeApplicationVersionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ApplicationVersions => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ApplicationVersionDescription]');

}
package Aws::ElasticBeanstalk::DescribeApplicationsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Applications => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ApplicationDescription]');

}
package Aws::ElasticBeanstalk::DescribeConfigurationOptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Options => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionDescription]');
  has SolutionStackName => (is => 'ro', isa => 'Str');

}
package Aws::ElasticBeanstalk::DescribeConfigurationSettingsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ConfigurationSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationSettingsDescription]');

}
package Aws::ElasticBeanstalk::DescribeEnvironmentResourcesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EnvironmentResources => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentResourceDescription');

}
package Aws::ElasticBeanstalk::DescribeEnvironmentsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Environments => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::EnvironmentDescription]');

}
package Aws::ElasticBeanstalk::DescribeEventsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::EventDescription]');
  has NextToken => (is => 'ro', isa => 'Str');

}
package Aws::ElasticBeanstalk::ListAvailableSolutionStacksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SolutionStackDetails => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::SolutionStackDescription]');
  has SolutionStacks => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::ElasticBeanstalk::RetrieveEnvironmentInfoResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EnvironmentInfo => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::EnvironmentInfoDescription]');

}
package Aws::ElasticBeanstalk::TerminateEnvironmentResult {
  use Moose;
  with 'AWS::API::ResultParser';
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
package Aws::ElasticBeanstalk::UpdateApplicationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Application => (is => 'ro', isa => 'Aws::ElasticBeanstalk::ApplicationDescription');

}
package Aws::ElasticBeanstalk::UpdateApplicationVersionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ApplicationVersion => (is => 'ro', isa => 'Aws::ElasticBeanstalk::ApplicationVersionDescription');

}
package Aws::ElasticBeanstalk::UpdateConfigurationTemplateResult {
  use Moose;
  with 'AWS::API::ResultParser';
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
package Aws::ElasticBeanstalk::UpdateEnvironmentResult {
  use Moose;
  with 'AWS::API::ResultParser';
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
package Aws::ElasticBeanstalk::ValidateConfigurationSettingsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Messages => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ValidationMessage]');

}

package Aws::ElasticBeanstalk {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'elasticbeanstalk');
  has version => (is => 'ro', isa => 'Str', default => '2010-12-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::QueryCaller', 'Net::AWS::XMLResponse');
  
  sub CheckDNSAvailability {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::CheckDNSAvailability', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::CheckDNSAvailabilityResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateApplication {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::CreateApplication', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::CreateApplicationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateApplicationVersion {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::CreateApplicationVersion', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::CreateApplicationVersionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateConfigurationTemplate {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::CreateConfigurationTemplate', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::CreateConfigurationTemplateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateEnvironment {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::CreateEnvironment', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::CreateEnvironmentResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateStorageLocation {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::CreateStorageLocation', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::CreateStorageLocationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteApplication {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::DeleteApplication', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteApplicationVersion {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::DeleteApplicationVersion', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteConfigurationTemplate {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::DeleteConfigurationTemplate', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteEnvironmentConfiguration {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::DeleteEnvironmentConfiguration', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DescribeApplications {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::DescribeApplications', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::DescribeApplicationsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeApplicationVersions {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::DescribeApplicationVersions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::DescribeApplicationVersionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeConfigurationOptions {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::DescribeConfigurationOptions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::DescribeConfigurationOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeConfigurationSettings {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::DescribeConfigurationSettings', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::DescribeConfigurationSettingsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeEnvironmentResources {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::DescribeEnvironmentResources', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::DescribeEnvironmentResourcesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeEnvironments {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::DescribeEnvironments', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::DescribeEnvironmentsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeEvents {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::DescribeEvents', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::DescribeEventsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListAvailableSolutionStacks {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::ListAvailableSolutionStacks', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::ListAvailableSolutionStacksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub RebuildEnvironment {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::RebuildEnvironment', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RequestEnvironmentInfo {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::RequestEnvironmentInfo', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RestartAppServer {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::RestartAppServer', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RetrieveEnvironmentInfo {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::RetrieveEnvironmentInfo', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::RetrieveEnvironmentInfoResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub SwapEnvironmentCNAMEs {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::SwapEnvironmentCNAMEs', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub TerminateEnvironment {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::TerminateEnvironment', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::TerminateEnvironmentResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub UpdateApplication {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::UpdateApplication', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::UpdateApplicationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub UpdateApplicationVersion {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::UpdateApplicationVersion', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::UpdateApplicationVersionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub UpdateConfigurationTemplate {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::UpdateConfigurationTemplate', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::UpdateConfigurationTemplateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub UpdateEnvironment {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::UpdateEnvironment', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::UpdateEnvironmentResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ValidateConfigurationSettings {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElasticBeanstalk::ValidateConfigurationSettings', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElasticBeanstalk::ValidateConfigurationSettingsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
