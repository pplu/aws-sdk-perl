
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::RDS::ApplyMethod', ['immediate','pending-reboot',];
enum 'Aws::RDS::SourceType', ['db-instance','db-parameter-group','db-security-group','db-snapshot',];


class Aws::RDS::AvailabilityZone with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str');
  has ProvisionedIopsCapable => (is => 'ro', isa => 'Str');
}

class Aws::RDS::CharacterSet with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CharacterSetDescription => (is => 'ro', isa => 'Str');
  has CharacterSetName => (is => 'ro', isa => 'Str');
}

class Aws::RDS::DBEngineVersion with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DBEngineDescription => (is => 'ro', isa => 'Str');
  has DBEngineVersionDescription => (is => 'ro', isa => 'Str');
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DefaultCharacterSet => (is => 'ro', isa => 'Aws::RDS::CharacterSet');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has SupportedCharacterSets => (is => 'ro', isa => 'ArrayRef[Aws::RDS::CharacterSet]');
}

class Aws::RDS::DBInstance with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Str');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DBInstanceStatus => (is => 'ro', isa => 'Str');
  has DBName => (is => 'ro', isa => 'Str');
  has DBParameterGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBParameterGroupStatus]');
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSecurityGroupMembership]');
  has DBSubnetGroup => (is => 'ro', isa => 'Aws::RDS::DBSubnetGroup');
  has Endpoint => (is => 'ro', isa => 'Aws::RDS::Endpoint');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has InstanceCreateTime => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has LatestRestorableTime => (is => 'ro', isa => 'Str');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Str');
  has OptionGroupMemberships => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionGroupMembership]');
  has PendingModifiedValues => (is => 'ro', isa => 'Aws::RDS::PendingModifiedValues');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Str');
  has ReadReplicaDBInstanceIdentifiers => (is => 'ro', isa => 'ArrayRef[Str]');
  has ReadReplicaSourceDBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has SecondaryAvailabilityZone => (is => 'ro', isa => 'Str');
  has StatusInfos => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBInstanceStatusInfo]');
  has VpcSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::VpcSecurityGroupMembership]');
}

class Aws::RDS::DBInstanceStatusInfo with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Message => (is => 'ro', isa => 'Str');
  has Normal => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusType => (is => 'ro', isa => 'Str');
}

class Aws::RDS::DBParameterGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
}

class Aws::RDS::DBParameterGroupStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterApplyStatus => (is => 'ro', isa => 'Str');
}

class Aws::RDS::DBSecurityGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DBSecurityGroupDescription => (is => 'ro', isa => 'Str');
  has DBSecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::EC2SecurityGroup]');
  has IPRanges => (is => 'ro', isa => 'ArrayRef[Aws::RDS::IPRange]');
  has OwnerId => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
}

class Aws::RDS::DBSecurityGroupMembership with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DBSecurityGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class Aws::RDS::DBSnapshot with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has InstanceCreateTime => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has PercentProgress => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has SnapshotCreateTime => (is => 'ro', isa => 'Str');
  has SnapshotType => (is => 'ro', isa => 'Str');
  has SourceRegion => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
}

class Aws::RDS::DBSubnetGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DBSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has SubnetGroupStatus => (is => 'ro', isa => 'Str');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Subnet]');
  has VpcId => (is => 'ro', isa => 'Str');
}

class Aws::RDS::DescribeDBLogFilesDetails with (AWS::API::ResultParser, AWS::API::ToParams) {
  has LastWritten => (is => 'ro', isa => 'Num');
  has LogFileName => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Num');
}

class Aws::RDS::EC2SecurityGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has EC2SecurityGroupId => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class Aws::RDS::Endpoint with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Address => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
}

class Aws::RDS::EngineDefaults with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Parameter]');
}

class Aws::RDS::Event with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Date => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has Message => (is => 'ro', isa => 'Str');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Aws::RDS::SourceType');
}

class Aws::RDS::EventCategoriesMap with (AWS::API::ResultParser, AWS::API::ToParams) {
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has SourceType => (is => 'ro', isa => 'Str');
}

class Aws::RDS::EventSubscription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CustSubscriptionId => (is => 'ro', isa => 'Str');
  has CustomerAwsId => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Str');
  has EventCategoriesList => (is => 'ro', isa => 'ArrayRef[Str]');
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has SourceIdsList => (is => 'ro', isa => 'ArrayRef[Str]');
  has SourceType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SubscriptionCreationTime => (is => 'ro', isa => 'Str');
}

class Aws::RDS::IPRange with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CIDRIP => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class Aws::RDS::Option with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DBSecurityGroupMemberships => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSecurityGroupMembership]');
  has OptionDescription => (is => 'ro', isa => 'Str');
  has OptionName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionSetting]');
  has Permanent => (is => 'ro', isa => 'Str');
  has Persistent => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has VpcSecurityGroupMemberships => (is => 'ro', isa => 'ArrayRef[Aws::RDS::VpcSecurityGroupMembership]');
}

class Aws::RDS::OptionConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DBSecurityGroupMemberships => (is => 'ro', isa => 'ArrayRef[Str]');
  has OptionName => (is => 'ro', isa => 'Str', required => 1);
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionSetting]');
  has Port => (is => 'ro', isa => 'Int');
  has VpcSecurityGroupMemberships => (is => 'ro', isa => 'ArrayRef[Str]');
}

class Aws::RDS::OptionGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AllowsVpcAndNonVpcInstanceMemberships => (is => 'ro', isa => 'Str');
  has EngineName => (is => 'ro', isa => 'Str');
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has OptionGroupDescription => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Option]');
  has VpcId => (is => 'ro', isa => 'Str');
}

class Aws::RDS::OptionGroupMembership with (AWS::API::ResultParser, AWS::API::ToParams) {
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class Aws::RDS::OptionGroupOption with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DefaultPort => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str');
  has EngineName => (is => 'ro', isa => 'Str');
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has MinimumRequiredMinorEngineVersion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OptionGroupOptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionGroupOptionSetting]');
  has OptionsDependedOn => (is => 'ro', isa => 'ArrayRef[Str]');
  has Permanent => (is => 'ro', isa => 'Str');
  has Persistent => (is => 'ro', isa => 'Str');
  has PortRequired => (is => 'ro', isa => 'Str');
}

class Aws::RDS::OptionGroupOptionSetting with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AllowedValues => (is => 'ro', isa => 'Str');
  has ApplyType => (is => 'ro', isa => 'Str');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Str');
  has SettingDescription => (is => 'ro', isa => 'Str');
  has SettingName => (is => 'ro', isa => 'Str');
}

class Aws::RDS::OptionSetting with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AllowedValues => (is => 'ro', isa => 'Str');
  has ApplyType => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IsCollection => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

class Aws::RDS::OrderableDBInstanceOption with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Aws::RDS::AvailabilityZone]');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MultiAZCapable => (is => 'ro', isa => 'Str');
  has ReadReplicaCapable => (is => 'ro', isa => 'Str');
  has Vpc => (is => 'ro', isa => 'Str');
}

class Aws::RDS::Parameter with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AllowedValues => (is => 'ro', isa => 'Str');
  has ApplyMethod => (is => 'ro', isa => 'Aws::RDS::ApplyMethod');
  has ApplyType => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Str');
  has MinimumEngineVersion => (is => 'ro', isa => 'Str');
  has ParameterName => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
}

class Aws::RDS::PendingModifiedValues with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
}

class Aws::RDS::RecurringCharge with (AWS::API::ResultParser, AWS::API::ToParams) {
  has RecurringChargeAmount => (is => 'ro', isa => 'Num');
  has RecurringChargeFrequency => (is => 'ro', isa => 'Str');
}

class Aws::RDS::ReservedDBInstance with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceCount => (is => 'ro', isa => 'Int');
  has Duration => (is => 'ro', isa => 'Int');
  has FixedPrice => (is => 'ro', isa => 'Num');
  has MultiAZ => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Aws::RDS::RecurringCharge]');
  has ReservedDBInstanceId => (is => 'ro', isa => 'Str');
  has ReservedDBInstancesOfferingId => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has UsagePrice => (is => 'ro', isa => 'Num');
}

class Aws::RDS::ReservedDBInstancesOffering with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has FixedPrice => (is => 'ro', isa => 'Num');
  has MultiAZ => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Aws::RDS::RecurringCharge]');
  has ReservedDBInstancesOfferingId => (is => 'ro', isa => 'Str');
  has UsagePrice => (is => 'ro', isa => 'Num');
}

class Aws::RDS::Subnet with (AWS::API::ResultParser, AWS::API::ToParams) {
  has SubnetAvailabilityZone => (is => 'ro', isa => 'Aws::RDS::AvailabilityZone');
  has SubnetIdentifier => (is => 'ro', isa => 'Str');
  has SubnetStatus => (is => 'ro', isa => 'Str');
}

class Aws::RDS::Tag with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

class Aws::RDS::VpcSecurityGroupMembership with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Status => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupId => (is => 'ro', isa => 'Str');
}



class Aws::RDS::AddSourceIdentifierToSubscription {
  has SourceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddSourceIdentifierToSubscription');
  has _returns => (isa => 'Aws::RDS::AddSourceIdentifierToSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddSourceIdentifierToSubscriptionResult');  
}
class Aws::RDS::AddTagsToResource {
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddTagsToResource');
  has _returns => (isa => 'Aws::RDS::AddTagsToResourceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddTagsToResourceResult');  
}
class Aws::RDS::AuthorizeDBSecurityGroupIngress {
  has CIDRIP => (is => 'ro', isa => 'Str');
  has DBSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupId => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeDBSecurityGroupIngress');
  has _returns => (isa => 'Aws::RDS::AuthorizeDBSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeDBSecurityGroupIngressResult');  
}
class Aws::RDS::CopyDBSnapshot {
  has SourceDBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]');
  has TargetDBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CopyDBSnapshot');
  has _returns => (isa => 'Aws::RDS::CopyDBSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CopyDBSnapshotResult');  
}
class Aws::RDS::CreateDBInstance {
  has AllocatedStorage => (is => 'ro', isa => 'Int', required => 1);
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Str');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str', required => 1);
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBName => (is => 'ro', isa => 'Str');
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str', required => 1);
  has MasterUserPassword => (is => 'ro', isa => 'Str', required => 1);
  has MultiAZ => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBInstance');
  has _returns => (isa => 'Aws::RDS::CreateDBInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceResult');  
}
class Aws::RDS::CreateDBInstanceReadReplica {
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Str');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Str');
  has SourceDBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceReadReplica');
  has _returns => (isa => 'Aws::RDS::CreateDBInstanceReadReplicaResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceReadReplicaResult');  
}
class Aws::RDS::CreateDBParameterGroup {
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBParameterGroup');
  has _returns => (isa => 'Aws::RDS::CreateDBParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBParameterGroupResult');  
}
class Aws::RDS::CreateDBSecurityGroup {
  has DBSecurityGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has DBSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBSecurityGroup');
  has _returns => (isa => 'Aws::RDS::CreateDBSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBSecurityGroupResult');  
}
class Aws::RDS::CreateDBSnapshot {
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBSnapshot');
  has _returns => (isa => 'Aws::RDS::CreateDBSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBSnapshotResult');  
}
class Aws::RDS::CreateDBSubnetGroup {
  has DBSubnetGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has DBSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBSubnetGroup');
  has _returns => (isa => 'Aws::RDS::CreateDBSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBSubnetGroupResult');  
}
class Aws::RDS::CreateEventSubscription {
  has Enabled => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has SnsTopicArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has SourceType => (is => 'ro', isa => 'Str');
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEventSubscription');
  has _returns => (isa => 'Aws::RDS::CreateEventSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateEventSubscriptionResult');  
}
class Aws::RDS::CreateOptionGroup {
  has EngineName => (is => 'ro', isa => 'Str', required => 1);
  has MajorEngineVersion => (is => 'ro', isa => 'Str', required => 1);
  has OptionGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has OptionGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOptionGroup');
  has _returns => (isa => 'Aws::RDS::CreateOptionGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateOptionGroupResult');  
}
class Aws::RDS::DeleteDBInstance {
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has FinalDBSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SkipFinalSnapshot => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBInstance');
  has _returns => (isa => 'Aws::RDS::DeleteDBInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBInstanceResult');  
}
class Aws::RDS::DeleteDBParameterGroup {
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBParameterGroup');
  has _returns => (isa => 'Aws::RDS::DeleteDBParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBParameterGroupResult');  
}
class Aws::RDS::DeleteDBSecurityGroup {
  has DBSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBSecurityGroup');
  has _returns => (isa => 'Aws::RDS::DeleteDBSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBSecurityGroupResult');  
}
class Aws::RDS::DeleteDBSnapshot {
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBSnapshot');
  has _returns => (isa => 'Aws::RDS::DeleteDBSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBSnapshotResult');  
}
class Aws::RDS::DeleteDBSubnetGroup {
  has DBSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBSubnetGroup');
  has _returns => (isa => 'Aws::RDS::DeleteDBSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBSubnetGroupResult');  
}
class Aws::RDS::DeleteEventSubscription {
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEventSubscription');
  has _returns => (isa => 'Aws::RDS::DeleteEventSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteEventSubscriptionResult');  
}
class Aws::RDS::DeleteOptionGroup {
  has OptionGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteOptionGroup');
  has _returns => (isa => 'Aws::RDS::DeleteOptionGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteOptionGroupResult');  
}
class Aws::RDS::DescribeDBEngineVersions {
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DefaultOnly => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has ListSupportedCharacterSets => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBEngineVersions');
  has _returns => (isa => 'Aws::RDS::DescribeDBEngineVersionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBEngineVersionsResult');  
}
class Aws::RDS::DescribeDBInstances {
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBInstances');
  has _returns => (isa => 'Aws::RDS::DescribeDBInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBInstancesResult');  
}
class Aws::RDS::DescribeDBLogFiles {
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has FileLastWritten => (is => 'ro', isa => 'Num');
  has FilenameContains => (is => 'ro', isa => 'Str');
  has FileSize => (is => 'ro', isa => 'Num');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBLogFiles');
  has _returns => (isa => 'Aws::RDS::DescribeDBLogFilesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBLogFilesResult');  
}
class Aws::RDS::DescribeDBParameterGroups {
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBParameterGroups');
  has _returns => (isa => 'Aws::RDS::DescribeDBParameterGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBParameterGroupsResult');  
}
class Aws::RDS::DescribeDBParameters {
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has Source => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBParameters');
  has _returns => (isa => 'Aws::RDS::DescribeDBParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBParametersResult');  
}
class Aws::RDS::DescribeDBSecurityGroups {
  has DBSecurityGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBSecurityGroups');
  has _returns => (isa => 'Aws::RDS::DescribeDBSecurityGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBSecurityGroupsResult');  
}
class Aws::RDS::DescribeDBSnapshots {
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SnapshotType => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBSnapshots');
  has _returns => (isa => 'Aws::RDS::DescribeDBSnapshotsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBSnapshotsResult');  
}
class Aws::RDS::DescribeDBSubnetGroups {
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBSubnetGroups');
  has _returns => (isa => 'Aws::RDS::DescribeDBSubnetGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBSubnetGroupsResult');  
}
class Aws::RDS::DescribeEngineDefaultParameters {
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParameters');
  has _returns => (isa => 'Aws::RDS::DescribeEngineDefaultParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParametersResult');  
}
class Aws::RDS::DescribeEventCategories {
  has SourceType => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventCategories');
  has _returns => (isa => 'Aws::RDS::DescribeEventCategoriesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventCategoriesResult');  
}
class Aws::RDS::DescribeEventSubscriptions {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SubscriptionName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventSubscriptions');
  has _returns => (isa => 'Aws::RDS::DescribeEventSubscriptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventSubscriptionsResult');  
}
class Aws::RDS::DescribeEvents {
  has Duration => (is => 'ro', isa => 'Int');
  has EndTime => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEvents');
  has _returns => (isa => 'Aws::RDS::DescribeEventsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventsResult');  
}
class Aws::RDS::DescribeOptionGroupOptions {
  has EngineName => (is => 'ro', isa => 'Str', required => 1);
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOptionGroupOptions');
  has _returns => (isa => 'Aws::RDS::DescribeOptionGroupOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeOptionGroupOptionsResult');  
}
class Aws::RDS::DescribeOptionGroups {
  has EngineName => (is => 'ro', isa => 'Str');
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has OptionGroupName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOptionGroups');
  has _returns => (isa => 'Aws::RDS::DescribeOptionGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeOptionGroupsResult');  
}
class Aws::RDS::DescribeOrderableDBInstanceOptions {
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has Vpc => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOrderableDBInstanceOptions');
  has _returns => (isa => 'Aws::RDS::DescribeOrderableDBInstanceOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeOrderableDBInstanceOptionsResult');  
}
class Aws::RDS::DescribeReservedDBInstances {
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has MultiAZ => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has ReservedDBInstanceId => (is => 'ro', isa => 'Str');
  has ReservedDBInstancesOfferingId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedDBInstances');
  has _returns => (isa => 'Aws::RDS::DescribeReservedDBInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedDBInstancesResult');  
}
class Aws::RDS::DescribeReservedDBInstancesOfferings {
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has MultiAZ => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has ReservedDBInstancesOfferingId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedDBInstancesOfferings');
  has _returns => (isa => 'Aws::RDS::DescribeReservedDBInstancesOfferingsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedDBInstancesOfferingsResult');  
}
class Aws::RDS::DownloadDBLogFilePortion {
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has LogFileName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has NumberOfLines => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DownloadDBLogFilePortion');
  has _returns => (isa => 'Aws::RDS::DownloadDBLogFilePortionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DownloadDBLogFilePortionResult');  
}
class Aws::RDS::ListTagsForResource {
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  has _returns => (isa => 'Aws::RDS::ListTagsForResourceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListTagsForResourceResult');  
}
class Aws::RDS::ModifyDBInstance {
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AllowMajorVersionUpgrade => (is => 'ro', isa => 'Str');
  has ApplyImmediately => (is => 'ro', isa => 'Str');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Str');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Str');
  has NewDBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBInstance');
  has _returns => (isa => 'Aws::RDS::ModifyDBInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBInstanceResult');  
}
class Aws::RDS::ModifyDBParameterGroup {
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Parameter]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBParameterGroup');
  has _returns => (isa => 'Aws::RDS::ModifyDBParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBParameterGroupResult');  
}
class Aws::RDS::ModifyDBSubnetGroup {
  has DBSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBSubnetGroup');
  has _returns => (isa => 'Aws::RDS::ModifyDBSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBSubnetGroupResult');  
}
class Aws::RDS::ModifyEventSubscription {
  has Enabled => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyEventSubscription');
  has _returns => (isa => 'Aws::RDS::ModifyEventSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyEventSubscriptionResult');  
}
class Aws::RDS::ModifyOptionGroup {
  has ApplyImmediately => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str', required => 1);
  has OptionsToInclude => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionConfiguration]');
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyOptionGroup');
  has _returns => (isa => 'Aws::RDS::ModifyOptionGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyOptionGroupResult');  
}
class Aws::RDS::PromoteReadReplica {
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'PromoteReadReplica');
  has _returns => (isa => 'Aws::RDS::PromoteReadReplicaResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PromoteReadReplicaResult');  
}
class Aws::RDS::PurchaseReservedDBInstancesOffering {
  has DBInstanceCount => (is => 'ro', isa => 'Int');
  has ReservedDBInstanceId => (is => 'ro', isa => 'Str');
  has ReservedDBInstancesOfferingId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedDBInstancesOffering');
  has _returns => (isa => 'Aws::RDS::PurchaseReservedDBInstancesOfferingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PurchaseReservedDBInstancesOfferingResult');  
}
class Aws::RDS::RebootDBInstance {
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ForceFailover => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RebootDBInstance');
  has _returns => (isa => 'Aws::RDS::RebootDBInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RebootDBInstanceResult');  
}
class Aws::RDS::RemoveSourceIdentifierFromSubscription {
  has SourceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveSourceIdentifierFromSubscription');
  has _returns => (isa => 'Aws::RDS::RemoveSourceIdentifierFromSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveSourceIdentifierFromSubscriptionResult');  
}
class Aws::RDS::RemoveTagsFromResource {
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTagsFromResource');
  has _returns => (isa => 'Aws::RDS::RemoveTagsFromResourceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveTagsFromResourceResult');  
}
class Aws::RDS::ResetDBParameterGroup {
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Parameter]');
  has ResetAllParameters => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResetDBParameterGroup');
  has _returns => (isa => 'Aws::RDS::ResetDBParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResetDBParameterGroupResult');  
}
class Aws::RDS::RestoreDBInstanceFromDBSnapshot {
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Str');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBName => (is => 'ro', isa => 'Str');
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceFromDBSnapshot');
  has _returns => (isa => 'Aws::RDS::RestoreDBInstanceFromDBSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceFromDBSnapshotResult');  
}
class Aws::RDS::RestoreDBInstanceToPointInTime {
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Str');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBName => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Str');
  has RestoreTime => (is => 'ro', isa => 'Str');
  has SourceDBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]');
  has TargetDBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has UseLatestRestorableTime => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceToPointInTime');
  has _returns => (isa => 'Aws::RDS::RestoreDBInstanceToPointInTimeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceToPointInTimeResult');  
}
class Aws::RDS::RevokeDBSecurityGroupIngress {
  has CIDRIP => (is => 'ro', isa => 'Str');
  has DBSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupId => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeDBSecurityGroupIngress');
  has _returns => (isa => 'Aws::RDS::RevokeDBSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeDBSecurityGroupIngressResult');  
}

class Aws::RDS::AddSourceIdentifierToSubscriptionResult with AWS::API::ResultParser {
  has EventSubscription => (is => 'ro', isa => 'Aws::RDS::EventSubscription');

}
class Aws::RDS::AuthorizeDBSecurityGroupIngressResult with AWS::API::ResultParser {
  has DBSecurityGroup => (is => 'ro', isa => 'Aws::RDS::DBSecurityGroup');

}
class Aws::RDS::CopyDBSnapshotResult with AWS::API::ResultParser {
  has DBSnapshot => (is => 'ro', isa => 'Aws::RDS::DBSnapshot');

}
class Aws::RDS::CreateDBInstanceResult with AWS::API::ResultParser {
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
class Aws::RDS::CreateDBInstanceReadReplicaResult with AWS::API::ResultParser {
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
class Aws::RDS::CreateDBParameterGroupResult with AWS::API::ResultParser {
  has DBParameterGroup => (is => 'ro', isa => 'Aws::RDS::DBParameterGroup');

}
class Aws::RDS::CreateDBSecurityGroupResult with AWS::API::ResultParser {
  has DBSecurityGroup => (is => 'ro', isa => 'Aws::RDS::DBSecurityGroup');

}
class Aws::RDS::CreateDBSnapshotResult with AWS::API::ResultParser {
  has DBSnapshot => (is => 'ro', isa => 'Aws::RDS::DBSnapshot');

}
class Aws::RDS::CreateDBSubnetGroupResult with AWS::API::ResultParser {
  has DBSubnetGroup => (is => 'ro', isa => 'Aws::RDS::DBSubnetGroup');

}
class Aws::RDS::CreateEventSubscriptionResult with AWS::API::ResultParser {
  has EventSubscription => (is => 'ro', isa => 'Aws::RDS::EventSubscription');

}
class Aws::RDS::CreateOptionGroupResult with AWS::API::ResultParser {
  has OptionGroup => (is => 'ro', isa => 'Aws::RDS::OptionGroup');

}
class Aws::RDS::DeleteDBInstanceResult with AWS::API::ResultParser {
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
class Aws::RDS::DeleteDBSnapshotResult with AWS::API::ResultParser {
  has DBSnapshot => (is => 'ro', isa => 'Aws::RDS::DBSnapshot');

}
class Aws::RDS::DeleteEventSubscriptionResult with AWS::API::ResultParser {
  has EventSubscription => (is => 'ro', isa => 'Aws::RDS::EventSubscription');

}
class Aws::RDS::DescribeDBEngineVersionsResult with AWS::API::ResultParser {
  has DBEngineVersions => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBEngineVersion]', traits => ['Unwrapped'], xmlname => 'DBEngineVersion');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::RDS::DescribeDBInstancesResult with AWS::API::ResultParser {
  has DBInstances => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBInstance]', traits => ['Unwrapped'], xmlname => 'DBInstance');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::RDS::DescribeDBLogFilesResult with AWS::API::ResultParser {
  has DescribeDBLogFiles => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DescribeDBLogFilesDetails]', traits => ['Unwrapped'], xmlname => 'DescribeDBLogFilesDetails');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::RDS::DescribeDBParameterGroupsResult with AWS::API::ResultParser {
  has DBParameterGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBParameterGroup]', traits => ['Unwrapped'], xmlname => 'DBParameterGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::RDS::DescribeDBParametersResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Parameter]', traits => ['Unwrapped'], xmlname => 'Parameter');

}
class Aws::RDS::DescribeDBSecurityGroupsResult with AWS::API::ResultParser {
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSecurityGroup]', traits => ['Unwrapped'], xmlname => 'DBSecurityGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::RDS::DescribeDBSnapshotsResult with AWS::API::ResultParser {
  has DBSnapshots => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSnapshot]', traits => ['Unwrapped'], xmlname => 'DBSnapshot');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::RDS::DescribeDBSubnetGroupsResult with AWS::API::ResultParser {
  has DBSubnetGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSubnetGroup]', traits => ['Unwrapped'], xmlname => 'DBSubnetGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::RDS::DescribeEngineDefaultParametersResult with AWS::API::ResultParser {
  has EngineDefaults => (is => 'ro', isa => 'Aws::RDS::EngineDefaults');

}
class Aws::RDS::DescribeEventCategoriesResult with AWS::API::ResultParser {
  has EventCategoriesMapList => (is => 'ro', isa => 'ArrayRef[Aws::RDS::EventCategoriesMap]', traits => ['Unwrapped'], xmlname => 'EventCategoriesMap');

}
class Aws::RDS::DescribeEventSubscriptionsResult with AWS::API::ResultParser {
  has EventSubscriptionsList => (is => 'ro', isa => 'ArrayRef[Aws::RDS::EventSubscription]', traits => ['Unwrapped'], xmlname => 'EventSubscription');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::RDS::DescribeEventsResult with AWS::API::ResultParser {
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Event]', traits => ['Unwrapped'], xmlname => 'Event');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::RDS::DescribeOptionGroupOptionsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has OptionGroupOptions => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionGroupOption]', traits => ['Unwrapped'], xmlname => 'OptionGroupOption');

}
class Aws::RDS::DescribeOptionGroupsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has OptionGroupsList => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionGroup]', traits => ['Unwrapped'], xmlname => 'OptionGroup');

}
class Aws::RDS::DescribeOrderableDBInstanceOptionsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has OrderableDBInstanceOptions => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OrderableDBInstanceOption]', traits => ['Unwrapped'], xmlname => 'OrderableDBInstanceOption');

}
class Aws::RDS::DescribeReservedDBInstancesResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedDBInstances => (is => 'ro', isa => 'ArrayRef[Aws::RDS::ReservedDBInstance]', traits => ['Unwrapped'], xmlname => 'ReservedDBInstance');

}
class Aws::RDS::DescribeReservedDBInstancesOfferingsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedDBInstancesOfferings => (is => 'ro', isa => 'ArrayRef[Aws::RDS::ReservedDBInstancesOffering]', traits => ['Unwrapped'], xmlname => 'ReservedDBInstancesOffering');

}
class Aws::RDS::DownloadDBLogFilePortionResult with AWS::API::ResultParser {
  has AdditionalDataPending => (is => 'ro', isa => 'Str');
  has LogFileData => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::RDS::ListTagsForResourceResult with AWS::API::ResultParser {
  has TagList => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['Unwrapped'], xmlname => 'Tag');

}
class Aws::RDS::ModifyDBInstanceResult with AWS::API::ResultParser {
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
class Aws::RDS::ModifyDBParameterGroupResult with AWS::API::ResultParser {
  has DBParameterGroupName => (is => 'ro', isa => 'Str');

}
class Aws::RDS::ModifyDBSubnetGroupResult with AWS::API::ResultParser {
  has DBSubnetGroup => (is => 'ro', isa => 'Aws::RDS::DBSubnetGroup');

}
class Aws::RDS::ModifyEventSubscriptionResult with AWS::API::ResultParser {
  has EventSubscription => (is => 'ro', isa => 'Aws::RDS::EventSubscription');

}
class Aws::RDS::ModifyOptionGroupResult with AWS::API::ResultParser {
  has OptionGroup => (is => 'ro', isa => 'Aws::RDS::OptionGroup');

}
class Aws::RDS::PromoteReadReplicaResult with AWS::API::ResultParser {
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
class Aws::RDS::PurchaseReservedDBInstancesOfferingResult with AWS::API::ResultParser {
  has ReservedDBInstance => (is => 'ro', isa => 'Aws::RDS::ReservedDBInstance');

}
class Aws::RDS::RebootDBInstanceResult with AWS::API::ResultParser {
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
class Aws::RDS::RemoveSourceIdentifierFromSubscriptionResult with AWS::API::ResultParser {
  has EventSubscription => (is => 'ro', isa => 'Aws::RDS::EventSubscription');

}
class Aws::RDS::ResetDBParameterGroupResult with AWS::API::ResultParser {
  has DBParameterGroupName => (is => 'ro', isa => 'Str');

}
class Aws::RDS::RestoreDBInstanceFromDBSnapshotResult with AWS::API::ResultParser {
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
class Aws::RDS::RestoreDBInstanceToPointInTimeResult with AWS::API::ResultParser {
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
class Aws::RDS::RevokeDBSecurityGroupIngressResult with AWS::API::ResultParser {
  has DBSecurityGroup => (is => 'ro', isa => 'Aws::RDS::DBSecurityGroup');

}

class Aws::RDS with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'rds');
  has version => (is => 'ro', isa => 'Str', default => '2013-09-09');
  
  method AddSourceIdentifierToSubscription (%args) {
    my $call = Aws::RDS::AddSourceIdentifierToSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::AddSourceIdentifierToSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method AddTagsToResource (%args) {
    my $call = Aws::RDS::AddTagsToResource->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method AuthorizeDBSecurityGroupIngress (%args) {
    my $call = Aws::RDS::AuthorizeDBSecurityGroupIngress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::AuthorizeDBSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CopyDBSnapshot (%args) {
    my $call = Aws::RDS::CopyDBSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::CopyDBSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateDBInstance (%args) {
    my $call = Aws::RDS::CreateDBInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::CreateDBInstanceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateDBInstanceReadReplica (%args) {
    my $call = Aws::RDS::CreateDBInstanceReadReplica->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::CreateDBInstanceReadReplicaResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateDBParameterGroup (%args) {
    my $call = Aws::RDS::CreateDBParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::CreateDBParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateDBSecurityGroup (%args) {
    my $call = Aws::RDS::CreateDBSecurityGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::CreateDBSecurityGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateDBSnapshot (%args) {
    my $call = Aws::RDS::CreateDBSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::CreateDBSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateDBSubnetGroup (%args) {
    my $call = Aws::RDS::CreateDBSubnetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::CreateDBSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateEventSubscription (%args) {
    my $call = Aws::RDS::CreateEventSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::CreateEventSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateOptionGroup (%args) {
    my $call = Aws::RDS::CreateOptionGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::CreateOptionGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteDBInstance (%args) {
    my $call = Aws::RDS::DeleteDBInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DeleteDBInstanceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteDBParameterGroup (%args) {
    my $call = Aws::RDS::DeleteDBParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteDBSecurityGroup (%args) {
    my $call = Aws::RDS::DeleteDBSecurityGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteDBSnapshot (%args) {
    my $call = Aws::RDS::DeleteDBSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DeleteDBSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteDBSubnetGroup (%args) {
    my $call = Aws::RDS::DeleteDBSubnetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteEventSubscription (%args) {
    my $call = Aws::RDS::DeleteEventSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DeleteEventSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteOptionGroup (%args) {
    my $call = Aws::RDS::DeleteOptionGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DescribeDBEngineVersions (%args) {
    my $call = Aws::RDS::DescribeDBEngineVersions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeDBEngineVersionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeDBInstances (%args) {
    my $call = Aws::RDS::DescribeDBInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeDBInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeDBLogFiles (%args) {
    my $call = Aws::RDS::DescribeDBLogFiles->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeDBLogFilesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeDBParameterGroups (%args) {
    my $call = Aws::RDS::DescribeDBParameterGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeDBParameterGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeDBParameters (%args) {
    my $call = Aws::RDS::DescribeDBParameters->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeDBParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeDBSecurityGroups (%args) {
    my $call = Aws::RDS::DescribeDBSecurityGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeDBSecurityGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeDBSnapshots (%args) {
    my $call = Aws::RDS::DescribeDBSnapshots->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeDBSnapshotsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeDBSubnetGroups (%args) {
    my $call = Aws::RDS::DescribeDBSubnetGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeDBSubnetGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeEngineDefaultParameters (%args) {
    my $call = Aws::RDS::DescribeEngineDefaultParameters->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeEngineDefaultParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeEventCategories (%args) {
    my $call = Aws::RDS::DescribeEventCategories->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeEventCategoriesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeEvents (%args) {
    my $call = Aws::RDS::DescribeEvents->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeEventsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeEventSubscriptions (%args) {
    my $call = Aws::RDS::DescribeEventSubscriptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeEventSubscriptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeOptionGroupOptions (%args) {
    my $call = Aws::RDS::DescribeOptionGroupOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeOptionGroupOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeOptionGroups (%args) {
    my $call = Aws::RDS::DescribeOptionGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeOptionGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeOrderableDBInstanceOptions (%args) {
    my $call = Aws::RDS::DescribeOrderableDBInstanceOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeOrderableDBInstanceOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeReservedDBInstances (%args) {
    my $call = Aws::RDS::DescribeReservedDBInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeReservedDBInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeReservedDBInstancesOfferings (%args) {
    my $call = Aws::RDS::DescribeReservedDBInstancesOfferings->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeReservedDBInstancesOfferingsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DownloadDBLogFilePortion (%args) {
    my $call = Aws::RDS::DownloadDBLogFilePortion->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DownloadDBLogFilePortionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListTagsForResource (%args) {
    my $call = Aws::RDS::ListTagsForResource->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::ListTagsForResourceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifyDBInstance (%args) {
    my $call = Aws::RDS::ModifyDBInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::ModifyDBInstanceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifyDBParameterGroup (%args) {
    my $call = Aws::RDS::ModifyDBParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::ModifyDBParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifyDBSubnetGroup (%args) {
    my $call = Aws::RDS::ModifyDBSubnetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::ModifyDBSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifyEventSubscription (%args) {
    my $call = Aws::RDS::ModifyEventSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::ModifyEventSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifyOptionGroup (%args) {
    my $call = Aws::RDS::ModifyOptionGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::ModifyOptionGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method PromoteReadReplica (%args) {
    my $call = Aws::RDS::PromoteReadReplica->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::PromoteReadReplicaResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method PurchaseReservedDBInstancesOffering (%args) {
    my $call = Aws::RDS::PurchaseReservedDBInstancesOffering->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::PurchaseReservedDBInstancesOfferingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RebootDBInstance (%args) {
    my $call = Aws::RDS::RebootDBInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::RebootDBInstanceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RemoveSourceIdentifierFromSubscription (%args) {
    my $call = Aws::RDS::RemoveSourceIdentifierFromSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::RemoveSourceIdentifierFromSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RemoveTagsFromResource (%args) {
    my $call = Aws::RDS::RemoveTagsFromResource->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ResetDBParameterGroup (%args) {
    my $call = Aws::RDS::ResetDBParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::ResetDBParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RestoreDBInstanceFromDBSnapshot (%args) {
    my $call = Aws::RDS::RestoreDBInstanceFromDBSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::RestoreDBInstanceFromDBSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RestoreDBInstanceToPointInTime (%args) {
    my $call = Aws::RDS::RestoreDBInstanceToPointInTime->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::RestoreDBInstanceToPointInTimeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RevokeDBSecurityGroupIngress (%args) {
    my $call = Aws::RDS::RevokeDBSecurityGroupIngress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::RevokeDBSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
