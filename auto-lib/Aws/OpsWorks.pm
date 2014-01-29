
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::OpsWorks::AppType', ['rails','php','nodejs','static','other',];
enum 'Aws::OpsWorks::Architecture', ['x86_64','i386',];
enum 'Aws::OpsWorks::AutoScalingType', ['load','timer',];
enum 'Aws::OpsWorks::DeploymentCommandName', ['install_dependencies','update_dependencies','update_custom_cookbooks','execute_recipes','deploy','rollback','start','stop','restart','undeploy',];
enum 'Aws::OpsWorks::LayerType', ['lb','web','php-app','rails-app','nodejs-app','memcached','db-master','monitoring-master','custom',];
enum 'Aws::OpsWorks::RootDeviceType', ['ebs','instance-store',];
enum 'Aws::OpsWorks::SourceType', ['git','svn','archive','s3',];


class Aws::OpsWorks::App with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AppId => (is => 'ro', isa => 'Str');
  has AppSource => (is => 'ro', isa => 'Aws::OpsWorks::Source');
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::AppAttributes');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Domains => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableSsl => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Shortname => (is => 'ro', isa => 'Str');
  has SslConfiguration => (is => 'ro', isa => 'Aws::OpsWorks::SslConfiguration');
  has StackId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Aws::OpsWorks::AppType');
}

class Aws::OpsWorks::AppAttributes with AWS::API::MapParser {
  has AutoBundleOnDeploy => (is => 'ro', isa => 'Str');
  has DocumentRoot => (is => 'ro', isa => 'Str');
  has RailsEnv => (is => 'ro', isa => 'Str');
}

class Aws::OpsWorks::AutoScalingThresholds with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CpuThreshold => (is => 'ro', isa => 'Num');
  has IgnoreMetricsTime => (is => 'ro', isa => 'Int');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has LoadThreshold => (is => 'ro', isa => 'Num');
  has MemoryThreshold => (is => 'ro', isa => 'Num');
  has ThresholdsWaitTime => (is => 'ro', isa => 'Int');
}

class Aws::OpsWorks::Command with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::OpsWorks::Deployment with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::OpsWorks::DeploymentCommand with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Args => (is => 'ro', isa => 'Aws::OpsWorks::DeploymentCommandArgs');
  has Name => (is => 'ro', isa => 'Aws::OpsWorks::DeploymentCommandName', required => 1);
}

class Aws::OpsWorks::ElasticIp with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Domain => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Ip => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
}

class Aws::OpsWorks::ElasticLoadBalancer with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::OpsWorks::Instance with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AmiId => (is => 'ro', isa => 'Str');
  has Architecture => (is => 'ro', isa => 'Aws::OpsWorks::Architecture');
  has AutoScalingType => (is => 'ro', isa => 'Aws::OpsWorks::AutoScalingType');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Ec2InstanceId => (is => 'ro', isa => 'Str');
  has ElasticIp => (is => 'ro', isa => 'Str');
  has Hostname => (is => 'ro', isa => 'Str');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Str');
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

class Aws::OpsWorks::InstancesCount with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Booting => (is => 'ro', isa => 'Int');
  has ConnectionLost => (is => 'ro', isa => 'Int');
  has Pending => (is => 'ro', isa => 'Int');
  has Rebooting => (is => 'ro', isa => 'Int');
  has Requested => (is => 'ro', isa => 'Int');
  has RunningSetup => (is => 'ro', isa => 'Int');
  has SetupFailed => (is => 'ro', isa => 'Int');
  has ShuttingDown => (is => 'ro', isa => 'Int');
  has StartFailed => (is => 'ro', isa => 'Int');
  has Stopped => (is => 'ro', isa => 'Int');
  has Terminated => (is => 'ro', isa => 'Int');
  has Terminating => (is => 'ro', isa => 'Int');
}

class Aws::OpsWorks::Layer with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::LayerAttributes');
  has AutoAssignElasticIps => (is => 'ro', isa => 'Str');
  has AutoAssignPublicIps => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CustomInstanceProfileArn => (is => 'ro', isa => 'Str');
  has CustomRecipes => (is => 'ro', isa => 'Aws::OpsWorks::Recipes');
  has CustomSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has DefaultRecipes => (is => 'ro', isa => 'Aws::OpsWorks::Recipes');
  has DefaultSecurityGroupNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableAutoHealing => (is => 'ro', isa => 'Str');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Str');
  has LayerId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Packages => (is => 'ro', isa => 'ArrayRef[Str]');
  has Shortname => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Aws::OpsWorks::LayerType');
  has VolumeConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::VolumeConfiguration]');
}

class Aws::OpsWorks::LayerAttributes with AWS::API::MapParser {
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

class Aws::OpsWorks::LoadBasedAutoScalingConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DownScaling => (is => 'ro', isa => 'Aws::OpsWorks::AutoScalingThresholds');
  has Enable => (is => 'ro', isa => 'Str');
  has LayerId => (is => 'ro', isa => 'Str');
  has UpScaling => (is => 'ro', isa => 'Aws::OpsWorks::AutoScalingThresholds');
}

class Aws::OpsWorks::Permission with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AllowSsh => (is => 'ro', isa => 'Str');
  has AllowSudo => (is => 'ro', isa => 'Str');
  has IamUserArn => (is => 'ro', isa => 'Str');
  has Level => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
}

class Aws::OpsWorks::RaidArray with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Device => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has MountPoint => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has NumberOfDisks => (is => 'ro', isa => 'Int');
  has RaidArrayId => (is => 'ro', isa => 'Str');
  has RaidLevel => (is => 'ro', isa => 'Int');
  has Size => (is => 'ro', isa => 'Int');
}

class Aws::OpsWorks::Recipes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Configure => (is => 'ro', isa => 'ArrayRef[Str]');
  has Deploy => (is => 'ro', isa => 'ArrayRef[Str]');
  has Setup => (is => 'ro', isa => 'ArrayRef[Str]');
  has Shutdown => (is => 'ro', isa => 'ArrayRef[Str]');
  has Undeploy => (is => 'ro', isa => 'ArrayRef[Str]');
}

class Aws::OpsWorks::SelfUserProfile with (AWS::API::ResultParser, AWS::API::ToParams) {
  has IamUserArn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SshPublicKey => (is => 'ro', isa => 'Str');
  has SshUsername => (is => 'ro', isa => 'Str');
}

class Aws::OpsWorks::ServiceError with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CreatedAt => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has ServiceErrorId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
}

class Aws::OpsWorks::Source with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Password => (is => 'ro', isa => 'Str');
  has Revision => (is => 'ro', isa => 'Str');
  has SshKey => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Aws::OpsWorks::SourceType');
  has Url => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str');
}

class Aws::OpsWorks::SslConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Certificate => (is => 'ro', isa => 'Str', required => 1);
  has Chain => (is => 'ro', isa => 'Str');
  has PrivateKey => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::OpsWorks::Stack with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::StackAttributes');
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
  has UseCustomCookbooks => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
}

class Aws::OpsWorks::StackAttributes with AWS::API::MapParser {
  has Color => (is => 'ro', isa => 'Str');
}

class Aws::OpsWorks::StackConfigurationManager with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
}

class Aws::OpsWorks::StackSummary with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AppsCount => (is => 'ro', isa => 'Int');
  has InstancesCount => (is => 'ro', isa => 'Aws::OpsWorks::InstancesCount');
  has LayersCount => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
}

class Aws::OpsWorks::TimeBasedAutoScalingConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AutoScalingSchedule => (is => 'ro', isa => 'Aws::OpsWorks::WeeklyAutoScalingSchedule');
  has InstanceId => (is => 'ro', isa => 'Str');
}

class Aws::OpsWorks::UserProfile with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AllowSelfManagement => (is => 'ro', isa => 'Str');
  has IamUserArn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SshPublicKey => (is => 'ro', isa => 'Str');
  has SshUsername => (is => 'ro', isa => 'Str');
}

class Aws::OpsWorks::Volume with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has Device => (is => 'ro', isa => 'Str');
  has Ec2VolumeId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has MountPoint => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RaidArrayId => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str');
}

class Aws::OpsWorks::VolumeConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has MountPoint => (is => 'ro', isa => 'Str', required => 1);
  has NumberOfDisks => (is => 'ro', isa => 'Int', required => 1);
  has RaidLevel => (is => 'ro', isa => 'Int');
  has Size => (is => 'ro', isa => 'Int', required => 1);
}

class Aws::OpsWorks::WeeklyAutoScalingSchedule with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Friday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
  has Monday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
  has Saturday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
  has Sunday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
  has Thursday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
  has Tuesday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
  has Wednesday => (is => 'ro', isa => 'Aws::OpsWorks::DailyAutoScalingSchedule');
}



class Aws::OpsWorks::AssignVolume {
  has InstanceId => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssignVolume');
  has _returns => (isa => 'Aws::OpsWorks::AssignVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssignVolumeResult');  
}
class Aws::OpsWorks::AssociateElasticIp {
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateElasticIp');
  has _returns => (isa => 'Aws::OpsWorks::AssociateElasticIpResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssociateElasticIpResult');  
}
class Aws::OpsWorks::AttachElasticLoadBalancer {
  has ElasticLoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LayerId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AttachElasticLoadBalancer');
  has _returns => (isa => 'Aws::OpsWorks::AttachElasticLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AttachElasticLoadBalancerResult');  
}
class Aws::OpsWorks::CloneStack {
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::StackAttributes');
  has CloneAppIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has ClonePermissions => (is => 'ro', isa => 'Str');
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
  has UseCustomCookbooks => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CloneStack');
  has _returns => (isa => 'Aws::OpsWorks::CloneStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CloneStackResult');  
}
class Aws::OpsWorks::CreateApp {
  has AppSource => (is => 'ro', isa => 'Aws::OpsWorks::Source');
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::AppAttributes');
  has Description => (is => 'ro', isa => 'Str');
  has Domains => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableSsl => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Shortname => (is => 'ro', isa => 'Str');
  has SslConfiguration => (is => 'ro', isa => 'Aws::OpsWorks::SslConfiguration');
  has StackId => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApp');
  has _returns => (isa => 'Aws::OpsWorks::CreateAppResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateAppResult');  
}
class Aws::OpsWorks::CreateDeployment {
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
class Aws::OpsWorks::CreateInstance {
  has AmiId => (is => 'ro', isa => 'Str');
  has Architecture => (is => 'ro', isa => 'Str');
  has AutoScalingType => (is => 'ro', isa => 'Str');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has Hostname => (is => 'ro', isa => 'Str');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Str');
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
class Aws::OpsWorks::CreateLayer {
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::LayerAttributes');
  has AutoAssignElasticIps => (is => 'ro', isa => 'Str');
  has AutoAssignPublicIps => (is => 'ro', isa => 'Str');
  has CustomInstanceProfileArn => (is => 'ro', isa => 'Str');
  has CustomRecipes => (is => 'ro', isa => 'Aws::OpsWorks::Recipes');
  has CustomSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableAutoHealing => (is => 'ro', isa => 'Str');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Packages => (is => 'ro', isa => 'ArrayRef[Str]');
  has Shortname => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has VolumeConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::VolumeConfiguration]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLayer');
  has _returns => (isa => 'Aws::OpsWorks::CreateLayerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLayerResult');  
}
class Aws::OpsWorks::CreateStack {
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::StackAttributes');
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
  has UseCustomCookbooks => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStack');
  has _returns => (isa => 'Aws::OpsWorks::CreateStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStackResult');  
}
class Aws::OpsWorks::CreateUserProfile {
  has AllowSelfManagement => (is => 'ro', isa => 'Str');
  has IamUserArn => (is => 'ro', isa => 'Str', required => 1);
  has SshPublicKey => (is => 'ro', isa => 'Str');
  has SshUsername => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUserProfile');
  has _returns => (isa => 'Aws::OpsWorks::CreateUserProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateUserProfileResult');  
}
class Aws::OpsWorks::DeleteApp {
  has AppId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApp');
  has _returns => (isa => 'Aws::OpsWorks::DeleteAppResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAppResult');  
}
class Aws::OpsWorks::DeleteInstance {
  has DeleteElasticIp => (is => 'ro', isa => 'Str');
  has DeleteVolumes => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInstance');
  has _returns => (isa => 'Aws::OpsWorks::DeleteInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteInstanceResult');  
}
class Aws::OpsWorks::DeleteLayer {
  has LayerId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLayer');
  has _returns => (isa => 'Aws::OpsWorks::DeleteLayerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLayerResult');  
}
class Aws::OpsWorks::DeleteStack {
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStack');
  has _returns => (isa => 'Aws::OpsWorks::DeleteStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteStackResult');  
}
class Aws::OpsWorks::DeleteUserProfile {
  has IamUserArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUserProfile');
  has _returns => (isa => 'Aws::OpsWorks::DeleteUserProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteUserProfileResult');  
}
class Aws::OpsWorks::DeregisterElasticIp {
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterElasticIp');
  has _returns => (isa => 'Aws::OpsWorks::DeregisterElasticIpResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeregisterElasticIpResult');  
}
class Aws::OpsWorks::DeregisterVolume {
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterVolume');
  has _returns => (isa => 'Aws::OpsWorks::DeregisterVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeregisterVolumeResult');  
}
class Aws::OpsWorks::DescribeApps {
  has AppIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApps');
  has _returns => (isa => 'Aws::OpsWorks::DescribeAppsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAppsResult');  
}
class Aws::OpsWorks::DescribeCommands {
  has CommandIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has DeploymentId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCommands');
  has _returns => (isa => 'Aws::OpsWorks::DescribeCommandsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCommandsResult');  
}
class Aws::OpsWorks::DescribeDeployments {
  has AppId => (is => 'ro', isa => 'Str');
  has DeploymentIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDeployments');
  has _returns => (isa => 'Aws::OpsWorks::DescribeDeploymentsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDeploymentsResult');  
}
class Aws::OpsWorks::DescribeElasticIps {
  has InstanceId => (is => 'ro', isa => 'Str');
  has Ips => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeElasticIps');
  has _returns => (isa => 'Aws::OpsWorks::DescribeElasticIpsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeElasticIpsResult');  
}
class Aws::OpsWorks::DescribeElasticLoadBalancers {
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeElasticLoadBalancers');
  has _returns => (isa => 'Aws::OpsWorks::DescribeElasticLoadBalancersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeElasticLoadBalancersResult');  
}
class Aws::OpsWorks::DescribeInstances {
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has LayerId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstances');
  has _returns => (isa => 'Aws::OpsWorks::DescribeInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInstancesResult');  
}
class Aws::OpsWorks::DescribeLayers {
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLayers');
  has _returns => (isa => 'Aws::OpsWorks::DescribeLayersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLayersResult');  
}
class Aws::OpsWorks::DescribeLoadBasedAutoScaling {
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBasedAutoScaling');
  has _returns => (isa => 'Aws::OpsWorks::DescribeLoadBasedAutoScalingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBasedAutoScalingResult');  
}
class Aws::OpsWorks::DescribeMyUserProfile {

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMyUserProfile');
  has _returns => (isa => 'Aws::OpsWorks::DescribeMyUserProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeMyUserProfileResult');  
}
class Aws::OpsWorks::DescribePermissions {
  has IamUserArn => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePermissions');
  has _returns => (isa => 'Aws::OpsWorks::DescribePermissionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribePermissionsResult');  
}
class Aws::OpsWorks::DescribeRaidArrays {
  has InstanceId => (is => 'ro', isa => 'Str');
  has RaidArrayIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRaidArrays');
  has _returns => (isa => 'Aws::OpsWorks::DescribeRaidArraysResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeRaidArraysResult');  
}
class Aws::OpsWorks::DescribeServiceErrors {
  has InstanceId => (is => 'ro', isa => 'Str');
  has ServiceErrorIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServiceErrors');
  has _returns => (isa => 'Aws::OpsWorks::DescribeServiceErrorsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeServiceErrorsResult');  
}
class Aws::OpsWorks::DescribeStackSummary {
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackSummary');
  has _returns => (isa => 'Aws::OpsWorks::DescribeStackSummaryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackSummaryResult');  
}
class Aws::OpsWorks::DescribeStacks {
  has StackIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStacks');
  has _returns => (isa => 'Aws::OpsWorks::DescribeStacksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStacksResult');  
}
class Aws::OpsWorks::DescribeTimeBasedAutoScaling {
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTimeBasedAutoScaling');
  has _returns => (isa => 'Aws::OpsWorks::DescribeTimeBasedAutoScalingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTimeBasedAutoScalingResult');  
}
class Aws::OpsWorks::DescribeUserProfiles {
  has IamUserArns => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUserProfiles');
  has _returns => (isa => 'Aws::OpsWorks::DescribeUserProfilesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeUserProfilesResult');  
}
class Aws::OpsWorks::DescribeVolumes {
  has InstanceId => (is => 'ro', isa => 'Str');
  has RaidArrayId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has VolumeIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVolumes');
  has _returns => (isa => 'Aws::OpsWorks::DescribeVolumesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVolumesResult');  
}
class Aws::OpsWorks::DetachElasticLoadBalancer {
  has ElasticLoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LayerId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DetachElasticLoadBalancer');
  has _returns => (isa => 'Aws::OpsWorks::DetachElasticLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DetachElasticLoadBalancerResult');  
}
class Aws::OpsWorks::DisassociateElasticIp {
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateElasticIp');
  has _returns => (isa => 'Aws::OpsWorks::DisassociateElasticIpResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisassociateElasticIpResult');  
}
class Aws::OpsWorks::GetHostnameSuggestion {
  has LayerId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetHostnameSuggestion');
  has _returns => (isa => 'Aws::OpsWorks::GetHostnameSuggestionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetHostnameSuggestionResult');  
}
class Aws::OpsWorks::RebootInstance {
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RebootInstance');
  has _returns => (isa => 'Aws::OpsWorks::RebootInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RebootInstanceResult');  
}
class Aws::OpsWorks::RegisterElasticIp {
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterElasticIp');
  has _returns => (isa => 'Aws::OpsWorks::RegisterElasticIpResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterElasticIpResult');  
}
class Aws::OpsWorks::RegisterVolume {
  has Ec2VolumeId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterVolume');
  has _returns => (isa => 'Aws::OpsWorks::RegisterVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterVolumeResult');  
}
class Aws::OpsWorks::SetLoadBasedAutoScaling {
  has DownScaling => (is => 'ro', isa => 'Aws::OpsWorks::AutoScalingThresholds');
  has Enable => (is => 'ro', isa => 'Str');
  has LayerId => (is => 'ro', isa => 'Str', required => 1);
  has UpScaling => (is => 'ro', isa => 'Aws::OpsWorks::AutoScalingThresholds');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBasedAutoScaling');
  has _returns => (isa => 'Aws::OpsWorks::SetLoadBasedAutoScalingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBasedAutoScalingResult');  
}
class Aws::OpsWorks::SetPermission {
  has AllowSsh => (is => 'ro', isa => 'Str');
  has AllowSudo => (is => 'ro', isa => 'Str');
  has IamUserArn => (is => 'ro', isa => 'Str', required => 1);
  has Level => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetPermission');
  has _returns => (isa => 'Aws::OpsWorks::SetPermissionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetPermissionResult');  
}
class Aws::OpsWorks::SetTimeBasedAutoScaling {
  has AutoScalingSchedule => (is => 'ro', isa => 'Aws::OpsWorks::WeeklyAutoScalingSchedule');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetTimeBasedAutoScaling');
  has _returns => (isa => 'Aws::OpsWorks::SetTimeBasedAutoScalingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetTimeBasedAutoScalingResult');  
}
class Aws::OpsWorks::StartInstance {
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StartInstance');
  has _returns => (isa => 'Aws::OpsWorks::StartInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StartInstanceResult');  
}
class Aws::OpsWorks::StartStack {
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StartStack');
  has _returns => (isa => 'Aws::OpsWorks::StartStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StartStackResult');  
}
class Aws::OpsWorks::StopInstance {
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StopInstance');
  has _returns => (isa => 'Aws::OpsWorks::StopInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StopInstanceResult');  
}
class Aws::OpsWorks::StopStack {
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StopStack');
  has _returns => (isa => 'Aws::OpsWorks::StopStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StopStackResult');  
}
class Aws::OpsWorks::UnassignVolume {
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UnassignVolume');
  has _returns => (isa => 'Aws::OpsWorks::UnassignVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UnassignVolumeResult');  
}
class Aws::OpsWorks::UpdateApp {
  has AppId => (is => 'ro', isa => 'Str', required => 1);
  has AppSource => (is => 'ro', isa => 'Aws::OpsWorks::Source');
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::AppAttributes');
  has Description => (is => 'ro', isa => 'Str');
  has Domains => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableSsl => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SslConfiguration => (is => 'ro', isa => 'Aws::OpsWorks::SslConfiguration');
  has Type => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApp');
  has _returns => (isa => 'Aws::OpsWorks::UpdateAppResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateAppResult');  
}
class Aws::OpsWorks::UpdateElasticIp {
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateElasticIp');
  has _returns => (isa => 'Aws::OpsWorks::UpdateElasticIpResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateElasticIpResult');  
}
class Aws::OpsWorks::UpdateInstance {
  has AmiId => (is => 'ro', isa => 'Str');
  has Architecture => (is => 'ro', isa => 'Str');
  has AutoScalingType => (is => 'ro', isa => 'Str');
  has Hostname => (is => 'ro', isa => 'Str');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str');
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has Os => (is => 'ro', isa => 'Str');
  has SshKeyName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInstance');
  has _returns => (isa => 'Aws::OpsWorks::UpdateInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateInstanceResult');  
}
class Aws::OpsWorks::UpdateLayer {
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::LayerAttributes');
  has AutoAssignElasticIps => (is => 'ro', isa => 'Str');
  has AutoAssignPublicIps => (is => 'ro', isa => 'Str');
  has CustomInstanceProfileArn => (is => 'ro', isa => 'Str');
  has CustomRecipes => (is => 'ro', isa => 'Aws::OpsWorks::Recipes');
  has CustomSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableAutoHealing => (is => 'ro', isa => 'Str');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Str');
  has LayerId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has Packages => (is => 'ro', isa => 'ArrayRef[Str]');
  has Shortname => (is => 'ro', isa => 'Str');
  has VolumeConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::VolumeConfiguration]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLayer');
  has _returns => (isa => 'Aws::OpsWorks::UpdateLayerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateLayerResult');  
}
class Aws::OpsWorks::UpdateMyUserProfile {
  has SshPublicKey => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMyUserProfile');
  has _returns => (isa => 'Aws::OpsWorks::UpdateMyUserProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateMyUserProfileResult');  
}
class Aws::OpsWorks::UpdateStack {
  has Attributes => (is => 'ro', isa => 'Aws::OpsWorks::StackAttributes');
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
  has UseCustomCookbooks => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStack');
  has _returns => (isa => 'Aws::OpsWorks::UpdateStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStackResult');  
}
class Aws::OpsWorks::UpdateUserProfile {
  has AllowSelfManagement => (is => 'ro', isa => 'Str');
  has IamUserArn => (is => 'ro', isa => 'Str', required => 1);
  has SshPublicKey => (is => 'ro', isa => 'Str');
  has SshUsername => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUserProfile');
  has _returns => (isa => 'Aws::OpsWorks::UpdateUserProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateUserProfileResult');  
}
class Aws::OpsWorks::UpdateVolume {
  has MountPoint => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVolume');
  has _returns => (isa => 'Aws::OpsWorks::UpdateVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateVolumeResult');  
}

class Aws::OpsWorks::CloneStackResult with AWS::API::ResultParser {
  has StackId => (is => 'ro', isa => 'Str');

}
class Aws::OpsWorks::CreateAppResult with AWS::API::ResultParser {
  has AppId => (is => 'ro', isa => 'Str');

}
class Aws::OpsWorks::CreateDeploymentResult with AWS::API::ResultParser {
  has DeploymentId => (is => 'ro', isa => 'Str');

}
class Aws::OpsWorks::CreateInstanceResult with AWS::API::ResultParser {
  has InstanceId => (is => 'ro', isa => 'Str');

}
class Aws::OpsWorks::CreateLayerResult with AWS::API::ResultParser {
  has LayerId => (is => 'ro', isa => 'Str');

}
class Aws::OpsWorks::CreateStackResult with AWS::API::ResultParser {
  has StackId => (is => 'ro', isa => 'Str');

}
class Aws::OpsWorks::CreateUserProfileResult with AWS::API::ResultParser {
  has IamUserArn => (is => 'ro', isa => 'Str');

}
class Aws::OpsWorks::DescribeAppsResult with AWS::API::ResultParser {
  has Apps => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::App]');

}
class Aws::OpsWorks::DescribeCommandsResult with AWS::API::ResultParser {
  has Commands => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Command]');

}
class Aws::OpsWorks::DescribeDeploymentsResult with AWS::API::ResultParser {
  has Deployments => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Deployment]');

}
class Aws::OpsWorks::DescribeElasticIpsResult with AWS::API::ResultParser {
  has ElasticIps => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::ElasticIp]');

}
class Aws::OpsWorks::DescribeElasticLoadBalancersResult with AWS::API::ResultParser {
  has ElasticLoadBalancers => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::ElasticLoadBalancer]');

}
class Aws::OpsWorks::DescribeInstancesResult with AWS::API::ResultParser {
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Instance]');

}
class Aws::OpsWorks::DescribeLayersResult with AWS::API::ResultParser {
  has Layers => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Layer]');

}
class Aws::OpsWorks::DescribeLoadBasedAutoScalingResult with AWS::API::ResultParser {
  has LoadBasedAutoScalingConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::LoadBasedAutoScalingConfiguration]');

}
class Aws::OpsWorks::DescribeMyUserProfileResult with AWS::API::ResultParser {
  has UserProfile => (is => 'ro', isa => 'Aws::OpsWorks::SelfUserProfile');

}
class Aws::OpsWorks::DescribePermissionsResult with AWS::API::ResultParser {
  has Permissions => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Permission]');

}
class Aws::OpsWorks::DescribeRaidArraysResult with AWS::API::ResultParser {
  has RaidArrays => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::RaidArray]');

}
class Aws::OpsWorks::DescribeServiceErrorsResult with AWS::API::ResultParser {
  has ServiceErrors => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::ServiceError]');

}
class Aws::OpsWorks::DescribeStackSummaryResult with AWS::API::ResultParser {
  has StackSummary => (is => 'ro', isa => 'Aws::OpsWorks::StackSummary');

}
class Aws::OpsWorks::DescribeStacksResult with AWS::API::ResultParser {
  has Stacks => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Stack]');

}
class Aws::OpsWorks::DescribeTimeBasedAutoScalingResult with AWS::API::ResultParser {
  has TimeBasedAutoScalingConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::TimeBasedAutoScalingConfiguration]');

}
class Aws::OpsWorks::DescribeUserProfilesResult with AWS::API::ResultParser {
  has UserProfiles => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::UserProfile]');

}
class Aws::OpsWorks::DescribeVolumesResult with AWS::API::ResultParser {
  has Volumes => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::Volume]');

}
class Aws::OpsWorks::GetHostnameSuggestionResult with AWS::API::ResultParser {
  has Hostname => (is => 'ro', isa => 'Str');
  has LayerId => (is => 'ro', isa => 'Str');

}
class Aws::OpsWorks::RegisterElasticIpResult with AWS::API::ResultParser {
  has ElasticIp => (is => 'ro', isa => 'Str');

}
class Aws::OpsWorks::RegisterVolumeResult with AWS::API::ResultParser {
  has VolumeId => (is => 'ro', isa => 'Str');

}

class Aws::OpsWorks with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::JsonCaller, Net::AWS::JsonResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'opsworks');
  has version => (is => 'ro', isa => 'Str', default => '2013-02-18');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'OpsWorks_20130218');

  
  method AssignVolume (%args) {
    my $call = Aws::OpsWorks::AssignVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method AssociateElasticIp (%args) {
    my $call = Aws::OpsWorks::AssociateElasticIp->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method AttachElasticLoadBalancer (%args) {
    my $call = Aws::OpsWorks::AttachElasticLoadBalancer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method CloneStack (%args) {
    my $call = Aws::OpsWorks::CloneStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::CloneStackResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateApp (%args) {
    my $call = Aws::OpsWorks::CreateApp->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::CreateAppResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateDeployment (%args) {
    my $call = Aws::OpsWorks::CreateDeployment->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::CreateDeploymentResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateInstance (%args) {
    my $call = Aws::OpsWorks::CreateInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::CreateInstanceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateLayer (%args) {
    my $call = Aws::OpsWorks::CreateLayer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::CreateLayerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateStack (%args) {
    my $call = Aws::OpsWorks::CreateStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::CreateStackResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateUserProfile (%args) {
    my $call = Aws::OpsWorks::CreateUserProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::CreateUserProfileResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteApp (%args) {
    my $call = Aws::OpsWorks::DeleteApp->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteInstance (%args) {
    my $call = Aws::OpsWorks::DeleteInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteLayer (%args) {
    my $call = Aws::OpsWorks::DeleteLayer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteStack (%args) {
    my $call = Aws::OpsWorks::DeleteStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteUserProfile (%args) {
    my $call = Aws::OpsWorks::DeleteUserProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeregisterElasticIp (%args) {
    my $call = Aws::OpsWorks::DeregisterElasticIp->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeregisterVolume (%args) {
    my $call = Aws::OpsWorks::DeregisterVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DescribeApps (%args) {
    my $call = Aws::OpsWorks::DescribeApps->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeAppsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeCommands (%args) {
    my $call = Aws::OpsWorks::DescribeCommands->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeCommandsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeDeployments (%args) {
    my $call = Aws::OpsWorks::DescribeDeployments->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeDeploymentsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeElasticIps (%args) {
    my $call = Aws::OpsWorks::DescribeElasticIps->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeElasticIpsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeElasticLoadBalancers (%args) {
    my $call = Aws::OpsWorks::DescribeElasticLoadBalancers->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeElasticLoadBalancersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeInstances (%args) {
    my $call = Aws::OpsWorks::DescribeInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeLayers (%args) {
    my $call = Aws::OpsWorks::DescribeLayers->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeLayersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeLoadBasedAutoScaling (%args) {
    my $call = Aws::OpsWorks::DescribeLoadBasedAutoScaling->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeLoadBasedAutoScalingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeMyUserProfile (%args) {
    my $call = Aws::OpsWorks::DescribeMyUserProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeMyUserProfileResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribePermissions (%args) {
    my $call = Aws::OpsWorks::DescribePermissions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribePermissionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeRaidArrays (%args) {
    my $call = Aws::OpsWorks::DescribeRaidArrays->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeRaidArraysResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeServiceErrors (%args) {
    my $call = Aws::OpsWorks::DescribeServiceErrors->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeServiceErrorsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeStacks (%args) {
    my $call = Aws::OpsWorks::DescribeStacks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeStacksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeStackSummary (%args) {
    my $call = Aws::OpsWorks::DescribeStackSummary->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeStackSummaryResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeTimeBasedAutoScaling (%args) {
    my $call = Aws::OpsWorks::DescribeTimeBasedAutoScaling->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeTimeBasedAutoScalingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeUserProfiles (%args) {
    my $call = Aws::OpsWorks::DescribeUserProfiles->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeUserProfilesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeVolumes (%args) {
    my $call = Aws::OpsWorks::DescribeVolumes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::DescribeVolumesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DetachElasticLoadBalancer (%args) {
    my $call = Aws::OpsWorks::DetachElasticLoadBalancer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DisassociateElasticIp (%args) {
    my $call = Aws::OpsWorks::DisassociateElasticIp->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method GetHostnameSuggestion (%args) {
    my $call = Aws::OpsWorks::GetHostnameSuggestion->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::GetHostnameSuggestionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RebootInstance (%args) {
    my $call = Aws::OpsWorks::RebootInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RegisterElasticIp (%args) {
    my $call = Aws::OpsWorks::RegisterElasticIp->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::RegisterElasticIpResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RegisterVolume (%args) {
    my $call = Aws::OpsWorks::RegisterVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::OpsWorks::RegisterVolumeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SetLoadBasedAutoScaling (%args) {
    my $call = Aws::OpsWorks::SetLoadBasedAutoScaling->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SetPermission (%args) {
    my $call = Aws::OpsWorks::SetPermission->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SetTimeBasedAutoScaling (%args) {
    my $call = Aws::OpsWorks::SetTimeBasedAutoScaling->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method StartInstance (%args) {
    my $call = Aws::OpsWorks::StartInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method StartStack (%args) {
    my $call = Aws::OpsWorks::StartStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method StopInstance (%args) {
    my $call = Aws::OpsWorks::StopInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method StopStack (%args) {
    my $call = Aws::OpsWorks::StopStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UnassignVolume (%args) {
    my $call = Aws::OpsWorks::UnassignVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateApp (%args) {
    my $call = Aws::OpsWorks::UpdateApp->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateElasticIp (%args) {
    my $call = Aws::OpsWorks::UpdateElasticIp->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateInstance (%args) {
    my $call = Aws::OpsWorks::UpdateInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateLayer (%args) {
    my $call = Aws::OpsWorks::UpdateLayer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateMyUserProfile (%args) {
    my $call = Aws::OpsWorks::UpdateMyUserProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateStack (%args) {
    my $call = Aws::OpsWorks::UpdateStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateUserProfile (%args) {
    my $call = Aws::OpsWorks::UpdateUserProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateVolume (%args) {
    my $call = Aws::OpsWorks::UpdateVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
}
