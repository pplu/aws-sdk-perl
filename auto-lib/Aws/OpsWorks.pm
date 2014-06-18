
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::OpsWorks::AppType', ['rails','php','nodejs','static','other',];
enum 'Aws::OpsWorks::Architecture', ['x86_64','i386',];
enum 'Aws::OpsWorks::AutoScalingType', ['load','timer',];
enum 'Aws::OpsWorks::DeploymentCommandName', ['install_dependencies','update_dependencies','update_custom_cookbooks','execute_recipes','deploy','rollback','start','stop','restart','undeploy',];
enum 'Aws::OpsWorks::LayerType', ['lb','web','php-app','rails-app','nodejs-app','memcached','db-master','monitoring-master','custom',];
enum 'Aws::OpsWorks::RootDeviceType', ['ebs','instance-store',];
enum 'Aws::OpsWorks::SourceType', ['git','svn','archive','s3',];


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
  has Type => (is => 'ro', isa => 'Aws::OpsWorks::AppType');
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
  has Name => (is => 'ro', isa => 'Aws::OpsWorks::DeploymentCommandName', required => 1);
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
  has Architecture => (is => 'ro', isa => 'Aws::OpsWorks::Architecture');
  has AutoScalingType => (is => 'ro', isa => 'Aws::OpsWorks::AutoScalingType');
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
  has RootDeviceType => (is => 'ro', isa => 'Aws::OpsWorks::RootDeviceType');
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
  has Type => (is => 'ro', isa => 'Aws::OpsWorks::LayerType');
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
  has Type => (is => 'ro', isa => 'Aws::OpsWorks::SourceType');
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
  has DefaultRootDeviceType => (is => 'ro', isa => 'Aws::OpsWorks::RootDeviceType');
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssignVolume');
  has _returns => (isa => 'Aws::OpsWorks::AssignVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssignVolumeResult');  
}
package Aws::OpsWorks::AssociateElasticIp {
  use Moose;
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateElasticIp');
  has _returns => (isa => 'Aws::OpsWorks::AssociateElasticIpResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssociateElasticIpResult');  
}
package Aws::OpsWorks::AttachElasticLoadBalancer {
  use Moose;
  has ElasticLoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LayerId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AttachElasticLoadBalancer');
  has _returns => (isa => 'Aws::OpsWorks::AttachElasticLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AttachElasticLoadBalancerResult');  
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'CloneStack');
  has _returns => (isa => 'Aws::OpsWorks::CloneStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CloneStackResult');  
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApp');
  has _returns => (isa => 'Aws::OpsWorks::CreateAppResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateAppResult');  
}
package Aws::OpsWorks::CreateDeployment {
  use Moose;
  has AppId => (is => 'ro', isa => 'Str');
  has Command => (is => 'ro', isa => 'Aws::OpsWorks::DeploymentCommand', required => 1);
  has Comment => (is => 'ro', isa => 'Str');
  has CustomJson => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeployment');
  has _returns => (isa => 'Aws::OpsWorks::CreateDeploymentResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDeploymentResult');  
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstance');
  has _returns => (isa => 'Aws::OpsWorks::CreateInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateInstanceResult');  
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLayer');
  has _returns => (isa => 'Aws::OpsWorks::CreateLayerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLayerResult');  
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStack');
  has _returns => (isa => 'Aws::OpsWorks::CreateStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStackResult');  
}
package Aws::OpsWorks::CreateUserProfile {
  use Moose;
  has AllowSelfManagement => (is => 'ro', isa => 'Bool');
  has IamUserArn => (is => 'ro', isa => 'Str', required => 1);
  has SshPublicKey => (is => 'ro', isa => 'Str');
  has SshUsername => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUserProfile');
  has _returns => (isa => 'Aws::OpsWorks::CreateUserProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateUserProfileResult');  
}
package Aws::OpsWorks::DeleteApp {
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApp');
  has _returns => (isa => 'Aws::OpsWorks::DeleteAppResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAppResult');  
}
package Aws::OpsWorks::DeleteInstance {
  use Moose;
  has DeleteElasticIp => (is => 'ro', isa => 'Bool');
  has DeleteVolumes => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInstance');
  has _returns => (isa => 'Aws::OpsWorks::DeleteInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteInstanceResult');  
}
package Aws::OpsWorks::DeleteLayer {
  use Moose;
  has LayerId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLayer');
  has _returns => (isa => 'Aws::OpsWorks::DeleteLayerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLayerResult');  
}
package Aws::OpsWorks::DeleteStack {
  use Moose;
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStack');
  has _returns => (isa => 'Aws::OpsWorks::DeleteStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteStackResult');  
}
package Aws::OpsWorks::DeleteUserProfile {
  use Moose;
  has IamUserArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUserProfile');
  has _returns => (isa => 'Aws::OpsWorks::DeleteUserProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteUserProfileResult');  
}
package Aws::OpsWorks::DeregisterElasticIp {
  use Moose;
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterElasticIp');
  has _returns => (isa => 'Aws::OpsWorks::DeregisterElasticIpResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeregisterElasticIpResult');  
}
package Aws::OpsWorks::DeregisterVolume {
  use Moose;
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterVolume');
  has _returns => (isa => 'Aws::OpsWorks::DeregisterVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeregisterVolumeResult');  
}
package Aws::OpsWorks::DescribeApps {
  use Moose;
  has AppIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApps');
  has _returns => (isa => 'Aws::OpsWorks::DescribeAppsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAppsResult');  
}
package Aws::OpsWorks::DescribeCommands {
  use Moose;
  has CommandIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has DeploymentId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCommands');
  has _returns => (isa => 'Aws::OpsWorks::DescribeCommandsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCommandsResult');  
}
package Aws::OpsWorks::DescribeDeployments {
  use Moose;
  has AppId => (is => 'ro', isa => 'Str');
  has DeploymentIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDeployments');
  has _returns => (isa => 'Aws::OpsWorks::DescribeDeploymentsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDeploymentsResult');  
}
package Aws::OpsWorks::DescribeElasticIps {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');
  has Ips => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeElasticIps');
  has _returns => (isa => 'Aws::OpsWorks::DescribeElasticIpsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeElasticIpsResult');  
}
package Aws::OpsWorks::DescribeElasticLoadBalancers {
  use Moose;
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeElasticLoadBalancers');
  has _returns => (isa => 'Aws::OpsWorks::DescribeElasticLoadBalancersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeElasticLoadBalancersResult');  
}
package Aws::OpsWorks::DescribeInstances {
  use Moose;
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has LayerId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstances');
  has _returns => (isa => 'Aws::OpsWorks::DescribeInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInstancesResult');  
}
package Aws::OpsWorks::DescribeLayers {
  use Moose;
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLayers');
  has _returns => (isa => 'Aws::OpsWorks::DescribeLayersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLayersResult');  
}
package Aws::OpsWorks::DescribeLoadBasedAutoScaling {
  use Moose;
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBasedAutoScaling');
  has _returns => (isa => 'Aws::OpsWorks::DescribeLoadBasedAutoScalingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBasedAutoScalingResult');  
}
package Aws::OpsWorks::DescribeMyUserProfile {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMyUserProfile');
  has _returns => (isa => 'Aws::OpsWorks::DescribeMyUserProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeMyUserProfileResult');  
}
package Aws::OpsWorks::DescribePermissions {
  use Moose;
  has IamUserArn => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePermissions');
  has _returns => (isa => 'Aws::OpsWorks::DescribePermissionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribePermissionsResult');  
}
package Aws::OpsWorks::DescribeRaidArrays {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');
  has RaidArrayIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRaidArrays');
  has _returns => (isa => 'Aws::OpsWorks::DescribeRaidArraysResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeRaidArraysResult');  
}
package Aws::OpsWorks::DescribeServiceErrors {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');
  has ServiceErrorIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServiceErrors');
  has _returns => (isa => 'Aws::OpsWorks::DescribeServiceErrorsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeServiceErrorsResult');  
}
package Aws::OpsWorks::DescribeStackSummary {
  use Moose;
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackSummary');
  has _returns => (isa => 'Aws::OpsWorks::DescribeStackSummaryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackSummaryResult');  
}
package Aws::OpsWorks::DescribeStacks {
  use Moose;
  has StackIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStacks');
  has _returns => (isa => 'Aws::OpsWorks::DescribeStacksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStacksResult');  
}
package Aws::OpsWorks::DescribeTimeBasedAutoScaling {
  use Moose;
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTimeBasedAutoScaling');
  has _returns => (isa => 'Aws::OpsWorks::DescribeTimeBasedAutoScalingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTimeBasedAutoScalingResult');  
}
package Aws::OpsWorks::DescribeUserProfiles {
  use Moose;
  has IamUserArns => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUserProfiles');
  has _returns => (isa => 'Aws::OpsWorks::DescribeUserProfilesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeUserProfilesResult');  
}
package Aws::OpsWorks::DescribeVolumes {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');
  has RaidArrayId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has VolumeIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVolumes');
  has _returns => (isa => 'Aws::OpsWorks::DescribeVolumesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVolumesResult');  
}
package Aws::OpsWorks::DetachElasticLoadBalancer {
  use Moose;
  has ElasticLoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LayerId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DetachElasticLoadBalancer');
  has _returns => (isa => 'Aws::OpsWorks::DetachElasticLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DetachElasticLoadBalancerResult');  
}
package Aws::OpsWorks::DisassociateElasticIp {
  use Moose;
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateElasticIp');
  has _returns => (isa => 'Aws::OpsWorks::DisassociateElasticIpResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisassociateElasticIpResult');  
}
package Aws::OpsWorks::GetHostnameSuggestion {
  use Moose;
  has LayerId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetHostnameSuggestion');
  has _returns => (isa => 'Aws::OpsWorks::GetHostnameSuggestionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetHostnameSuggestionResult');  
}
package Aws::OpsWorks::RebootInstance {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RebootInstance');
  has _returns => (isa => 'Aws::OpsWorks::RebootInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RebootInstanceResult');  
}
package Aws::OpsWorks::RegisterElasticIp {
  use Moose;
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterElasticIp');
  has _returns => (isa => 'Aws::OpsWorks::RegisterElasticIpResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterElasticIpResult');  
}
package Aws::OpsWorks::RegisterVolume {
  use Moose;
  has Ec2VolumeId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterVolume');
  has _returns => (isa => 'Aws::OpsWorks::RegisterVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterVolumeResult');  
}
package Aws::OpsWorks::SetLoadBasedAutoScaling {
  use Moose;
  has DownScaling => (is => 'ro', isa => 'Aws::OpsWorks::AutoScalingThresholds');
  has Enable => (is => 'ro', isa => 'Bool');
  has LayerId => (is => 'ro', isa => 'Str', required => 1);
  has UpScaling => (is => 'ro', isa => 'Aws::OpsWorks::AutoScalingThresholds');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBasedAutoScaling');
  has _returns => (isa => 'Aws::OpsWorks::SetLoadBasedAutoScalingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBasedAutoScalingResult');  
}
package Aws::OpsWorks::SetPermission {
  use Moose;
  has AllowSsh => (is => 'ro', isa => 'Bool');
  has AllowSudo => (is => 'ro', isa => 'Bool');
  has IamUserArn => (is => 'ro', isa => 'Str', required => 1);
  has Level => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetPermission');
  has _returns => (isa => 'Aws::OpsWorks::SetPermissionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetPermissionResult');  
}
package Aws::OpsWorks::SetTimeBasedAutoScaling {
  use Moose;
  has AutoScalingSchedule => (is => 'ro', isa => 'Aws::OpsWorks::WeeklyAutoScalingSchedule');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetTimeBasedAutoScaling');
  has _returns => (isa => 'Aws::OpsWorks::SetTimeBasedAutoScalingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetTimeBasedAutoScalingResult');  
}
package Aws::OpsWorks::StartInstance {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StartInstance');
  has _returns => (isa => 'Aws::OpsWorks::StartInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StartInstanceResult');  
}
package Aws::OpsWorks::StartStack {
  use Moose;
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StartStack');
  has _returns => (isa => 'Aws::OpsWorks::StartStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StartStackResult');  
}
package Aws::OpsWorks::StopInstance {
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StopInstance');
  has _returns => (isa => 'Aws::OpsWorks::StopInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StopInstanceResult');  
}
package Aws::OpsWorks::StopStack {
  use Moose;
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StopStack');
  has _returns => (isa => 'Aws::OpsWorks::StopStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StopStackResult');  
}
package Aws::OpsWorks::UnassignVolume {
  use Moose;
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UnassignVolume');
  has _returns => (isa => 'Aws::OpsWorks::UnassignVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UnassignVolumeResult');  
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApp');
  has _returns => (isa => 'Aws::OpsWorks::UpdateAppResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateAppResult');  
}
package Aws::OpsWorks::UpdateElasticIp {
  use Moose;
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateElasticIp');
  has _returns => (isa => 'Aws::OpsWorks::UpdateElasticIpResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateElasticIpResult');  
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInstance');
  has _returns => (isa => 'Aws::OpsWorks::UpdateInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateInstanceResult');  
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLayer');
  has _returns => (isa => 'Aws::OpsWorks::UpdateLayerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateLayerResult');  
}
package Aws::OpsWorks::UpdateMyUserProfile {
  use Moose;
  has SshPublicKey => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMyUserProfile');
  has _returns => (isa => 'Aws::OpsWorks::UpdateMyUserProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateMyUserProfileResult');  
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStack');
  has _returns => (isa => 'Aws::OpsWorks::UpdateStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStackResult');  
}
package Aws::OpsWorks::UpdateUserProfile {
  use Moose;
  has AllowSelfManagement => (is => 'ro', isa => 'Bool');
  has IamUserArn => (is => 'ro', isa => 'Str', required => 1);
  has SshPublicKey => (is => 'ro', isa => 'Str');
  has SshUsername => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUserProfile');
  has _returns => (isa => 'Aws::OpsWorks::UpdateUserProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateUserProfileResult');  
}
package Aws::OpsWorks::UpdateVolume {
  use Moose;
  has MountPoint => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVolume');
  has _returns => (isa => 'Aws::OpsWorks::UpdateVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateVolumeResult');  
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
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::JsonCaller', 'Net::AWS::JsonResponse');
  
  sub AssignVolume {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::AssignVolume', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub AssociateElasticIp {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::AssociateElasticIp', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub AttachElasticLoadBalancer {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::AttachElasticLoadBalancer', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub CloneStack {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::CloneStack', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::CloneStackResult->from_result($result);return $o_result;
  }
  sub CreateApp {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::CreateApp', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::CreateAppResult->from_result($result);return $o_result;
  }
  sub CreateDeployment {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::CreateDeployment', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::CreateDeploymentResult->from_result($result);return $o_result;
  }
  sub CreateInstance {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::CreateInstance', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::CreateInstanceResult->from_result($result);return $o_result;
  }
  sub CreateLayer {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::CreateLayer', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::CreateLayerResult->from_result($result);return $o_result;
  }
  sub CreateStack {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::CreateStack', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::CreateStackResult->from_result($result);return $o_result;
  }
  sub CreateUserProfile {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::CreateUserProfile', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::CreateUserProfileResult->from_result($result);return $o_result;
  }
  sub DeleteApp {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DeleteApp', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteInstance {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DeleteInstance', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteLayer {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DeleteLayer', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteStack {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DeleteStack', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteUserProfile {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DeleteUserProfile', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeregisterElasticIp {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DeregisterElasticIp', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeregisterVolume {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DeregisterVolume', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DescribeApps {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DescribeApps', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeAppsResult->from_result($result);return $o_result;
  }
  sub DescribeCommands {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DescribeCommands', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeCommandsResult->from_result($result);return $o_result;
  }
  sub DescribeDeployments {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DescribeDeployments', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeDeploymentsResult->from_result($result);return $o_result;
  }
  sub DescribeElasticIps {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DescribeElasticIps', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeElasticIpsResult->from_result($result);return $o_result;
  }
  sub DescribeElasticLoadBalancers {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DescribeElasticLoadBalancers', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeElasticLoadBalancersResult->from_result($result);return $o_result;
  }
  sub DescribeInstances {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DescribeInstances', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeInstancesResult->from_result($result);return $o_result;
  }
  sub DescribeLayers {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DescribeLayers', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeLayersResult->from_result($result);return $o_result;
  }
  sub DescribeLoadBasedAutoScaling {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DescribeLoadBasedAutoScaling', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeLoadBasedAutoScalingResult->from_result($result);return $o_result;
  }
  sub DescribeMyUserProfile {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DescribeMyUserProfile', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeMyUserProfileResult->from_result($result);return $o_result;
  }
  sub DescribePermissions {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DescribePermissions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribePermissionsResult->from_result($result);return $o_result;
  }
  sub DescribeRaidArrays {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DescribeRaidArrays', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeRaidArraysResult->from_result($result);return $o_result;
  }
  sub DescribeServiceErrors {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DescribeServiceErrors', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeServiceErrorsResult->from_result($result);return $o_result;
  }
  sub DescribeStacks {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DescribeStacks', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeStacksResult->from_result($result);return $o_result;
  }
  sub DescribeStackSummary {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DescribeStackSummary', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeStackSummaryResult->from_result($result);return $o_result;
  }
  sub DescribeTimeBasedAutoScaling {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DescribeTimeBasedAutoScaling', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeTimeBasedAutoScalingResult->from_result($result);return $o_result;
  }
  sub DescribeUserProfiles {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DescribeUserProfiles', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeUserProfilesResult->from_result($result);return $o_result;
  }
  sub DescribeVolumes {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DescribeVolumes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeVolumesResult->from_result($result);return $o_result;
  }
  sub DetachElasticLoadBalancer {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DetachElasticLoadBalancer', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DisassociateElasticIp {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::DisassociateElasticIp', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub GetHostnameSuggestion {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::GetHostnameSuggestion', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::GetHostnameSuggestionResult->from_result($result);return $o_result;
  }
  sub RebootInstance {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::RebootInstance', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RegisterElasticIp {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::RegisterElasticIp', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::RegisterElasticIpResult->from_result($result);return $o_result;
  }
  sub RegisterVolume {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::RegisterVolume', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::RegisterVolumeResult->from_result($result);return $o_result;
  }
  sub SetLoadBasedAutoScaling {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::SetLoadBasedAutoScaling', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub SetPermission {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::SetPermission', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub SetTimeBasedAutoScaling {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::SetTimeBasedAutoScaling', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub StartInstance {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::StartInstance', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub StartStack {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::StartStack', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub StopInstance {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::StopInstance', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub StopStack {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::StopStack', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UnassignVolume {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::UnassignVolume', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UpdateApp {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::UpdateApp', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UpdateElasticIp {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::UpdateElasticIp', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UpdateInstance {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::UpdateInstance', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UpdateLayer {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::UpdateLayer', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UpdateMyUserProfile {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::UpdateMyUserProfile', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UpdateStack {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::UpdateStack', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UpdateUserProfile {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::UpdateUserProfile', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UpdateVolume {
    my $self = shift;
    my $call = new_with_coercions('Aws::OpsWorks::UpdateVolume', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
}
