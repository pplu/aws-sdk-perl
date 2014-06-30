
use AWS::API;


package Aws::OpsWorks::App {
  use Moose;
  with ('AWS::API::ResultParser');
  has AppId => (is => 'ro', isa => 'Str');
  has AppSource => (is => 'ro', isa => 'Aws::OpsWorks::Source');
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::AppAttributes');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Domains => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableSsl => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has Shortname => (is => 'ro', isa => 'Str');
  has SslConfiguration => (is => 'ro', isa => 'Aws::OpsWorks::SslConfiguration');
  has StackId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::AppAttributes {
  use Moose;
  with 'AWS::API::MapParser';
  has AutoBundleOnDeploy => (is => 'ro', isa => 'Str');
  has DocumentRoot => (is => 'ro', isa => 'Str');
  has RailsEnv => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::AutoScalingThresholds {
  use Moose;
  with ('AWS::API::ResultParser');
  has CpuThreshold => (is => 'ro', isa => 'Num');
  has IgnoreMetricsTime => (is => 'ro', isa => 'Int');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has LoadThreshold => (is => 'ro', isa => 'Num');
  has MemoryThreshold => (is => 'ro', isa => 'Num');
  has ThresholdsWaitTime => (is => 'ro', isa => 'Int');
}

package Aws::OpsWorks::ChefConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has BerkshelfVersion => (is => 'ro', isa => 'Str');
  has ManageBerkshelf => (is => 'ro', isa => 'Bool');
}

package Aws::OpsWorks::Command {
  use Moose;
  with ('AWS::API::ResultParser');
  has AcknowledgedAt => (is => 'ro', isa => 'Str');
  has CommandId => (is => 'ro', isa => 'Str');
  has CompletedAt => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DeploymentId => (is => 'ro', isa => 'Str');
  has ExitCode => (is => 'ro', isa => 'Int');
  has InstanceId => (is => 'ro', isa => 'Str');
  has LogUrl => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::DailyAutoScalingSchedule {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::OpsWorks::Deployment {
  use Moose;
  with ('AWS::API::ResultParser');
  has AppId => (is => 'ro', isa => 'Str');
  has Command => (is => 'ro', isa => 'Aws::OpsWorks::DeploymentCommand');
  has Comment => (is => 'ro', isa => 'Str');
  has CompletedAt => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CustomJson => (is => 'ro', isa => 'Str');
  has DeploymentId => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has IamUserArn => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::DeploymentCommand {
  use Moose;
  with ('AWS::API::ResultParser');
  has Args => (is => 'ro', isa => 'Aws::OpsWorks::DeploymentCommandArgs');
  has Name => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::OpsWorks::DeploymentCommandArgs {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::OpsWorks::ElasticIp {
  use Moose;
  with ('AWS::API::ResultParser');
  has Domain => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Ip => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::ElasticLoadBalancer {
  use Moose;
  with ('AWS::API::ResultParser');
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');
  has DnsName => (is => 'ro', isa => 'Str');
  has Ec2InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has ElasticLoadBalancerName => (is => 'ro', isa => 'Str');
  has LayerId => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has VpcId => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::Instance {
  use Moose;
  with ('AWS::API::ResultParser');
  has AmiId => (is => 'ro', isa => 'Str');
  has Architecture => (is => 'ro', isa => 'Str');
  has AutoScalingType => (is => 'ro', isa => 'Str');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has Ec2InstanceId => (is => 'ro', isa => 'Str');
  has ElasticIp => (is => 'ro', isa => 'Str');
  has Hostname => (is => 'ro', isa => 'Str');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str');
  has InstanceProfileArn => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has LastServiceErrorId => (is => 'ro', isa => 'Str');
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has Os => (is => 'ro', isa => 'Str');
  has PrivateDns => (is => 'ro', isa => 'Str');
  has PrivateIp => (is => 'ro', isa => 'Str');
  has PublicDns => (is => 'ro', isa => 'Str');
  has PublicIp => (is => 'ro', isa => 'Str');
  has RootDeviceType => (is => 'ro', isa => 'Str');
  has RootDeviceVolumeId => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has SshHostDsaKeyFingerprint => (is => 'ro', isa => 'Str');
  has SshHostRsaKeyFingerprint => (is => 'ro', isa => 'Str');
  has SshKeyName => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::InstancesCount {
  use Moose;
  with ('AWS::API::ResultParser');
  has Booting => (is => 'ro', isa => 'Int');
  has ConnectionLost => (is => 'ro', isa => 'Int');
  has Online => (is => 'ro', isa => 'Int');
  has Pending => (is => 'ro', isa => 'Int');
  has Rebooting => (is => 'ro', isa => 'Int');
  has Requested => (is => 'ro', isa => 'Int');
  has RunningSetup => (is => 'ro', isa => 'Int');
  has SetupFailed => (is => 'ro', isa => 'Int');
  has ShuttingDown => (is => 'ro', isa => 'Int');
  has StartFailed => (is => 'ro', isa => 'Int');
  has Stopped => (is => 'ro', isa => 'Int');
  has Stopping => (is => 'ro', isa => 'Int');
  has Terminated => (is => 'ro', isa => 'Int');
  has Terminating => (is => 'ro', isa => 'Int');
}

package Aws::OpsWorks::Layer {
  use Moose;
  with ('AWS::API::ResultParser');
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::LayerAttributes');
  has AutoAssignElasticIps => (is => 'ro', isa => 'Bool');
  has AutoAssignPublicIps => (is => 'ro', isa => 'Bool');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CustomInstanceProfileArn => (is => 'ro', isa => 'Str');
  has CustomRecipes => (is => 'ro', isa => 'Aws::OpsWorks::Recipes');
  has CustomSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has DefaultRecipes => (is => 'ro', isa => 'Aws::OpsWorks::Recipes');
  has DefaultSecurityGroupNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableAutoHealing => (is => 'ro', isa => 'Bool');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Bool');
  has LayerId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Packages => (is => 'ro', isa => 'ArrayRef[Str]');
  has Shortname => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has UseEbsOptimizedInstances => (is => 'ro', isa => 'Bool');
  has VolumeConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::VolumeConfiguration]');
}

package Aws::OpsWorks::LayerAttributes {
  use Moose;
  with 'AWS::API::MapParser';
  has BundlerVersion => (is => 'ro', isa => 'Str');
  has EnableHaproxyStats => (is => 'ro', isa => 'Str');
  has GangliaPassword => (is => 'ro', isa => 'Str');
  has GangliaUrl => (is => 'ro', isa => 'Str');
  has GangliaUser => (is => 'ro', isa => 'Str');
  has HaproxyHealthCheckMethod => (is => 'ro', isa => 'Str');
  has HaproxyHealthCheckUrl => (is => 'ro', isa => 'Str');
  has HaproxyStatsPassword => (is => 'ro', isa => 'Str');
  has HaproxyStatsUrl => (is => 'ro', isa => 'Str');
  has HaproxyStatsUser => (is => 'ro', isa => 'Str');
  has JavaAppServer => (is => 'ro', isa => 'Str');
  has JavaAppServerVersion => (is => 'ro', isa => 'Str');
  has Jvm => (is => 'ro', isa => 'Str');
  has JvmOptions => (is => 'ro', isa => 'Str');
  has JvmVersion => (is => 'ro', isa => 'Str');
  has ManageBundler => (is => 'ro', isa => 'Str');
  has MemcachedMemory => (is => 'ro', isa => 'Str');
  has MysqlRootPassword => (is => 'ro', isa => 'Str');
  has MysqlRootPasswordUbiquitous => (is => 'ro', isa => 'Str');
  has NodejsVersion => (is => 'ro', isa => 'Str');
  has PassengerVersion => (is => 'ro', isa => 'Str');
  has RailsStack => (is => 'ro', isa => 'Str');
  has RubyVersion => (is => 'ro', isa => 'Str');
  has RubygemsVersion => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::LoadBasedAutoScalingConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has DownScaling => (is => 'ro', isa => 'Aws::OpsWorks::AutoScalingThresholds');
  has Enable => (is => 'ro', isa => 'Bool');
  has LayerId => (is => 'ro', isa => 'Str');
  has UpScaling => (is => 'ro', isa => 'Aws::OpsWorks::AutoScalingThresholds');
}

package Aws::OpsWorks::Permission {
  use Moose;
  with ('AWS::API::ResultParser');
  has AllowSsh => (is => 'ro', isa => 'Bool');
  has AllowSudo => (is => 'ro', isa => 'Bool');
  has IamUserArn => (is => 'ro', isa => 'Str');
  has Level => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::RaidArray {
  use Moose;
  with ('AWS::API::ResultParser');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Device => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has MountPoint => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has NumberOfDisks => (is => 'ro', isa => 'Int');
  has RaidArrayId => (is => 'ro', isa => 'Str');
  has RaidLevel => (is => 'ro', isa => 'Int');
  has Size => (is => 'ro', isa => 'Int');
  has VolumeType => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::Recipes {
  use Moose;
  with ('AWS::API::ResultParser');
  has Configure => (is => 'ro', isa => 'ArrayRef[Str]');
  has Deploy => (is => 'ro', isa => 'ArrayRef[Str]');
  has Setup => (is => 'ro', isa => 'ArrayRef[Str]');
  has Shutdown => (is => 'ro', isa => 'ArrayRef[Str]');
  has Undeploy => (is => 'ro', isa => 'ArrayRef[Str]');
}

package Aws::OpsWorks::SelfUserProfile {
  use Moose;
  with ('AWS::API::ResultParser');
  has IamUserArn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SshPublicKey => (is => 'ro', isa => 'Str');
  has SshUsername => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::ServiceError {
  use Moose;
  with ('AWS::API::ResultParser');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has ServiceErrorId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::Source {
  use Moose;
  with ('AWS::API::ResultParser');
  has Password => (is => 'ro', isa => 'Str');
  has Revision => (is => 'ro', isa => 'Str');
  has SshKey => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::SslConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has Certificate => (is => 'ro', isa => 'Str', required => 1);
  has Chain => (is => 'ro', isa => 'Str');
  has PrivateKey => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::OpsWorks::Stack {
  use Moose;
  with ('AWS::API::ResultParser');
  has Arn => (is => 'ro', isa => 'Str');
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::StackAttributes');
  has ChefConfiguration => (is => 'ro', isa => 'Aws::OpsWorks::ChefConfiguration');
  has ConfigurationManager => (is => 'ro', isa => 'Aws::OpsWorks::StackConfigurationManager');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CustomCookbooksSource => (is => 'ro', isa => 'Aws::OpsWorks::Source');
  has CustomJson => (is => 'ro', isa => 'Str');
  has DefaultAvailabilityZone => (is => 'ro', isa => 'Str');
  has DefaultInstanceProfileArn => (is => 'ro', isa => 'Str');
  has DefaultOs => (is => 'ro', isa => 'Str');
  has DefaultRootDeviceType => (is => 'ro', isa => 'Str');
  has DefaultSshKeyName => (is => 'ro', isa => 'Str');
  has DefaultSubnetId => (is => 'ro', isa => 'Str');
  has HostnameTheme => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
  has ServiceRoleArn => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has UseCustomCookbooks => (is => 'ro', isa => 'Bool');
  has UseOpsworksSecurityGroups => (is => 'ro', isa => 'Bool');
  has VpcId => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::StackAttributes {
  use Moose;
  with 'AWS::API::MapParser';
  has Color => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::StackConfigurationManager {
  use Moose;
  with ('AWS::API::ResultParser');
  has Name => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::StackSummary {
  use Moose;
  with ('AWS::API::ResultParser');
  has AppsCount => (is => 'ro', isa => 'Int');
  has Arn => (is => 'ro', isa => 'Str');
  has InstancesCount => (is => 'ro', isa => 'Aws::OpsWorks::InstancesCount');
  has LayersCount => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::TimeBasedAutoScalingConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has AutoScalingSchedule => (is => 'ro', isa => 'Aws::OpsWorks::WeeklyAutoScalingSchedule');
  has InstanceId => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::UserProfile {
  use Moose;
  with ('AWS::API::ResultParser');
  has AllowSelfManagement => (is => 'ro', isa => 'Bool');
  has IamUserArn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SshPublicKey => (is => 'ro', isa => 'Str');
  has SshUsername => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::Volume {
  use Moose;
  with ('AWS::API::ResultParser');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has Device => (is => 'ro', isa => 'Str');
  has Ec2VolumeId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has MountPoint => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RaidArrayId => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::VolumeConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has Iops => (is => 'ro', isa => 'Int');
  has MountPoint => (is => 'ro', isa => 'Str', required => 1);
  has NumberOfDisks => (is => 'ro', isa => 'Int', required => 1);
  has RaidLevel => (is => 'ro', isa => 'Int');
  has Size => (is => 'ro', isa => 'Int', required => 1);
  has VolumeType => (is => 'ro', isa => 'Str');
}

package Aws::OpsWorks::WeeklyAutoScalingSchedule {
  use Moose;
  with ('AWS::API::ResultParser');
  has Friday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
  has Monday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
  has Saturday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
  has Sunday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
  has Thursday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
  has Tuesday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
  has Wednesday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
}



package Aws::OpsWorks::AssignVolume {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssignVolume');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::AssociateElasticIp {
  use Moose;
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateElasticIp');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::AttachElasticLoadBalancer {
  use Moose;
  has ElasticLoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LayerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachElasticLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::CloneStack {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::StackAttributes');
  has ChefConfiguration => (is => 'ro', isa => 'Aws::OpsWorks::ChefConfiguration');
  has CloneAppIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has ClonePermissions => (is => 'ro', isa => 'Bool');
  has ConfigurationManager => (is => 'ro', isa => 'Aws::OpsWorks::StackConfigurationManager');
  has CustomCookbooksSource => (is => 'ro', isa => 'Aws::OpsWorks::Source');
  has CustomJson => (is => 'ro', isa => 'Str');
  has DefaultAvailabilityZone => (is => 'ro', isa => 'Str');
  has DefaultInstanceProfileArn => (is => 'ro', isa => 'Str');
  has DefaultOs => (is => 'ro', isa => 'Str');
  has DefaultRootDeviceType => (is => 'ro', isa => 'Str');
  has DefaultSshKeyName => (is => 'ro', isa => 'Str');
  has DefaultSubnetId => (is => 'ro', isa => 'Str');
  has HostnameTheme => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
  has ServiceRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceStackId => (is => 'ro', isa => 'Str', required => 1);
  has UseCustomCookbooks => (is => 'ro', isa => 'Bool');
  has UseOpsworksSecurityGroups => (is => 'ro', isa => 'Bool');
  has VpcId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CloneStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::CloneStackResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::CreateApp {
  use Moose;
  has AppSource => (is => 'ro', isa => 'Aws::OpsWorks::Source');
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::AppAttributes');
  has Description => (is => 'ro', isa => 'Str');
  has Domains => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableSsl => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Shortname => (is => 'ro', isa => 'Str');
  has SslConfiguration => (is => 'ro', isa => 'Aws::OpsWorks::SslConfiguration');
  has StackId => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::CreateAppResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::CreateDeployment {
  use Moose;
  has AppId => (is => 'ro', isa => 'Str');
  has Command => (is => 'ro', isa => 'Aws::OpsWorks::DeploymentCommand', required => 1);
  has Comment => (is => 'ro', isa => 'Str');
  has CustomJson => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeployment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::CreateDeploymentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::CreateInstance {
  use Moose;
  has AmiId => (is => 'ro', isa => 'Str');
  has Architecture => (is => 'ro', isa => 'Str');
  has AutoScalingType => (is => 'ro', isa => 'Str');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has Hostname => (is => 'ro', isa => 'Str');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Bool');
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Os => (is => 'ro', isa => 'Str');
  has RootDeviceType => (is => 'ro', isa => 'Str');
  has SshKeyName => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);
  has SubnetId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::CreateInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::CreateLayer {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::LayerAttributes');
  has AutoAssignElasticIps => (is => 'ro', isa => 'Bool');
  has AutoAssignPublicIps => (is => 'ro', isa => 'Bool');
  has CustomInstanceProfileArn => (is => 'ro', isa => 'Str');
  has CustomRecipes => (is => 'ro', isa => 'Aws::OpsWorks::Recipes');
  has CustomSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableAutoHealing => (is => 'ro', isa => 'Bool');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Packages => (is => 'ro', isa => 'ArrayRef[Str]');
  has Shortname => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has UseEbsOptimizedInstances => (is => 'ro', isa => 'Bool');
  has VolumeConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::VolumeConfiguration]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLayer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::CreateLayerResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::CreateStack {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::StackAttributes');
  has ChefConfiguration => (is => 'ro', isa => 'Aws::OpsWorks::ChefConfiguration');
  has ConfigurationManager => (is => 'ro', isa => 'Aws::OpsWorks::StackConfigurationManager');
  has CustomCookbooksSource => (is => 'ro', isa => 'Aws::OpsWorks::Source');
  has CustomJson => (is => 'ro', isa => 'Str');
  has DefaultAvailabilityZone => (is => 'ro', isa => 'Str');
  has DefaultInstanceProfileArn => (is => 'ro', isa => 'Str', required => 1);
  has DefaultOs => (is => 'ro', isa => 'Str');
  has DefaultRootDeviceType => (is => 'ro', isa => 'Str');
  has DefaultSshKeyName => (is => 'ro', isa => 'Str');
  has DefaultSubnetId => (is => 'ro', isa => 'Str');
  has HostnameTheme => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Region => (is => 'ro', isa => 'Str', required => 1);
  has ServiceRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has UseCustomCookbooks => (is => 'ro', isa => 'Bool');
  has UseOpsworksSecurityGroups => (is => 'ro', isa => 'Bool');
  has VpcId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::CreateStackResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::CreateUserProfile {
  use Moose;
  has AllowSelfManagement => (is => 'ro', isa => 'Bool');
  has IamUserArn => (is => 'ro', isa => 'Str', required => 1);
  has SshPublicKey => (is => 'ro', isa => 'Str');
  has SshUsername => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUserProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::CreateUserProfileResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DeleteApp {
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApp');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DeleteInstance {
  use Moose;
  has DeleteElasticIp => (is => 'ro', isa => 'Bool');
  has DeleteVolumes => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInstance');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DeleteLayer {
  use Moose;
  has LayerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLayer');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DeleteStack {
  use Moose;
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStack');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DeleteUserProfile {
  use Moose;
  has IamUserArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUserProfile');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DeregisterElasticIp {
  use Moose;
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterElasticIp');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DeregisterVolume {
  use Moose;
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterVolume');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DescribeApps {
  use Moose;
  has AppIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeAppsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DescribeCommands {
  use Moose;
  has CommandIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has DeploymentId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCommands');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeCommandsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DescribeDeployments {
  use Moose;
  has AppId => (is => 'ro', isa => 'Str');
  has DeploymentIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDeployments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeDeploymentsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DescribeElasticIps {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');
  has Ips => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeElasticIps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeElasticIpsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DescribeElasticLoadBalancers {
  use Moose;
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeElasticLoadBalancers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeElasticLoadBalancersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DescribeInstances {
  use Moose;
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has LayerId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DescribeLayers {
  use Moose;
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLayers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeLayersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DescribeLoadBasedAutoScaling {
  use Moose;
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBasedAutoScaling');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeLoadBasedAutoScalingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DescribeMyUserProfile {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMyUserProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeMyUserProfileResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DescribePermissions {
  use Moose;
  has IamUserArn => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePermissions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribePermissionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DescribeRaidArrays {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');
  has RaidArrayIds => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRaidArrays');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeRaidArraysResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DescribeServiceErrors {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');
  has ServiceErrorIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServiceErrors');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeServiceErrorsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DescribeStackSummary {
  use Moose;
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackSummary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeStackSummaryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DescribeStacks {
  use Moose;
  has StackIds => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStacks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeStacksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DescribeTimeBasedAutoScaling {
  use Moose;
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTimeBasedAutoScaling');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeTimeBasedAutoScalingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DescribeUserProfiles {
  use Moose;
  has IamUserArns => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUserProfiles');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeUserProfilesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DescribeVolumes {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');
  has RaidArrayId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has VolumeIds => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVolumes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeVolumesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DetachElasticLoadBalancer {
  use Moose;
  has ElasticLoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LayerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachElasticLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::DisassociateElasticIp {
  use Moose;
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateElasticIp');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::GetHostnameSuggestion {
  use Moose;
  has LayerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetHostnameSuggestion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::GetHostnameSuggestionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::RebootInstance {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RebootInstance');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::RegisterElasticIp {
  use Moose;
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterElasticIp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::RegisterElasticIpResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::RegisterVolume {
  use Moose;
  has Ec2VolumeId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::RegisterVolumeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::SetLoadBasedAutoScaling {
  use Moose;
  has DownScaling => (is => 'ro', isa => 'Aws::OpsWorks::AutoScalingThresholds');
  has Enable => (is => 'ro', isa => 'Bool');
  has LayerId => (is => 'ro', isa => 'Str', required => 1);
  has UpScaling => (is => 'ro', isa => 'Aws::OpsWorks::AutoScalingThresholds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBasedAutoScaling');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::SetPermission {
  use Moose;
  has AllowSsh => (is => 'ro', isa => 'Bool');
  has AllowSudo => (is => 'ro', isa => 'Bool');
  has IamUserArn => (is => 'ro', isa => 'Str', required => 1);
  has Level => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetPermission');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::SetTimeBasedAutoScaling {
  use Moose;
  has AutoScalingSchedule => (is => 'ro', isa => 'Aws::OpsWorks::WeeklyAutoScalingSchedule');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetTimeBasedAutoScaling');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::StartInstance {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartInstance');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::StartStack {
  use Moose;
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartStack');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::StopInstance {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopInstance');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::StopStack {
  use Moose;
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopStack');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::UnassignVolume {
  use Moose;
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UnassignVolume');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::UpdateApp {
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', required => 1);
  has AppSource => (is => 'ro', isa => 'Aws::OpsWorks::Source');
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::AppAttributes');
  has Description => (is => 'ro', isa => 'Str');
  has Domains => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableSsl => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has SslConfiguration => (is => 'ro', isa => 'Aws::OpsWorks::SslConfiguration');
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApp');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::UpdateElasticIp {
  use Moose;
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateElasticIp');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::UpdateInstance {
  use Moose;
  has AmiId => (is => 'ro', isa => 'Str');
  has Architecture => (is => 'ro', isa => 'Str');
  has AutoScalingType => (is => 'ro', isa => 'Str');
  has Hostname => (is => 'ro', isa => 'Str');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str');
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has Os => (is => 'ro', isa => 'Str');
  has SshKeyName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInstance');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::UpdateLayer {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::LayerAttributes');
  has AutoAssignElasticIps => (is => 'ro', isa => 'Bool');
  has AutoAssignPublicIps => (is => 'ro', isa => 'Bool');
  has CustomInstanceProfileArn => (is => 'ro', isa => 'Str');
  has CustomRecipes => (is => 'ro', isa => 'Aws::OpsWorks::Recipes');
  has CustomSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableAutoHealing => (is => 'ro', isa => 'Bool');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Bool');
  has LayerId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has Packages => (is => 'ro', isa => 'ArrayRef[Str]');
  has Shortname => (is => 'ro', isa => 'Str');
  has UseEbsOptimizedInstances => (is => 'ro', isa => 'Bool');
  has VolumeConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::VolumeConfiguration]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLayer');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::UpdateMyUserProfile {
  use Moose;
  has SshPublicKey => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMyUserProfile');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::UpdateStack {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::StackAttributes');
  has ChefConfiguration => (is => 'ro', isa => 'Aws::OpsWorks::ChefConfiguration');
  has ConfigurationManager => (is => 'ro', isa => 'Aws::OpsWorks::StackConfigurationManager');
  has CustomCookbooksSource => (is => 'ro', isa => 'Aws::OpsWorks::Source');
  has CustomJson => (is => 'ro', isa => 'Str');
  has DefaultAvailabilityZone => (is => 'ro', isa => 'Str');
  has DefaultInstanceProfileArn => (is => 'ro', isa => 'Str');
  has DefaultOs => (is => 'ro', isa => 'Str');
  has DefaultRootDeviceType => (is => 'ro', isa => 'Str');
  has DefaultSshKeyName => (is => 'ro', isa => 'Str');
  has DefaultSubnetId => (is => 'ro', isa => 'Str');
  has HostnameTheme => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ServiceRoleArn => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);
  has UseCustomCookbooks => (is => 'ro', isa => 'Bool');
  has UseOpsworksSecurityGroups => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStack');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::UpdateUserProfile {
  use Moose;
  has AllowSelfManagement => (is => 'ro', isa => 'Bool');
  has IamUserArn => (is => 'ro', isa => 'Str', required => 1);
  has SshPublicKey => (is => 'ro', isa => 'Str');
  has SshUsername => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUserProfile');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::OpsWorks::UpdateVolume {
  use Moose;
  has MountPoint => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVolume');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

package Aws::OpsWorks::CloneStackResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has StackId => (is => 'ro', isa => 'Str');

}
package Aws::OpsWorks::CreateAppResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AppId => (is => 'ro', isa => 'Str');

}
package Aws::OpsWorks::CreateDeploymentResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DeploymentId => (is => 'ro', isa => 'Str');

}
package Aws::OpsWorks::CreateInstanceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has InstanceId => (is => 'ro', isa => 'Str');

}
package Aws::OpsWorks::CreateLayerResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LayerId => (is => 'ro', isa => 'Str');

}
package Aws::OpsWorks::CreateStackResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has StackId => (is => 'ro', isa => 'Str');

}
package Aws::OpsWorks::CreateUserProfileResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IamUserArn => (is => 'ro', isa => 'Str');

}
package Aws::OpsWorks::DescribeAppsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Apps => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::App]');

}
package Aws::OpsWorks::DescribeCommandsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Commands => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Command]');

}
package Aws::OpsWorks::DescribeDeploymentsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Deployments => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Deployment]');

}
package Aws::OpsWorks::DescribeElasticIpsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ElasticIps => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::ElasticIp]');

}
package Aws::OpsWorks::DescribeElasticLoadBalancersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ElasticLoadBalancers => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::ElasticLoadBalancer]');

}
package Aws::OpsWorks::DescribeInstancesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Instance]');

}
package Aws::OpsWorks::DescribeLayersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Layers => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Layer]');

}
package Aws::OpsWorks::DescribeLoadBasedAutoScalingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LoadBasedAutoScalingConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::LoadBasedAutoScalingConfiguration]');

}
package Aws::OpsWorks::DescribeMyUserProfileResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has UserProfile => (is => 'ro', isa => 'Aws::OpsWorks::SelfUserProfile');

}
package Aws::OpsWorks::DescribePermissionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Permissions => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Permission]');

}
package Aws::OpsWorks::DescribeRaidArraysResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has RaidArrays => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::RaidArray]');

}
package Aws::OpsWorks::DescribeServiceErrorsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ServiceErrors => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::ServiceError]');

}
package Aws::OpsWorks::DescribeStackSummaryResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has StackSummary => (is => 'ro', isa => 'Aws::OpsWorks::StackSummary');

}
package Aws::OpsWorks::DescribeStacksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Stacks => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Stack]');

}
package Aws::OpsWorks::DescribeTimeBasedAutoScalingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TimeBasedAutoScalingConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::TimeBasedAutoScalingConfiguration]');

}
package Aws::OpsWorks::DescribeUserProfilesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has UserProfiles => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::UserProfile]');

}
package Aws::OpsWorks::DescribeVolumesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Volumes => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Volume]');

}
package Aws::OpsWorks::GetHostnameSuggestionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Hostname => (is => 'ro', isa => 'Str');
  has LayerId => (is => 'ro', isa => 'Str');

}
package Aws::OpsWorks::RegisterElasticIpResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ElasticIp => (is => 'ro', isa => 'Str');

}
package Aws::OpsWorks::RegisterVolumeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has VolumeId => (is => 'ro', isa => 'Str');

}

package Aws::OpsWorks {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'opsworks');
  has version => (is => 'ro', isa => 'Str', default => '2013-02-18');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'OpsWorks_20130218');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub AssignVolume {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::AssignVolume', @_);
  }
  sub AssociateElasticIp {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::AssociateElasticIp', @_);
  }
  sub AttachElasticLoadBalancer {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::AttachElasticLoadBalancer', @_);
  }
  sub CloneStack {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::CloneStack', @_);
  }
  sub CreateApp {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::CreateApp', @_);
  }
  sub CreateDeployment {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::CreateDeployment', @_);
  }
  sub CreateInstance {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::CreateInstance', @_);
  }
  sub CreateLayer {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::CreateLayer', @_);
  }
  sub CreateStack {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::CreateStack', @_);
  }
  sub CreateUserProfile {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::CreateUserProfile', @_);
  }
  sub DeleteApp {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DeleteApp', @_);
  }
  sub DeleteInstance {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DeleteInstance', @_);
  }
  sub DeleteLayer {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DeleteLayer', @_);
  }
  sub DeleteStack {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DeleteStack', @_);
  }
  sub DeleteUserProfile {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DeleteUserProfile', @_);
  }
  sub DeregisterElasticIp {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DeregisterElasticIp', @_);
  }
  sub DeregisterVolume {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DeregisterVolume', @_);
  }
  sub DescribeApps {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeApps', @_);
  }
  sub DescribeCommands {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeCommands', @_);
  }
  sub DescribeDeployments {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeDeployments', @_);
  }
  sub DescribeElasticIps {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeElasticIps', @_);
  }
  sub DescribeElasticLoadBalancers {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeElasticLoadBalancers', @_);
  }
  sub DescribeInstances {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeInstances', @_);
  }
  sub DescribeLayers {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeLayers', @_);
  }
  sub DescribeLoadBasedAutoScaling {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeLoadBasedAutoScaling', @_);
  }
  sub DescribeMyUserProfile {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeMyUserProfile', @_);
  }
  sub DescribePermissions {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribePermissions', @_);
  }
  sub DescribeRaidArrays {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeRaidArrays', @_);
  }
  sub DescribeServiceErrors {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeServiceErrors', @_);
  }
  sub DescribeStacks {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeStacks', @_);
  }
  sub DescribeStackSummary {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeStackSummary', @_);
  }
  sub DescribeTimeBasedAutoScaling {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeTimeBasedAutoScaling', @_);
  }
  sub DescribeUserProfiles {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeUserProfiles', @_);
  }
  sub DescribeVolumes {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DescribeVolumes', @_);
  }
  sub DetachElasticLoadBalancer {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DetachElasticLoadBalancer', @_);
  }
  sub DisassociateElasticIp {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::DisassociateElasticIp', @_);
  }
  sub GetHostnameSuggestion {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::GetHostnameSuggestion', @_);
  }
  sub RebootInstance {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::RebootInstance', @_);
  }
  sub RegisterElasticIp {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::RegisterElasticIp', @_);
  }
  sub RegisterVolume {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::RegisterVolume', @_);
  }
  sub SetLoadBasedAutoScaling {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::SetLoadBasedAutoScaling', @_);
  }
  sub SetPermission {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::SetPermission', @_);
  }
  sub SetTimeBasedAutoScaling {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::SetTimeBasedAutoScaling', @_);
  }
  sub StartInstance {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::StartInstance', @_);
  }
  sub StartStack {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::StartStack', @_);
  }
  sub StopInstance {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::StopInstance', @_);
  }
  sub StopStack {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::StopStack', @_);
  }
  sub UnassignVolume {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::UnassignVolume', @_);
  }
  sub UpdateApp {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::UpdateApp', @_);
  }
  sub UpdateElasticIp {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::UpdateElasticIp', @_);
  }
  sub UpdateInstance {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::UpdateInstance', @_);
  }
  sub UpdateLayer {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::UpdateLayer', @_);
  }
  sub UpdateMyUserProfile {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::UpdateMyUserProfile', @_);
  }
  sub UpdateStack {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::UpdateStack', @_);
  }
  sub UpdateUserProfile {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::UpdateUserProfile', @_);
  }
  sub UpdateVolume {
    my $self = shift;
    return $self->do_call('Aws::OpsWorks::UpdateVolume', @_);
  }
}
1;
