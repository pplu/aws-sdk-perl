
use AWS::API;


package Aws::ElasticBeanstalk::CheckDNSAvailability {
  use Moose;
  has CNAMEPrefix => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CheckDNSAvailability');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::CheckDNSAvailabilityResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CheckDNSAvailabilityResult');
}
package Aws::ElasticBeanstalk::CreateApplication {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::CreateApplicationResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateApplicationResult');
}
package Aws::ElasticBeanstalk::CreateApplicationVersion {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has AutoCreateApplication => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has SourceBundle => (is => 'ro', isa => 'Aws::ElasticBeanstalk::S3Location');
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplicationVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::CreateApplicationVersionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateApplicationVersionResult');
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

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfigurationTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::CreateConfigurationTemplateResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateConfigurationTemplateResult');
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
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::Tag]');
  has TemplateName => (is => 'ro', isa => 'Str');
  has Tier => (is => 'ro', isa => 'Aws::ElasticBeanstalk::EnvironmentTier');
  has VersionLabel => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::CreateEnvironmentResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateEnvironmentResult');
}
package Aws::ElasticBeanstalk::CreateStorageLocation {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStorageLocation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::CreateStorageLocationResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStorageLocationResult');
}
package Aws::ElasticBeanstalk::DeleteApplication {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has TerminateEnvByForce => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplication');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::ElasticBeanstalk::DeleteApplicationVersion {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has DeleteSourceBundle => (is => 'ro', isa => 'Bool');
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplicationVersion');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::ElasticBeanstalk::DeleteConfigurationTemplate {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConfigurationTemplate');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::ElasticBeanstalk::DeleteEnvironmentConfiguration {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEnvironmentConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::ElasticBeanstalk::DescribeApplicationVersions {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str');
  has VersionLabels => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplicationVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::DescribeApplicationVersionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeApplicationVersionsResult');
}
package Aws::ElasticBeanstalk::DescribeApplications {
  use Moose;
  has ApplicationNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::DescribeApplicationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeApplicationsResult');
}
package Aws::ElasticBeanstalk::DescribeConfigurationOptions {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::OptionSpecification]');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::DescribeConfigurationOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationOptionsResult');
}
package Aws::ElasticBeanstalk::DescribeConfigurationSettings {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::DescribeConfigurationSettingsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationSettingsResult');
}
package Aws::ElasticBeanstalk::DescribeEnvironmentResources {
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::DescribeEnvironmentResourcesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentResourcesResult');
}
package Aws::ElasticBeanstalk::DescribeEnvironments {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str');
  has EnvironmentIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnvironmentNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has IncludedDeletedBackTo => (is => 'ro', isa => 'Str');
  has IncludeDeleted => (is => 'ro', isa => 'Bool');
  has VersionLabel => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::DescribeEnvironmentsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentsResult');
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

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::DescribeEventsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventsResult');
}
package Aws::ElasticBeanstalk::ListAvailableSolutionStacks {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAvailableSolutionStacks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::ListAvailableSolutionStacksResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListAvailableSolutionStacksResult');
}
package Aws::ElasticBeanstalk::RebuildEnvironment {
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RebuildEnvironment');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::ElasticBeanstalk::RequestEnvironmentInfo {
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has InfoType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RequestEnvironmentInfo');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::ElasticBeanstalk::RestartAppServer {
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestartAppServer');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::ElasticBeanstalk::RetrieveEnvironmentInfo {
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has InfoType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveEnvironmentInfo');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::RetrieveEnvironmentInfoResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RetrieveEnvironmentInfoResult');
}
package Aws::ElasticBeanstalk::SwapEnvironmentCNAMEs {
  use Moose;
  has DestinationEnvironmentId => (is => 'ro', isa => 'Str');
  has DestinationEnvironmentName => (is => 'ro', isa => 'Str');
  has SourceEnvironmentId => (is => 'ro', isa => 'Str');
  has SourceEnvironmentName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SwapEnvironmentCNAMEs');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::ElasticBeanstalk::TerminateEnvironment {
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has TerminateResources => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateEnvironment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::TerminateEnvironmentResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'TerminateEnvironmentResult');
}
package Aws::ElasticBeanstalk::UpdateApplication {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::UpdateApplicationResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateApplicationResult');
}
package Aws::ElasticBeanstalk::UpdateApplicationVersion {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplicationVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::UpdateApplicationVersionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateApplicationVersionResult');
}
package Aws::ElasticBeanstalk::UpdateConfigurationTemplate {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionSetting]');
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::OptionSpecification]');
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::UpdateConfigurationTemplateResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationTemplateResult');
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

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnvironment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::UpdateEnvironmentResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateEnvironmentResult');
}
package Aws::ElasticBeanstalk::ValidateConfigurationSettings {
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ConfigurationOptionSetting]', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateConfigurationSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElasticBeanstalk::ValidateConfigurationSettingsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ValidateConfigurationSettingsResult');
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

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub CheckDNSAvailability {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::CheckDNSAvailability', @_);
  }
  sub CreateApplication {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::CreateApplication', @_);
  }
  sub CreateApplicationVersion {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::CreateApplicationVersion', @_);
  }
  sub CreateConfigurationTemplate {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::CreateConfigurationTemplate', @_);
  }
  sub CreateEnvironment {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::CreateEnvironment', @_);
  }
  sub CreateStorageLocation {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::CreateStorageLocation', @_);
  }
  sub DeleteApplication {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DeleteApplication', @_);
  }
  sub DeleteApplicationVersion {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DeleteApplicationVersion', @_);
  }
  sub DeleteConfigurationTemplate {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DeleteConfigurationTemplate', @_);
  }
  sub DeleteEnvironmentConfiguration {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DeleteEnvironmentConfiguration', @_);
  }
  sub DescribeApplications {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DescribeApplications', @_);
  }
  sub DescribeApplicationVersions {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DescribeApplicationVersions', @_);
  }
  sub DescribeConfigurationOptions {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DescribeConfigurationOptions', @_);
  }
  sub DescribeConfigurationSettings {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DescribeConfigurationSettings', @_);
  }
  sub DescribeEnvironmentResources {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DescribeEnvironmentResources', @_);
  }
  sub DescribeEnvironments {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DescribeEnvironments', @_);
  }
  sub DescribeEvents {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::DescribeEvents', @_);
  }
  sub ListAvailableSolutionStacks {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::ListAvailableSolutionStacks', @_);
  }
  sub RebuildEnvironment {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::RebuildEnvironment', @_);
  }
  sub RequestEnvironmentInfo {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::RequestEnvironmentInfo', @_);
  }
  sub RestartAppServer {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::RestartAppServer', @_);
  }
  sub RetrieveEnvironmentInfo {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::RetrieveEnvironmentInfo', @_);
  }
  sub SwapEnvironmentCNAMEs {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::SwapEnvironmentCNAMEs', @_);
  }
  sub TerminateEnvironment {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::TerminateEnvironment', @_);
  }
  sub UpdateApplication {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::UpdateApplication', @_);
  }
  sub UpdateApplicationVersion {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::UpdateApplicationVersion', @_);
  }
  sub UpdateConfigurationTemplate {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::UpdateConfigurationTemplate', @_);
  }
  sub UpdateEnvironment {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::UpdateEnvironment', @_);
  }
  sub ValidateConfigurationSettings {
    my $self = shift;
    return $self->do_call('Aws::ElasticBeanstalk::ValidateConfigurationSettings', @_);
  }
}
1;
