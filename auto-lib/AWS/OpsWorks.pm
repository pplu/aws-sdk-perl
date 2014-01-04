
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'AWS::OpsWorks::AppType', [qw(rails php nodejs static other )];
enum 'AWS::OpsWorks::Architecture', [qw(x86_64 i386 )];
enum 'AWS::OpsWorks::AutoScalingType', [qw(load timer )];
enum 'AWS::OpsWorks::DeploymentCommandName', [qw(install_dependencies update_dependencies update_custom_cookbooks execute_recipes deploy rollback start stop restart undeploy )];
enum 'AWS::OpsWorks::LayerType', [qw(lb web php-app rails-app nodejs-app memcached db-master monitoring-master custom )];
enum 'AWS::OpsWorks::RootDeviceType', [qw(ebs instance-store )];
enum 'AWS::OpsWorks::SourceType', [qw(git svn archive s3 )];


class AWS::OpsWorks::App with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AppId => (is => 'ro', isa => 'Str');
  has AppSource => (is => 'ro', isa => 'AWS::OpsWorks::Source');
  has Attributes => (is => 'ro', isa => 'AWS::OpsWorks::AppAttributes');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Domains => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableSsl => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Shortname => (is => 'ro', isa => 'Str');
  has SslConfiguration => (is => 'ro', isa => 'AWS::OpsWorks::SslConfiguration');
  has StackId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'AWS::OpsWorks::AppType');
}

class AWS::OpsWorks::AppAttributes with AWS::API::MapParser {
  has AutoBundleOnDeploy => (is => 'ro', isa => 'Str');
  has DocumentRoot => (is => 'ro', isa => 'Str');
  has RailsEnv => (is => 'ro', isa => 'Str');
}

class AWS::OpsWorks::AutoScalingThresholds with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CpuThreshold => (is => 'ro', isa => 'Num');
  has IgnoreMetricsTime => (is => 'ro', isa => 'Int');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has LoadThreshold => (is => 'ro', isa => 'Num');
  has MemoryThreshold => (is => 'ro', isa => 'Num');
  has ThresholdsWaitTime => (is => 'ro', isa => 'Int');
}

class AWS::OpsWorks::Command with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class AWS::OpsWorks::DailyAutoScalingSchedule with AWS::API::MapParser {
class AWS::OpsWorks::Deployment with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AppId => (is => 'ro', isa => 'Str');
  has Command => (is => 'ro', isa => 'AWS::OpsWorks::DeploymentCommand');
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

class AWS::OpsWorks::DeploymentCommand with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Args => (is => 'ro', isa => 'AWS::OpsWorks::DeploymentCommandArgs');
  has Name => (is => 'ro', isa => 'AWS::OpsWorks::DeploymentCommandName', required => 1);
}

class AWS::OpsWorks::DeploymentCommandArgs with AWS::API::MapParser {
class AWS::OpsWorks::ElasticIp with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Domain => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Ip => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
}

class AWS::OpsWorks::ElasticLoadBalancer with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class AWS::OpsWorks::Instance with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AmiId => (is => 'ro', isa => 'Str');
  has Architecture => (is => 'ro', isa => 'AWS::OpsWorks::Architecture');
  has AutoScalingType => (is => 'ro', isa => 'AWS::OpsWorks::AutoScalingType');
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
  has RootDeviceType => (is => 'ro', isa => 'AWS::OpsWorks::RootDeviceType');
  has RootDeviceVolumeId => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has SshHostDsaKeyFingerprint => (is => 'ro', isa => 'Str');
  has SshHostRsaKeyFingerprint => (is => 'ro', isa => 'Str');
  has SshKeyName => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
}

class AWS::OpsWorks::InstancesCount with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class AWS::OpsWorks::Layer with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Attributes => (is => 'ro', isa => 'AWS::OpsWorks::LayerAttributes');
  has AutoAssignElasticIps => (is => 'ro', isa => 'Str');
  has AutoAssignPublicIps => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CustomInstanceProfileArn => (is => 'ro', isa => 'Str');
  has CustomRecipes => (is => 'ro', isa => 'AWS::OpsWorks::Recipes');
  has CustomSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has DefaultRecipes => (is => 'ro', isa => 'AWS::OpsWorks::Recipes');
  has DefaultSecurityGroupNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableAutoHealing => (is => 'ro', isa => 'Str');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Str');
  has LayerId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Packages => (is => 'ro', isa => 'ArrayRef[Str]');
  has Shortname => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'AWS::OpsWorks::LayerType');
  has VolumeConfigurations => (is => 'ro', isa => 'ArrayRef[AWS::OpsWorks::VolumeConfiguration]');
}

class AWS::OpsWorks::LayerAttributes with AWS::API::MapParser {
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

class AWS::OpsWorks::LoadBasedAutoScalingConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DownScaling => (is => 'ro', isa => 'AWS::OpsWorks::AutoScalingThresholds');
  has Enable => (is => 'ro', isa => 'Str');
  has LayerId => (is => 'ro', isa => 'Str');
  has UpScaling => (is => 'ro', isa => 'AWS::OpsWorks::AutoScalingThresholds');
}

class AWS::OpsWorks::Permission with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AllowSsh => (is => 'ro', isa => 'Str');
  has AllowSudo => (is => 'ro', isa => 'Str');
  has IamUserArn => (is => 'ro', isa => 'Str');
  has Level => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
}

class AWS::OpsWorks::RaidArray with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class AWS::OpsWorks::Recipes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Configure => (is => 'ro', isa => 'ArrayRef[Str]');
  has Deploy => (is => 'ro', isa => 'ArrayRef[Str]');
  has Setup => (is => 'ro', isa => 'ArrayRef[Str]');
  has Shutdown => (is => 'ro', isa => 'ArrayRef[Str]');
  has Undeploy => (is => 'ro', isa => 'ArrayRef[Str]');
}

class AWS::OpsWorks::SelfUserProfile with (AWS::API::ResultParser, AWS::API::ToParams) {
  has IamUserArn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SshPublicKey => (is => 'ro', isa => 'Str');
  has SshUsername => (is => 'ro', isa => 'Str');
}

class AWS::OpsWorks::ServiceError with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CreatedAt => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has ServiceErrorId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
}

class AWS::OpsWorks::Source with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Password => (is => 'ro', isa => 'Str');
  has Revision => (is => 'ro', isa => 'Str');
  has SshKey => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'AWS::OpsWorks::SourceType');
  has Url => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str');
}

class AWS::OpsWorks::SslConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Certificate => (is => 'ro', isa => 'Str', required => 1);
  has Chain => (is => 'ro', isa => 'Str');
  has PrivateKey => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::OpsWorks::Stack with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Attributes => (is => 'ro', isa => 'AWS::OpsWorks::StackAttributes');
  has ConfigurationManager => (is => 'ro', isa => 'AWS::OpsWorks::StackConfigurationManager');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CustomCookbooksSource => (is => 'ro', isa => 'AWS::OpsWorks::Source');
  has CustomJson => (is => 'ro', isa => 'Str');
  has DefaultAvailabilityZone => (is => 'ro', isa => 'Str');
  has DefaultInstanceProfileArn => (is => 'ro', isa => 'Str');
  has DefaultOs => (is => 'ro', isa => 'Str');
  has DefaultRootDeviceType => (is => 'ro', isa => 'AWS::OpsWorks::RootDeviceType');
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

class AWS::OpsWorks::StackAttributes with AWS::API::MapParser {
  has Color => (is => 'ro', isa => 'Str');
}

class AWS::OpsWorks::StackConfigurationManager with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
}

class AWS::OpsWorks::StackSummary with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AppsCount => (is => 'ro', isa => 'Int');
  has InstancesCount => (is => 'ro', isa => 'AWS::OpsWorks::InstancesCount');
  has LayersCount => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
}

class AWS::OpsWorks::TimeBasedAutoScalingConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AutoScalingSchedule => (is => 'ro', isa => 'AWS::OpsWorks::WeeklyAutoScalingSchedule');
  has InstanceId => (is => 'ro', isa => 'Str');
}

class AWS::OpsWorks::UserProfile with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AllowSelfManagement => (is => 'ro', isa => 'Str');
  has IamUserArn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SshPublicKey => (is => 'ro', isa => 'Str');
  has SshUsername => (is => 'ro', isa => 'Str');
}

class AWS::OpsWorks::Volume with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class AWS::OpsWorks::VolumeConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has MountPoint => (is => 'ro', isa => 'Str', required => 1);
  has NumberOfDisks => (is => 'ro', isa => 'Int', required => 1);
  has RaidLevel => (is => 'ro', isa => 'Int');
  has Size => (is => 'ro', isa => 'Int', required => 1);
}

class AWS::OpsWorks::WeeklyAutoScalingSchedule with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Friday => (is => 'ro', isa => 'AWS::OpsWorks::DailyAutoScalingSchedule');
  has Monday => (is => 'ro', isa => 'AWS::OpsWorks::DailyAutoScalingSchedule');
  has Saturday => (is => 'ro', isa => 'AWS::OpsWorks::DailyAutoScalingSchedule');
  has Sunday => (is => 'ro', isa => 'AWS::OpsWorks::DailyAutoScalingSchedule');
  has Thursday => (is => 'ro', isa => 'AWS::OpsWorks::DailyAutoScalingSchedule');
  has Tuesday => (is => 'ro', isa => 'AWS::OpsWorks::DailyAutoScalingSchedule');
  has Wednesday => (is => 'ro', isa => 'AWS::OpsWorks::DailyAutoScalingSchedule');
}



class AWS::OpsWorks::AssignVolume {
  has InstanceId => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssignVolume');
  has _returns => (isa => 'AWS::OpsWorks::AssignVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssignVolumeResult');  
}
class AWS::OpsWorks::AssociateElasticIp {
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateElasticIp');
  has _returns => (isa => 'AWS::OpsWorks::AssociateElasticIpResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssociateElasticIpResult');  
}
class AWS::OpsWorks::AttachElasticLoadBalancer {
  has ElasticLoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LayerId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AttachElasticLoadBalancer');
  has _returns => (isa => 'AWS::OpsWorks::AttachElasticLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AttachElasticLoadBalancerResult');  
}
class AWS::OpsWorks::CloneStack {
  has Attributes => (is => 'ro', isa => 'AWS::OpsWorks::StackAttributes');
  has CloneAppIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has ClonePermissions => (is => 'ro', isa => 'Str');
  has ConfigurationManager => (is => 'ro', isa => 'AWS::OpsWorks::StackConfigurationManager');
  has CustomCookbooksSource => (is => 'ro', isa => 'AWS::OpsWorks::Source');
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
  has _returns => (isa => 'AWS::OpsWorks::CloneStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CloneStackResult');  
}
class AWS::OpsWorks::CreateApp {
  has AppSource => (is => 'ro', isa => 'AWS::OpsWorks::Source');
  has Attributes => (is => 'ro', isa => 'AWS::OpsWorks::AppAttributes');
  has Description => (is => 'ro', isa => 'Str');
  has Domains => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableSsl => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Shortname => (is => 'ro', isa => 'Str');
  has SslConfiguration => (is => 'ro', isa => 'AWS::OpsWorks::SslConfiguration');
  has StackId => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApp');
  has _returns => (isa => 'AWS::OpsWorks::CreateAppResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateAppResult');  
}
class AWS::OpsWorks::CreateDeployment {
  has AppId => (is => 'ro', isa => 'Str');
  has Command => (is => 'ro', isa => 'AWS::OpsWorks::DeploymentCommand', required => 1);
  has Comment => (is => 'ro', isa => 'Str');
  has CustomJson => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeployment');
  has _returns => (isa => 'AWS::OpsWorks::CreateDeploymentResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDeploymentResult');  
}
class AWS::OpsWorks::CreateInstance {
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
  has _returns => (isa => 'AWS::OpsWorks::CreateInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateInstanceResult');  
}
class AWS::OpsWorks::CreateLayer {
  has Attributes => (is => 'ro', isa => 'AWS::OpsWorks::LayerAttributes');
  has AutoAssignElasticIps => (is => 'ro', isa => 'Str');
  has AutoAssignPublicIps => (is => 'ro', isa => 'Str');
  has CustomInstanceProfileArn => (is => 'ro', isa => 'Str');
  has CustomRecipes => (is => 'ro', isa => 'AWS::OpsWorks::Recipes');
  has CustomSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableAutoHealing => (is => 'ro', isa => 'Str');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Packages => (is => 'ro', isa => 'ArrayRef[Str]');
  has Shortname => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has VolumeConfigurations => (is => 'ro', isa => 'ArrayRef[AWS::OpsWorks::VolumeConfiguration]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLayer');
  has _returns => (isa => 'AWS::OpsWorks::CreateLayerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLayerResult');  
}
class AWS::OpsWorks::CreateStack {
  has Attributes => (is => 'ro', isa => 'AWS::OpsWorks::StackAttributes');
  has ConfigurationManager => (is => 'ro', isa => 'AWS::OpsWorks::StackConfigurationManager');
  has CustomCookbooksSource => (is => 'ro', isa => 'AWS::OpsWorks::Source');
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
  has _returns => (isa => 'AWS::OpsWorks::CreateStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStackResult');  
}
class AWS::OpsWorks::CreateUserProfile {
  has AllowSelfManagement => (is => 'ro', isa => 'Str');
  has IamUserArn => (is => 'ro', isa => 'Str', required => 1);
  has SshPublicKey => (is => 'ro', isa => 'Str');
  has SshUsername => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUserProfile');
  has _returns => (isa => 'AWS::OpsWorks::CreateUserProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateUserProfileResult');  
}
class AWS::OpsWorks::DeleteApp {
  has AppId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApp');
  has _returns => (isa => 'AWS::OpsWorks::DeleteAppResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAppResult');  
}
class AWS::OpsWorks::DeleteInstance {
  has DeleteElasticIp => (is => 'ro', isa => 'Str');
  has DeleteVolumes => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInstance');
  has _returns => (isa => 'AWS::OpsWorks::DeleteInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteInstanceResult');  
}
class AWS::OpsWorks::DeleteLayer {
  has LayerId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLayer');
  has _returns => (isa => 'AWS::OpsWorks::DeleteLayerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLayerResult');  
}
class AWS::OpsWorks::DeleteStack {
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStack');
  has _returns => (isa => 'AWS::OpsWorks::DeleteStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteStackResult');  
}
class AWS::OpsWorks::DeleteUserProfile {
  has IamUserArn => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUserProfile');
  has _returns => (isa => 'AWS::OpsWorks::DeleteUserProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteUserProfileResult');  
}
class AWS::OpsWorks::DeregisterElasticIp {
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterElasticIp');
  has _returns => (isa => 'AWS::OpsWorks::DeregisterElasticIpResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeregisterElasticIpResult');  
}
class AWS::OpsWorks::DeregisterVolume {
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterVolume');
  has _returns => (isa => 'AWS::OpsWorks::DeregisterVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeregisterVolumeResult');  
}
class AWS::OpsWorks::DescribeApps {
  has AppIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApps');
  has _returns => (isa => 'AWS::OpsWorks::DescribeAppsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAppsResult');  
}
class AWS::OpsWorks::DescribeCommands {
  has CommandIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has DeploymentId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCommands');
  has _returns => (isa => 'AWS::OpsWorks::DescribeCommandsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCommandsResult');  
}
class AWS::OpsWorks::DescribeDeployments {
  has AppId => (is => 'ro', isa => 'Str');
  has DeploymentIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDeployments');
  has _returns => (isa => 'AWS::OpsWorks::DescribeDeploymentsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDeploymentsResult');  
}
class AWS::OpsWorks::DescribeElasticIps {
  has InstanceId => (is => 'ro', isa => 'Str');
  has Ips => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeElasticIps');
  has _returns => (isa => 'AWS::OpsWorks::DescribeElasticIpsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeElasticIpsResult');  
}
class AWS::OpsWorks::DescribeElasticLoadBalancers {
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeElasticLoadBalancers');
  has _returns => (isa => 'AWS::OpsWorks::DescribeElasticLoadBalancersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeElasticLoadBalancersResult');  
}
class AWS::OpsWorks::DescribeInstances {
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has LayerId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstances');
  has _returns => (isa => 'AWS::OpsWorks::DescribeInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInstancesResult');  
}
class AWS::OpsWorks::DescribeLayers {
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLayers');
  has _returns => (isa => 'AWS::OpsWorks::DescribeLayersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLayersResult');  
}
class AWS::OpsWorks::DescribeLoadBasedAutoScaling {
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBasedAutoScaling');
  has _returns => (isa => 'AWS::OpsWorks::DescribeLoadBasedAutoScalingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBasedAutoScalingResult');  
}
class AWS::OpsWorks::DescribeMyUserProfile {

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMyUserProfile');
  has _returns => (isa => 'AWS::OpsWorks::DescribeMyUserProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeMyUserProfileResult');  
}
class AWS::OpsWorks::DescribePermissions {
  has IamUserArn => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePermissions');
  has _returns => (isa => 'AWS::OpsWorks::DescribePermissionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribePermissionsResult');  
}
class AWS::OpsWorks::DescribeRaidArrays {
  has InstanceId => (is => 'ro', isa => 'Str');
  has RaidArrayIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRaidArrays');
  has _returns => (isa => 'AWS::OpsWorks::DescribeRaidArraysResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeRaidArraysResult');  
}
class AWS::OpsWorks::DescribeServiceErrors {
  has InstanceId => (is => 'ro', isa => 'Str');
  has ServiceErrorIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has StackId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServiceErrors');
  has _returns => (isa => 'AWS::OpsWorks::DescribeServiceErrorsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeServiceErrorsResult');  
}
class AWS::OpsWorks::DescribeStackSummary {
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackSummary');
  has _returns => (isa => 'AWS::OpsWorks::DescribeStackSummaryResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackSummaryResult');  
}
class AWS::OpsWorks::DescribeStacks {
  has StackIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStacks');
  has _returns => (isa => 'AWS::OpsWorks::DescribeStacksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStacksResult');  
}
class AWS::OpsWorks::DescribeTimeBasedAutoScaling {
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTimeBasedAutoScaling');
  has _returns => (isa => 'AWS::OpsWorks::DescribeTimeBasedAutoScalingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTimeBasedAutoScalingResult');  
}
class AWS::OpsWorks::DescribeUserProfiles {
  has IamUserArns => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUserProfiles');
  has _returns => (isa => 'AWS::OpsWorks::DescribeUserProfilesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeUserProfilesResult');  
}
class AWS::OpsWorks::DescribeVolumes {
  has InstanceId => (is => 'ro', isa => 'Str');
  has RaidArrayId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has VolumeIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVolumes');
  has _returns => (isa => 'AWS::OpsWorks::DescribeVolumesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeVolumesResult');  
}
class AWS::OpsWorks::DetachElasticLoadBalancer {
  has ElasticLoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LayerId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DetachElasticLoadBalancer');
  has _returns => (isa => 'AWS::OpsWorks::DetachElasticLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DetachElasticLoadBalancerResult');  
}
class AWS::OpsWorks::DisassociateElasticIp {
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateElasticIp');
  has _returns => (isa => 'AWS::OpsWorks::DisassociateElasticIpResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisassociateElasticIpResult');  
}
class AWS::OpsWorks::GetHostnameSuggestion {
  has LayerId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetHostnameSuggestion');
  has _returns => (isa => 'AWS::OpsWorks::GetHostnameSuggestionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetHostnameSuggestionResult');  
}
class AWS::OpsWorks::RebootInstance {
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RebootInstance');
  has _returns => (isa => 'AWS::OpsWorks::RebootInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RebootInstanceResult');  
}
class AWS::OpsWorks::RegisterElasticIp {
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterElasticIp');
  has _returns => (isa => 'AWS::OpsWorks::RegisterElasticIpResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterElasticIpResult');  
}
class AWS::OpsWorks::RegisterVolume {
  has Ec2VolumeId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterVolume');
  has _returns => (isa => 'AWS::OpsWorks::RegisterVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterVolumeResult');  
}
class AWS::OpsWorks::SetLoadBasedAutoScaling {
  has DownScaling => (is => 'ro', isa => 'AWS::OpsWorks::AutoScalingThresholds');
  has Enable => (is => 'ro', isa => 'Str');
  has LayerId => (is => 'ro', isa => 'Str', required => 1);
  has UpScaling => (is => 'ro', isa => 'AWS::OpsWorks::AutoScalingThresholds');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBasedAutoScaling');
  has _returns => (isa => 'AWS::OpsWorks::SetLoadBasedAutoScalingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBasedAutoScalingResult');  
}
class AWS::OpsWorks::SetPermission {
  has AllowSsh => (is => 'ro', isa => 'Str');
  has AllowSudo => (is => 'ro', isa => 'Str');
  has IamUserArn => (is => 'ro', isa => 'Str', required => 1);
  has Level => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetPermission');
  has _returns => (isa => 'AWS::OpsWorks::SetPermissionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetPermissionResult');  
}
class AWS::OpsWorks::SetTimeBasedAutoScaling {
  has AutoScalingSchedule => (is => 'ro', isa => 'AWS::OpsWorks::WeeklyAutoScalingSchedule');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetTimeBasedAutoScaling');
  has _returns => (isa => 'AWS::OpsWorks::SetTimeBasedAutoScalingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetTimeBasedAutoScalingResult');  
}
class AWS::OpsWorks::StartInstance {
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StartInstance');
  has _returns => (isa => 'AWS::OpsWorks::StartInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StartInstanceResult');  
}
class AWS::OpsWorks::StartStack {
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StartStack');
  has _returns => (isa => 'AWS::OpsWorks::StartStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StartStackResult');  
}
class AWS::OpsWorks::StopInstance {
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StopInstance');
  has _returns => (isa => 'AWS::OpsWorks::StopInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StopInstanceResult');  
}
class AWS::OpsWorks::StopStack {
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'StopStack');
  has _returns => (isa => 'AWS::OpsWorks::StopStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'StopStackResult');  
}
class AWS::OpsWorks::UnassignVolume {
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UnassignVolume');
  has _returns => (isa => 'AWS::OpsWorks::UnassignVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UnassignVolumeResult');  
}
class AWS::OpsWorks::UpdateApp {
  has AppId => (is => 'ro', isa => 'Str', required => 1);
  has AppSource => (is => 'ro', isa => 'AWS::OpsWorks::Source');
  has Attributes => (is => 'ro', isa => 'AWS::OpsWorks::AppAttributes');
  has Description => (is => 'ro', isa => 'Str');
  has Domains => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableSsl => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SslConfiguration => (is => 'ro', isa => 'AWS::OpsWorks::SslConfiguration');
  has Type => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApp');
  has _returns => (isa => 'AWS::OpsWorks::UpdateAppResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateAppResult');  
}
class AWS::OpsWorks::UpdateElasticIp {
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateElasticIp');
  has _returns => (isa => 'AWS::OpsWorks::UpdateElasticIpResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateElasticIpResult');  
}
class AWS::OpsWorks::UpdateInstance {
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
  has _returns => (isa => 'AWS::OpsWorks::UpdateInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateInstanceResult');  
}
class AWS::OpsWorks::UpdateLayer {
  has Attributes => (is => 'ro', isa => 'AWS::OpsWorks::LayerAttributes');
  has AutoAssignElasticIps => (is => 'ro', isa => 'Str');
  has AutoAssignPublicIps => (is => 'ro', isa => 'Str');
  has CustomInstanceProfileArn => (is => 'ro', isa => 'Str');
  has CustomRecipes => (is => 'ro', isa => 'AWS::OpsWorks::Recipes');
  has CustomSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableAutoHealing => (is => 'ro', isa => 'Str');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Str');
  has LayerId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has Packages => (is => 'ro', isa => 'ArrayRef[Str]');
  has Shortname => (is => 'ro', isa => 'Str');
  has VolumeConfigurations => (is => 'ro', isa => 'ArrayRef[AWS::OpsWorks::VolumeConfiguration]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLayer');
  has _returns => (isa => 'AWS::OpsWorks::UpdateLayerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateLayerResult');  
}
class AWS::OpsWorks::UpdateMyUserProfile {
  has SshPublicKey => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMyUserProfile');
  has _returns => (isa => 'AWS::OpsWorks::UpdateMyUserProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateMyUserProfileResult');  
}
class AWS::OpsWorks::UpdateStack {
  has Attributes => (is => 'ro', isa => 'AWS::OpsWorks::StackAttributes');
  has ConfigurationManager => (is => 'ro', isa => 'AWS::OpsWorks::StackConfigurationManager');
  has CustomCookbooksSource => (is => 'ro', isa => 'AWS::OpsWorks::Source');
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
  has _returns => (isa => 'AWS::OpsWorks::UpdateStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStackResult');  
}
class AWS::OpsWorks::UpdateUserProfile {
  has AllowSelfManagement => (is => 'ro', isa => 'Str');
  has IamUserArn => (is => 'ro', isa => 'Str', required => 1);
  has SshPublicKey => (is => 'ro', isa => 'Str');
  has SshUsername => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUserProfile');
  has _returns => (isa => 'AWS::OpsWorks::UpdateUserProfileResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateUserProfileResult');  
}
class AWS::OpsWorks::UpdateVolume {
  has MountPoint => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVolume');
  has _returns => (isa => 'AWS::OpsWorks::UpdateVolumeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateVolumeResult');  
}

class AWS::OpsWorks::CloneStackResult with AWS::API::ResultParser {
  has StackId => (is => 'ro', isa => 'Str');

}
class AWS::OpsWorks::CreateAppResult with AWS::API::ResultParser {
  has AppId => (is => 'ro', isa => 'Str');

}
class AWS::OpsWorks::CreateDeploymentResult with AWS::API::ResultParser {
  has DeploymentId => (is => 'ro', isa => 'Str');

}
class AWS::OpsWorks::CreateInstanceResult with AWS::API::ResultParser {
  has InstanceId => (is => 'ro', isa => 'Str');

}
class AWS::OpsWorks::CreateLayerResult with AWS::API::ResultParser {
  has LayerId => (is => 'ro', isa => 'Str');

}
class AWS::OpsWorks::CreateStackResult with AWS::API::ResultParser {
  has StackId => (is => 'ro', isa => 'Str');

}
class AWS::OpsWorks::CreateUserProfileResult with AWS::API::ResultParser {
  has IamUserArn => (is => 'ro', isa => 'Str');

}
class AWS::OpsWorks::DescribeAppsResult with AWS::API::ResultParser {
  has Apps => (is => 'ro', isa => 'ArrayRef[AWS::OpsWorks::App]');

}
class AWS::OpsWorks::DescribeCommandsResult with AWS::API::ResultParser {
  has Commands => (is => 'ro', isa => 'ArrayRef[AWS::OpsWorks::Command]');

}
class AWS::OpsWorks::DescribeDeploymentsResult with AWS::API::ResultParser {
  has Deployments => (is => 'ro', isa => 'ArrayRef[AWS::OpsWorks::Deployment]');

}
class AWS::OpsWorks::DescribeElasticIpsResult with AWS::API::ResultParser {
  has ElasticIps => (is => 'ro', isa => 'ArrayRef[AWS::OpsWorks::ElasticIp]');

}
class AWS::OpsWorks::DescribeElasticLoadBalancersResult with AWS::API::ResultParser {
  has ElasticLoadBalancers => (is => 'ro', isa => 'ArrayRef[AWS::OpsWorks::ElasticLoadBalancer]');

}
class AWS::OpsWorks::DescribeInstancesResult with AWS::API::ResultParser {
  has Instances => (is => 'ro', isa => 'ArrayRef[AWS::OpsWorks::Instance]');

}
class AWS::OpsWorks::DescribeLayersResult with AWS::API::ResultParser {
  has Layers => (is => 'ro', isa => 'ArrayRef[AWS::OpsWorks::Layer]');

}
class AWS::OpsWorks::DescribeLoadBasedAutoScalingResult with AWS::API::ResultParser {
  has LoadBasedAutoScalingConfigurations => (is => 'ro', isa => 'ArrayRef[AWS::OpsWorks::LoadBasedAutoScalingConfiguration]');

}
class AWS::OpsWorks::DescribeMyUserProfileResult with AWS::API::ResultParser {
  has UserProfile => (is => 'ro', isa => 'AWS::OpsWorks::SelfUserProfile');

}
class AWS::OpsWorks::DescribePermissionsResult with AWS::API::ResultParser {
  has Permissions => (is => 'ro', isa => 'ArrayRef[AWS::OpsWorks::Permission]');

}
class AWS::OpsWorks::DescribeRaidArraysResult with AWS::API::ResultParser {
  has RaidArrays => (is => 'ro', isa => 'ArrayRef[AWS::OpsWorks::RaidArray]');

}
class AWS::OpsWorks::DescribeServiceErrorsResult with AWS::API::ResultParser {
  has ServiceErrors => (is => 'ro', isa => 'ArrayRef[AWS::OpsWorks::ServiceError]');

}
class AWS::OpsWorks::DescribeStackSummaryResult with AWS::API::ResultParser {
  has StackSummary => (is => 'ro', isa => 'AWS::OpsWorks::StackSummary');

}
class AWS::OpsWorks::DescribeStacksResult with AWS::API::ResultParser {
  has Stacks => (is => 'ro', isa => 'ArrayRef[AWS::OpsWorks::Stack]');

}
class AWS::OpsWorks::DescribeTimeBasedAutoScalingResult with AWS::API::ResultParser {
  has TimeBasedAutoScalingConfigurations => (is => 'ro', isa => 'ArrayRef[AWS::OpsWorks::TimeBasedAutoScalingConfiguration]');

}
class AWS::OpsWorks::DescribeUserProfilesResult with AWS::API::ResultParser {
  has UserProfiles => (is => 'ro', isa => 'ArrayRef[AWS::OpsWorks::UserProfile]');

}
class AWS::OpsWorks::DescribeVolumesResult with AWS::API::ResultParser {
  has Volumes => (is => 'ro', isa => 'ArrayRef[AWS::OpsWorks::Volume]');

}
class AWS::OpsWorks::GetHostnameSuggestionResult with AWS::API::ResultParser {
  has Hostname => (is => 'ro', isa => 'Str');
  has LayerId => (is => 'ro', isa => 'Str');

}
class AWS::OpsWorks::RegisterElasticIpResult with AWS::API::ResultParser {
  has ElasticIp => (is => 'ro', isa => 'Str');

}
class AWS::OpsWorks::RegisterVolumeResult with AWS::API::ResultParser {
  has VolumeId => (is => 'ro', isa => 'Str');

}

class AWS::OpsWorks with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::JsonCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'opsworks');
  has version => (is => 'ro', isa => 'Str', default => '2013-02-18');
  
  method AssignVolume (%args) {
    my $call = AWS::OpsWorks::AssignVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method AssociateElasticIp (%args) {
    my $call = AWS::OpsWorks::AssociateElasticIp->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method AttachElasticLoadBalancer (%args) {
    my $call = AWS::OpsWorks::AttachElasticLoadBalancer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method CloneStack (%args) {
    my $call = AWS::OpsWorks::CloneStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::CloneStackResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateApp (%args) {
    my $call = AWS::OpsWorks::CreateApp->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::CreateAppResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateDeployment (%args) {
    my $call = AWS::OpsWorks::CreateDeployment->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::CreateDeploymentResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateInstance (%args) {
    my $call = AWS::OpsWorks::CreateInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::CreateInstanceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateLayer (%args) {
    my $call = AWS::OpsWorks::CreateLayer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::CreateLayerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateStack (%args) {
    my $call = AWS::OpsWorks::CreateStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::CreateStackResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateUserProfile (%args) {
    my $call = AWS::OpsWorks::CreateUserProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::CreateUserProfileResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteApp (%args) {
    my $call = AWS::OpsWorks::DeleteApp->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteInstance (%args) {
    my $call = AWS::OpsWorks::DeleteInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteLayer (%args) {
    my $call = AWS::OpsWorks::DeleteLayer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteStack (%args) {
    my $call = AWS::OpsWorks::DeleteStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteUserProfile (%args) {
    my $call = AWS::OpsWorks::DeleteUserProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeregisterElasticIp (%args) {
    my $call = AWS::OpsWorks::DeregisterElasticIp->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeregisterVolume (%args) {
    my $call = AWS::OpsWorks::DeregisterVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DescribeApps (%args) {
    my $call = AWS::OpsWorks::DescribeApps->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::DescribeAppsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeCommands (%args) {
    my $call = AWS::OpsWorks::DescribeCommands->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::DescribeCommandsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeDeployments (%args) {
    my $call = AWS::OpsWorks::DescribeDeployments->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::DescribeDeploymentsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeElasticIps (%args) {
    my $call = AWS::OpsWorks::DescribeElasticIps->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::DescribeElasticIpsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeElasticLoadBalancers (%args) {
    my $call = AWS::OpsWorks::DescribeElasticLoadBalancers->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::DescribeElasticLoadBalancersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeInstances (%args) {
    my $call = AWS::OpsWorks::DescribeInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::DescribeInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeLayers (%args) {
    my $call = AWS::OpsWorks::DescribeLayers->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::DescribeLayersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeLoadBasedAutoScaling (%args) {
    my $call = AWS::OpsWorks::DescribeLoadBasedAutoScaling->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::DescribeLoadBasedAutoScalingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeMyUserProfile (%args) {
    my $call = AWS::OpsWorks::DescribeMyUserProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::DescribeMyUserProfileResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribePermissions (%args) {
    my $call = AWS::OpsWorks::DescribePermissions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::DescribePermissionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeRaidArrays (%args) {
    my $call = AWS::OpsWorks::DescribeRaidArrays->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::DescribeRaidArraysResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeServiceErrors (%args) {
    my $call = AWS::OpsWorks::DescribeServiceErrors->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::DescribeServiceErrorsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeStacks (%args) {
    my $call = AWS::OpsWorks::DescribeStacks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::DescribeStacksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeStackSummary (%args) {
    my $call = AWS::OpsWorks::DescribeStackSummary->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::DescribeStackSummaryResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeTimeBasedAutoScaling (%args) {
    my $call = AWS::OpsWorks::DescribeTimeBasedAutoScaling->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::DescribeTimeBasedAutoScalingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeUserProfiles (%args) {
    my $call = AWS::OpsWorks::DescribeUserProfiles->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::DescribeUserProfilesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeVolumes (%args) {
    my $call = AWS::OpsWorks::DescribeVolumes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::DescribeVolumesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DetachElasticLoadBalancer (%args) {
    my $call = AWS::OpsWorks::DetachElasticLoadBalancer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DisassociateElasticIp (%args) {
    my $call = AWS::OpsWorks::DisassociateElasticIp->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method GetHostnameSuggestion (%args) {
    my $call = AWS::OpsWorks::GetHostnameSuggestion->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::GetHostnameSuggestionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RebootInstance (%args) {
    my $call = AWS::OpsWorks::RebootInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RegisterElasticIp (%args) {
    my $call = AWS::OpsWorks::RegisterElasticIp->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::RegisterElasticIpResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RegisterVolume (%args) {
    my $call = AWS::OpsWorks::RegisterVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::OpsWorks::RegisterVolumeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SetLoadBasedAutoScaling (%args) {
    my $call = AWS::OpsWorks::SetLoadBasedAutoScaling->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SetPermission (%args) {
    my $call = AWS::OpsWorks::SetPermission->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SetTimeBasedAutoScaling (%args) {
    my $call = AWS::OpsWorks::SetTimeBasedAutoScaling->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method StartInstance (%args) {
    my $call = AWS::OpsWorks::StartInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method StartStack (%args) {
    my $call = AWS::OpsWorks::StartStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method StopInstance (%args) {
    my $call = AWS::OpsWorks::StopInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method StopStack (%args) {
    my $call = AWS::OpsWorks::StopStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UnassignVolume (%args) {
    my $call = AWS::OpsWorks::UnassignVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateApp (%args) {
    my $call = AWS::OpsWorks::UpdateApp->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateElasticIp (%args) {
    my $call = AWS::OpsWorks::UpdateElasticIp->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateInstance (%args) {
    my $call = AWS::OpsWorks::UpdateInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateLayer (%args) {
    my $call = AWS::OpsWorks::UpdateLayer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateMyUserProfile (%args) {
    my $call = AWS::OpsWorks::UpdateMyUserProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateStack (%args) {
    my $call = AWS::OpsWorks::UpdateStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateUserProfile (%args) {
    my $call = AWS::OpsWorks::UpdateUserProfile->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateVolume (%args) {
    my $call = AWS::OpsWorks::UpdateVolume->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
}
