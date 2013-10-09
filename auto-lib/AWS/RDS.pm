use MooseX::Declare;
use AWS::API;
class AWS::RDS::AvailabilityZone with AWS::API::ResultParser {
  has Name => (is => 'ro', isa => 'Str');
  has ProvisionedIopsCapable => (is => 'ro', isa => 'Str');
}

class AWS::RDS::CharacterSet with AWS::API::ResultParser {
  has CharacterSetDescription => (is => 'ro', isa => 'Str');
  has CharacterSetName => (is => 'ro', isa => 'Str');
}

class AWS::RDS::DBEngineVersion with AWS::API::ResultParser {
  has DBEngineDescription => (is => 'ro', isa => 'Str');
  has DBEngineVersionDescription => (is => 'ro', isa => 'Str');
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DefaultCharacterSet => (is => 'ro', isa => 'AWS::RDS::CharacterSet');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has SupportedCharacterSets => (is => 'ro', isa => 'ArrayRef[AWS::RDS::CharacterSet]');
}

class AWS::RDS::DBInstance with AWS::API::ResultParser {
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Str');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DBInstanceStatus => (is => 'ro', isa => 'Str');
  has DBName => (is => 'ro', isa => 'Str');
  has DBParameterGroups => (is => 'ro', isa => 'ArrayRef[AWS::RDS::DBParameterGroupStatus]');
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[AWS::RDS::DBSecurityGroupMembership]');
  has DBSubnetGroup => (is => 'ro', isa => 'AWS::RDS::DBSubnetGroup');
  has Endpoint => (is => 'ro', isa => 'AWS::RDS::Endpoint');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has InstanceCreateTime => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has LatestRestorableTime => (is => 'ro', isa => 'Str');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Str');
  has OptionGroupMemberships => (is => 'ro', isa => 'ArrayRef[AWS::RDS::OptionGroupMembership]');
  has PendingModifiedValues => (is => 'ro', isa => 'AWS::RDS::PendingModifiedValues');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Str');
  has ReadReplicaDBInstanceIdentifiers => (is => 'ro', isa => 'ArrayRef[Str]');
  has ReadReplicaSourceDBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has SecondaryAvailabilityZone => (is => 'ro', isa => 'Str');
  has StatusInfos => (is => 'ro', isa => 'ArrayRef[AWS::RDS::DBInstanceStatusInfo]');
  has VpcSecurityGroups => (is => 'ro', isa => 'ArrayRef[AWS::RDS::VpcSecurityGroupMembership]');
}

class AWS::RDS::DBInstanceStatusInfo with AWS::API::ResultParser {
  has Message => (is => 'ro', isa => 'Str');
  has Normal => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusType => (is => 'ro', isa => 'Str');
}

class AWS::RDS::DBParameterGroup with AWS::API::ResultParser {
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
}

class AWS::RDS::DBParameterGroupStatus with AWS::API::ResultParser {
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterApplyStatus => (is => 'ro', isa => 'Str');
}

class AWS::RDS::DBSecurityGroup with AWS::API::ResultParser {
  has DBSecurityGroupDescription => (is => 'ro', isa => 'Str');
  has DBSecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroups => (is => 'ro', isa => 'ArrayRef[AWS::RDS::EC2SecurityGroup]');
  has IPRanges => (is => 'ro', isa => 'ArrayRef[AWS::RDS::IPRange]');
  has OwnerId => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
}

class AWS::RDS::DBSecurityGroupMembership with AWS::API::ResultParser {
  has DBSecurityGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class AWS::RDS::DBSnapshot with AWS::API::ResultParser {
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
  has Port => (is => 'ro', isa => 'Int');
  has SnapshotCreateTime => (is => 'ro', isa => 'Str');
  has SnapshotType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
}

class AWS::RDS::DBSubnetGroup with AWS::API::ResultParser {
  has DBSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has SubnetGroupStatus => (is => 'ro', isa => 'Str');
  has Subnets => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Subnet]');
  has VpcId => (is => 'ro', isa => 'Str');
}

class AWS::RDS::DescribeDBLogFilesDetails with AWS::API::ResultParser {
  has LastWritten => (is => 'ro', isa => 'Num');
  has LogFileName => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Num');
}

class AWS::RDS::EC2SecurityGroup with AWS::API::ResultParser {
  has EC2SecurityGroupId => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class AWS::RDS::Endpoint with AWS::API::ResultParser {
  has Address => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
}

class AWS::RDS::EngineDefaults with AWS::API::ResultParser {
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Parameter]');
}

class AWS::RDS::Event with AWS::API::ResultParser {
  has Date => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has Message => (is => 'ro', isa => 'Str');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
}

class AWS::RDS::EventCategoriesMap with AWS::API::ResultParser {
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has SourceType => (is => 'ro', isa => 'Str');
}

class AWS::RDS::EventSubscription with AWS::API::ResultParser {
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

class AWS::RDS::Filter with AWS::API::ResultParser {
  has FilterName => (is => 'ro', isa => 'Str', required => 1);
  has FilterValue => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
}

class AWS::RDS::IPRange with AWS::API::ResultParser {
  has CIDRIP => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class AWS::RDS::Option with AWS::API::ResultParser {
  has DBSecurityGroupMemberships => (is => 'ro', isa => 'ArrayRef[AWS::RDS::DBSecurityGroupMembership]');
  has OptionDescription => (is => 'ro', isa => 'Str');
  has OptionName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[AWS::RDS::OptionSetting]');
  has Permanent => (is => 'ro', isa => 'Str');
  has Persistent => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has VpcSecurityGroupMemberships => (is => 'ro', isa => 'ArrayRef[AWS::RDS::VpcSecurityGroupMembership]');
}

class AWS::RDS::OptionConfiguration with AWS::API::ResultParser {
  has DBSecurityGroupMemberships => (is => 'ro', isa => 'ArrayRef[Str]');
  has OptionName => (is => 'ro', isa => 'Str', required => 1);
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[AWS::RDS::OptionSetting]');
  has Port => (is => 'ro', isa => 'Int');
  has VpcSecurityGroupMemberships => (is => 'ro', isa => 'ArrayRef[Str]');
}

class AWS::RDS::OptionGroup with AWS::API::ResultParser {
  has AllowsVpcAndNonVpcInstanceMemberships => (is => 'ro', isa => 'Str');
  has EngineName => (is => 'ro', isa => 'Str');
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has OptionGroupDescription => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Option]');
  has VpcId => (is => 'ro', isa => 'Str');
}

class AWS::RDS::OptionGroupMembership with AWS::API::ResultParser {
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class AWS::RDS::OptionGroupOption with AWS::API::ResultParser {
  has DefaultPort => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str');
  has EngineName => (is => 'ro', isa => 'Str');
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has MinimumRequiredMinorEngineVersion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OptionGroupOptionSettings => (is => 'ro', isa => 'ArrayRef[AWS::RDS::OptionGroupOptionSetting]');
  has OptionsDependedOn => (is => 'ro', isa => 'ArrayRef[Str]');
  has Permanent => (is => 'ro', isa => 'Str');
  has Persistent => (is => 'ro', isa => 'Str');
  has PortRequired => (is => 'ro', isa => 'Str');
}

class AWS::RDS::OptionGroupOptionSetting with AWS::API::ResultParser {
  has AllowedValues => (is => 'ro', isa => 'Str');
  has ApplyType => (is => 'ro', isa => 'Str');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Str');
  has SettingDescription => (is => 'ro', isa => 'Str');
  has SettingName => (is => 'ro', isa => 'Str');
}

class AWS::RDS::OptionSetting with AWS::API::ResultParser {
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

class AWS::RDS::OrderableDBInstanceOption with AWS::API::ResultParser {
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[AWS::RDS::AvailabilityZone]');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MultiAZCapable => (is => 'ro', isa => 'Str');
  has ReadReplicaCapable => (is => 'ro', isa => 'Str');
  has Vpc => (is => 'ro', isa => 'Str');
}

class AWS::RDS::Parameter with AWS::API::ResultParser {
  has AllowedValues => (is => 'ro', isa => 'Str');
  has ApplyMethod => (is => 'ro', isa => 'Str');
  has ApplyType => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Str');
  has MinimumEngineVersion => (is => 'ro', isa => 'Str');
  has ParameterName => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
}

class AWS::RDS::PendingModifiedValues with AWS::API::ResultParser {
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

class AWS::RDS::RecurringCharge with AWS::API::ResultParser {
  has RecurringChargeAmount => (is => 'ro', isa => 'Int');
  has RecurringChargeFrequency => (is => 'ro', isa => 'Str');
}

class AWS::RDS::ReservedDBInstance with AWS::API::ResultParser {
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceCount => (is => 'ro', isa => 'Int');
  has Duration => (is => 'ro', isa => 'Int');
  has FixedPrice => (is => 'ro', isa => 'Int');
  has MultiAZ => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[AWS::RDS::RecurringCharge]');
  has ReservedDBInstanceId => (is => 'ro', isa => 'Str');
  has ReservedDBInstancesOfferingId => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has UsagePrice => (is => 'ro', isa => 'Int');
}

class AWS::RDS::ReservedDBInstancesOffering with AWS::API::ResultParser {
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has FixedPrice => (is => 'ro', isa => 'Int');
  has MultiAZ => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[AWS::RDS::RecurringCharge]');
  has ReservedDBInstancesOfferingId => (is => 'ro', isa => 'Str');
  has UsagePrice => (is => 'ro', isa => 'Int');
}

class AWS::RDS::Subnet with AWS::API::ResultParser {
  has SubnetAvailabilityZone => (is => 'ro', isa => 'AWS::RDS::AvailabilityZone');
  has SubnetIdentifier => (is => 'ro', isa => 'Str');
  has SubnetStatus => (is => 'ro', isa => 'Str');
}

class AWS::RDS::Tag with AWS::API::ResultParser {
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

class AWS::RDS::VpcSecurityGroupMembership with AWS::API::ResultParser {
  has Status => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupId => (is => 'ro', isa => 'Str');
}

class AWS::RDS::AddSourceIdentifierToSubscription {
  has SourceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddSourceIdentifierToSubscription');
  has _returns => (isa => 'AWS::RDS::AddSourceIdentifierToSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddSourceIdentifierToSubscriptionResult');
}
class AWS::RDS::AddTagsToResource {
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Tag]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddTagsToResource');
  has _returns => (isa => 'AWS::RDS::AddTagsToResourceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddTagsToResourceResult');
}
class AWS::RDS::AuthorizeDBSecurityGroupIngress {
  has CIDRIP => (is => 'ro', isa => 'Str');
  has DBSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupId => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeDBSecurityGroupIngress');
  has _returns => (isa => 'AWS::RDS::AuthorizeDBSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeDBSecurityGroupIngressResult');
}
class AWS::RDS::CopyDBSnapshot {
  has SourceDBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Tag]');
  has TargetDBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CopyDBSnapshot');
  has _returns => (isa => 'AWS::RDS::CopyDBSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CopyDBSnapshotResult');
}
class AWS::RDS::CreateDBInstance {
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
  has MasterUserPassword => (is => 'ro', isa => 'Str', required => 1);
  has MasterUsername => (is => 'ro', isa => 'Str', required => 1);
  has MultiAZ => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Tag]');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBInstance');
  has _returns => (isa => 'AWS::RDS::CreateDBInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceResult');
}
class AWS::RDS::CreateDBInstanceReadReplica {
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Str');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Iops => (is => 'ro', isa => 'Int');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Str');
  has SourceDBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceReadReplica');
  has _returns => (isa => 'AWS::RDS::CreateDBInstanceReadReplicaResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceReadReplicaResult');
}
class AWS::RDS::CreateDBParameterGroup {
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBParameterGroup');
  has _returns => (isa => 'AWS::RDS::CreateDBParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBParameterGroupResult');
}
class AWS::RDS::CreateDBSecurityGroup {
  has DBSecurityGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has DBSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBSecurityGroup');
  has _returns => (isa => 'AWS::RDS::CreateDBSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBSecurityGroupResult');
}
class AWS::RDS::CreateDBSnapshot {
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBSnapshot');
  has _returns => (isa => 'AWS::RDS::CreateDBSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBSnapshotResult');
}
class AWS::RDS::CreateDBSubnetGroup {
  has DBSubnetGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has DBSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBSubnetGroup');
  has _returns => (isa => 'AWS::RDS::CreateDBSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBSubnetGroupResult');
}
class AWS::RDS::CreateEventSubscription {
  has Enabled => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has SnsTopicArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has SourceType => (is => 'ro', isa => 'Str');
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEventSubscription');
  has _returns => (isa => 'AWS::RDS::CreateEventSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateEventSubscriptionResult');
}
class AWS::RDS::CreateOptionGroup {
  has EngineName => (is => 'ro', isa => 'Str', required => 1);
  has MajorEngineVersion => (is => 'ro', isa => 'Str', required => 1);
  has OptionGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has OptionGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOptionGroup');
  has _returns => (isa => 'AWS::RDS::CreateOptionGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateOptionGroupResult');
}
class AWS::RDS::DeleteDBInstance {
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has FinalDBSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SkipFinalSnapshot => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBInstance');
  has _returns => (isa => 'AWS::RDS::DeleteDBInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBInstanceResult');
}
class AWS::RDS::DeleteDBParameterGroup {
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBParameterGroup');
  has _returns => (isa => 'AWS::RDS::DeleteDBParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBParameterGroupResult');
}
class AWS::RDS::DeleteDBSecurityGroup {
  has DBSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBSecurityGroup');
  has _returns => (isa => 'AWS::RDS::DeleteDBSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBSecurityGroupResult');
}
class AWS::RDS::DeleteDBSnapshot {
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBSnapshot');
  has _returns => (isa => 'AWS::RDS::DeleteDBSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBSnapshotResult');
}
class AWS::RDS::DeleteDBSubnetGroup {
  has DBSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBSubnetGroup');
  has _returns => (isa => 'AWS::RDS::DeleteDBSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBSubnetGroupResult');
}
class AWS::RDS::DeleteEventSubscription {
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEventSubscription');
  has _returns => (isa => 'AWS::RDS::DeleteEventSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteEventSubscriptionResult');
}
class AWS::RDS::DeleteOptionGroup {
  has OptionGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteOptionGroup');
  has _returns => (isa => 'AWS::RDS::DeleteOptionGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteOptionGroupResult');
}
class AWS::RDS::DescribeDBEngineVersions {
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DefaultOnly => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has ListSupportedCharacterSets => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBEngineVersions');
  has _returns => (isa => 'AWS::RDS::DescribeDBEngineVersionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBEngineVersionsResult');
}
class AWS::RDS::DescribeDBInstances {
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBInstances');
  has _returns => (isa => 'AWS::RDS::DescribeDBInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBInstancesResult');
}
class AWS::RDS::DescribeDBLogFiles {
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has FileLastWritten => (is => 'ro', isa => 'Num');
  has FileSize => (is => 'ro', isa => 'Num');
  has FilenameContains => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBLogFiles');
  has _returns => (isa => 'AWS::RDS::DescribeDBLogFilesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBLogFilesResult');
}
class AWS::RDS::DescribeDBParameterGroups {
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBParameterGroups');
  has _returns => (isa => 'AWS::RDS::DescribeDBParameterGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBParameterGroupsResult');
}
class AWS::RDS::DescribeDBParameters {
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has Source => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBParameters');
  has _returns => (isa => 'AWS::RDS::DescribeDBParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBParametersResult');
}
class AWS::RDS::DescribeDBSecurityGroups {
  has DBSecurityGroupName => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBSecurityGroups');
  has _returns => (isa => 'AWS::RDS::DescribeDBSecurityGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBSecurityGroupsResult');
}
class AWS::RDS::DescribeDBSnapshots {
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SnapshotType => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBSnapshots');
  has _returns => (isa => 'AWS::RDS::DescribeDBSnapshotsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBSnapshotsResult');
}
class AWS::RDS::DescribeDBSubnetGroups {
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBSubnetGroups');
  has _returns => (isa => 'AWS::RDS::DescribeDBSubnetGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBSubnetGroupsResult');
}
class AWS::RDS::DescribeEngineDefaultParameters {
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParameters');
  has _returns => (isa => 'AWS::RDS::DescribeEngineDefaultParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParametersResult');
}
class AWS::RDS::DescribeEventCategories {
  has SourceType => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventCategories');
  has _returns => (isa => 'AWS::RDS::DescribeEventCategoriesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventCategoriesResult');
}
class AWS::RDS::DescribeEventSubscriptions {
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SubscriptionName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventSubscriptions');
  has _returns => (isa => 'AWS::RDS::DescribeEventSubscriptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventSubscriptionsResult');
}
class AWS::RDS::DescribeEvents {
  has Duration => (is => 'ro', isa => 'Int');
  has EndTime => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEvents');
  has _returns => (isa => 'AWS::RDS::DescribeEventsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventsResult');
}
class AWS::RDS::DescribeOptionGroupOptions {
  has EngineName => (is => 'ro', isa => 'Str', required => 1);
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOptionGroupOptions');
  has _returns => (isa => 'AWS::RDS::DescribeOptionGroupOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeOptionGroupOptionsResult');
}
class AWS::RDS::DescribeOptionGroups {
  has EngineName => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Filter]');
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has OptionGroupName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOptionGroups');
  has _returns => (isa => 'AWS::RDS::DescribeOptionGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeOptionGroupsResult');
}
class AWS::RDS::DescribeOrderableDBInstanceOptions {
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has Vpc => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOrderableDBInstanceOptions');
  has _returns => (isa => 'AWS::RDS::DescribeOrderableDBInstanceOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeOrderableDBInstanceOptionsResult');
}
class AWS::RDS::DescribeReservedDBInstances {
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has MultiAZ => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has ReservedDBInstanceId => (is => 'ro', isa => 'Str');
  has ReservedDBInstancesOfferingId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedDBInstances');
  has _returns => (isa => 'AWS::RDS::DescribeReservedDBInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedDBInstancesResult');
}
class AWS::RDS::DescribeReservedDBInstancesOfferings {
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has MultiAZ => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has ReservedDBInstancesOfferingId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedDBInstancesOfferings');
  has _returns => (isa => 'AWS::RDS::DescribeReservedDBInstancesOfferingsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedDBInstancesOfferingsResult');
}
class AWS::RDS::DownloadDBLogFilePortion {
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has LogFileName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has NumberOfLines => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DownloadDBLogFilePortion');
  has _returns => (isa => 'AWS::RDS::DownloadDBLogFilePortionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DownloadDBLogFilePortionResult');
}
class AWS::RDS::ListTagsForResource {
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  has _returns => (isa => 'AWS::RDS::ListTagsForResourceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListTagsForResourceResult');
}
class AWS::RDS::ModifyDBInstance {
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
  has _returns => (isa => 'AWS::RDS::ModifyDBInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBInstanceResult');
}
class AWS::RDS::ModifyDBParameterGroup {
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Parameter]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBParameterGroup');
  has _returns => (isa => 'AWS::RDS::ModifyDBParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBParameterGroupResult');
}
class AWS::RDS::ModifyDBSubnetGroup {
  has DBSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBSubnetGroup');
  has _returns => (isa => 'AWS::RDS::ModifyDBSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBSubnetGroupResult');
}
class AWS::RDS::ModifyEventSubscription {
  has Enabled => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyEventSubscription');
  has _returns => (isa => 'AWS::RDS::ModifyEventSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyEventSubscriptionResult');
}
class AWS::RDS::ModifyOptionGroup {
  has ApplyImmediately => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str', required => 1);
  has OptionsToInclude => (is => 'ro', isa => 'ArrayRef[AWS::RDS::OptionConfiguration]');
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyOptionGroup');
  has _returns => (isa => 'AWS::RDS::ModifyOptionGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyOptionGroupResult');
}
class AWS::RDS::PromoteReadReplica {
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'PromoteReadReplica');
  has _returns => (isa => 'AWS::RDS::PromoteReadReplicaResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PromoteReadReplicaResult');
}
class AWS::RDS::PurchaseReservedDBInstancesOffering {
  has DBInstanceCount => (is => 'ro', isa => 'Int');
  has ReservedDBInstanceId => (is => 'ro', isa => 'Str');
  has ReservedDBInstancesOfferingId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedDBInstancesOffering');
  has _returns => (isa => 'AWS::RDS::PurchaseReservedDBInstancesOfferingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PurchaseReservedDBInstancesOfferingResult');
}
class AWS::RDS::RebootDBInstance {
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ForceFailover => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RebootDBInstance');
  has _returns => (isa => 'AWS::RDS::RebootDBInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RebootDBInstanceResult');
}
class AWS::RDS::RemoveSourceIdentifierFromSubscription {
  has SourceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveSourceIdentifierFromSubscription');
  has _returns => (isa => 'AWS::RDS::RemoveSourceIdentifierFromSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveSourceIdentifierFromSubscriptionResult');
}
class AWS::RDS::RemoveTagsFromResource {
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTagsFromResource');
  has _returns => (isa => 'AWS::RDS::RemoveTagsFromResourceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveTagsFromResourceResult');
}
class AWS::RDS::ResetDBParameterGroup {
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Parameter]');
  has ResetAllParameters => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResetDBParameterGroup');
  has _returns => (isa => 'AWS::RDS::ResetDBParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResetDBParameterGroupResult');
}
class AWS::RDS::RestoreDBInstanceFromDBSnapshot {
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
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceFromDBSnapshot');
  has _returns => (isa => 'AWS::RDS::RestoreDBInstanceFromDBSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceFromDBSnapshotResult');
}
class AWS::RDS::RestoreDBInstanceToPointInTime {
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
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Tag]');
  has TargetDBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has UseLatestRestorableTime => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceToPointInTime');
  has _returns => (isa => 'AWS::RDS::RestoreDBInstanceToPointInTimeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceToPointInTimeResult');
}
class AWS::RDS::RevokeDBSecurityGroupIngress {
  has CIDRIP => (is => 'ro', isa => 'Str');
  has DBSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupId => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeDBSecurityGroupIngress');
  has _returns => (isa => 'AWS::RDS::RevokeDBSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeDBSecurityGroupIngressResult');
}
class AWS::RDS::AddSourceIdentifierToSubscriptionResult with AWS::API::ResultParser {
  has EventSubscription => (is => 'ro', isa => 'AWS::RDS::EventSubscription');
}
class AWS::RDS::AuthorizeDBSecurityGroupIngressResult with AWS::API::ResultParser {
  has DBSecurityGroup => (is => 'ro', isa => 'AWS::RDS::DBSecurityGroup');
}
class AWS::RDS::CopyDBSnapshotResult with AWS::API::ResultParser {
  has DBSnapshot => (is => 'ro', isa => 'AWS::RDS::DBSnapshot');
}
class AWS::RDS::CreateDBInstanceResult with AWS::API::ResultParser {
  has DBInstance => (is => 'ro', isa => 'AWS::RDS::DBInstance');
}
class AWS::RDS::CreateDBInstanceReadReplicaResult with AWS::API::ResultParser {
  has DBInstance => (is => 'ro', isa => 'AWS::RDS::DBInstance');
}
class AWS::RDS::CreateDBParameterGroupResult with AWS::API::ResultParser {
  has DBParameterGroup => (is => 'ro', isa => 'AWS::RDS::DBParameterGroup');
}
class AWS::RDS::CreateDBSecurityGroupResult with AWS::API::ResultParser {
  has DBSecurityGroup => (is => 'ro', isa => 'AWS::RDS::DBSecurityGroup');
}
class AWS::RDS::CreateDBSnapshotResult with AWS::API::ResultParser {
  has DBSnapshot => (is => 'ro', isa => 'AWS::RDS::DBSnapshot');
}
class AWS::RDS::CreateDBSubnetGroupResult with AWS::API::ResultParser {
  has DBSubnetGroup => (is => 'ro', isa => 'AWS::RDS::DBSubnetGroup');
}
class AWS::RDS::CreateEventSubscriptionResult with AWS::API::ResultParser {
  has EventSubscription => (is => 'ro', isa => 'AWS::RDS::EventSubscription');
}
class AWS::RDS::CreateOptionGroupResult with AWS::API::ResultParser {
  has OptionGroup => (is => 'ro', isa => 'AWS::RDS::OptionGroup');
}
class AWS::RDS::DeleteDBInstanceResult with AWS::API::ResultParser {
  has DBInstance => (is => 'ro', isa => 'AWS::RDS::DBInstance');
}
class AWS::RDS::DeleteDBSnapshotResult with AWS::API::ResultParser {
  has DBSnapshot => (is => 'ro', isa => 'AWS::RDS::DBSnapshot');
}
class AWS::RDS::DeleteEventSubscriptionResult with AWS::API::ResultParser {
  has EventSubscription => (is => 'ro', isa => 'AWS::RDS::EventSubscription');
}
class AWS::RDS::DescribeDBEngineVersionsResult with AWS::API::ResultParser {
  has DBEngineVersions => (is => 'ro', isa => 'ArrayRef[AWS::RDS::DBEngineVersion]');
  has Marker => (is => 'ro', isa => 'Str');
}
class AWS::RDS::DescribeDBInstancesResult with AWS::API::ResultParser {
  has DBInstances => (is => 'ro', isa => 'ArrayRef[AWS::RDS::DBInstance]');
  has Marker => (is => 'ro', isa => 'Str');
}
class AWS::RDS::DescribeDBLogFilesResult with AWS::API::ResultParser {
  has DescribeDBLogFiles => (is => 'ro', isa => 'ArrayRef[AWS::RDS::DescribeDBLogFilesDetails]');
  has Marker => (is => 'ro', isa => 'Str');
}
class AWS::RDS::DescribeDBParameterGroupsResult with AWS::API::ResultParser {
  has DBParameterGroups => (is => 'ro', isa => 'ArrayRef[AWS::RDS::DBParameterGroup]');
  has Marker => (is => 'ro', isa => 'Str');
}
class AWS::RDS::DescribeDBParametersResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Parameter]');
}
class AWS::RDS::DescribeDBSecurityGroupsResult with AWS::API::ResultParser {
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[AWS::RDS::DBSecurityGroup]');
  has Marker => (is => 'ro', isa => 'Str');
}
class AWS::RDS::DescribeDBSnapshotsResult with AWS::API::ResultParser {
  has DBSnapshots => (is => 'ro', isa => 'ArrayRef[AWS::RDS::DBSnapshot]');
  has Marker => (is => 'ro', isa => 'Str');
}
class AWS::RDS::DescribeDBSubnetGroupsResult with AWS::API::ResultParser {
  has DBSubnetGroups => (is => 'ro', isa => 'ArrayRef[AWS::RDS::DBSubnetGroup]');
  has Marker => (is => 'ro', isa => 'Str');
}
class AWS::RDS::DescribeEngineDefaultParametersResult with AWS::API::ResultParser {
  has EngineDefaults => (is => 'ro', isa => 'AWS::RDS::EngineDefaults');
}
class AWS::RDS::DescribeEventCategoriesResult with AWS::API::ResultParser {
  has EventCategoriesMapList => (is => 'ro', isa => 'ArrayRef[AWS::RDS::EventCategoriesMap]');
}
class AWS::RDS::DescribeEventSubscriptionsResult with AWS::API::ResultParser {
  has EventSubscriptionsList => (is => 'ro', isa => 'ArrayRef[AWS::RDS::EventSubscription]');
  has Marker => (is => 'ro', isa => 'Str');
}
class AWS::RDS::DescribeEventsResult with AWS::API::ResultParser {
  has Events => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Event]');
  has Marker => (is => 'ro', isa => 'Str');
}
class AWS::RDS::DescribeOptionGroupOptionsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has OptionGroupOptions => (is => 'ro', isa => 'ArrayRef[AWS::RDS::OptionGroupOption]');
}
class AWS::RDS::DescribeOptionGroupsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has OptionGroupsList => (is => 'ro', isa => 'ArrayRef[AWS::RDS::OptionGroup]');
}
class AWS::RDS::DescribeOrderableDBInstanceOptionsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has OrderableDBInstanceOptions => (is => 'ro', isa => 'ArrayRef[AWS::RDS::OrderableDBInstanceOption]');
}
class AWS::RDS::DescribeReservedDBInstancesResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedDBInstances => (is => 'ro', isa => 'ArrayRef[AWS::RDS::ReservedDBInstance]');
}
class AWS::RDS::DescribeReservedDBInstancesOfferingsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedDBInstancesOfferings => (is => 'ro', isa => 'ArrayRef[AWS::RDS::ReservedDBInstancesOffering]');
}
class AWS::RDS::DownloadDBLogFilePortionResult with AWS::API::ResultParser {
  has AdditionalDataPending => (is => 'ro', isa => 'Str');
  has LogFileData => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
}
class AWS::RDS::ListTagsForResourceResult with AWS::API::ResultParser {
  has TagList => (is => 'ro', isa => 'ArrayRef[AWS::RDS::Tag]');
}
class AWS::RDS::ModifyDBInstanceResult with AWS::API::ResultParser {
  has DBInstance => (is => 'ro', isa => 'AWS::RDS::DBInstance');
}
class AWS::RDS::ModifyDBParameterGroupResult with AWS::API::ResultParser {
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
}
class AWS::RDS::ModifyDBSubnetGroupResult with AWS::API::ResultParser {
  has DBSubnetGroup => (is => 'ro', isa => 'AWS::RDS::DBSubnetGroup');
}
class AWS::RDS::ModifyEventSubscriptionResult with AWS::API::ResultParser {
  has EventSubscription => (is => 'ro', isa => 'AWS::RDS::EventSubscription');
}
class AWS::RDS::ModifyOptionGroupResult with AWS::API::ResultParser {
  has OptionGroup => (is => 'ro', isa => 'AWS::RDS::OptionGroup');
}
class AWS::RDS::PromoteReadReplicaResult with AWS::API::ResultParser {
  has DBInstance => (is => 'ro', isa => 'AWS::RDS::DBInstance');
}
class AWS::RDS::PurchaseReservedDBInstancesOfferingResult with AWS::API::ResultParser {
  has ReservedDBInstance => (is => 'ro', isa => 'AWS::RDS::ReservedDBInstance');
}
class AWS::RDS::RebootDBInstanceResult with AWS::API::ResultParser {
  has DBInstance => (is => 'ro', isa => 'AWS::RDS::DBInstance');
}
class AWS::RDS::RemoveSourceIdentifierFromSubscriptionResult with AWS::API::ResultParser {
  has EventSubscription => (is => 'ro', isa => 'AWS::RDS::EventSubscription');
}
class AWS::RDS::ResetDBParameterGroupResult with AWS::API::ResultParser {
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
}
class AWS::RDS::RestoreDBInstanceFromDBSnapshotResult with AWS::API::ResultParser {
  has DBInstance => (is => 'ro', isa => 'AWS::RDS::DBInstance');
}
class AWS::RDS::RestoreDBInstanceToPointInTimeResult with AWS::API::ResultParser {
  has DBInstance => (is => 'ro', isa => 'AWS::RDS::DBInstance');
}
class AWS::RDS::RevokeDBSecurityGroupIngressResult with AWS::API::ResultParser {
  has DBSecurityGroup => (is => 'ro', isa => 'AWS::RDS::DBSecurityGroup');
}
class AWS::RDS with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller) {
  has service => (is => 'ro', isa => 'Str', default => 'rds');
  has version => (is => 'ro', isa => 'Str', default => '2013-05-15');

  method AddSourceIdentifierToSubscription (%args) {
    my $call = AWS::RDS::AddSourceIdentifierToSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::AddSourceIdentifierToSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method AddTagsToResource (%args) {
    my $call = AWS::RDS::AddTagsToResource->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::AddTagsToResourceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method AuthorizeDBSecurityGroupIngress (%args) {
    my $call = AWS::RDS::AuthorizeDBSecurityGroupIngress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::AuthorizeDBSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CopyDBSnapshot (%args) {
    my $call = AWS::RDS::CopyDBSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::CopyDBSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateDBInstance (%args) {
    my $call = AWS::RDS::CreateDBInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::CreateDBInstanceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateDBInstanceReadReplica (%args) {
    my $call = AWS::RDS::CreateDBInstanceReadReplica->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::CreateDBInstanceReadReplicaResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateDBParameterGroup (%args) {
    my $call = AWS::RDS::CreateDBParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::CreateDBParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateDBSecurityGroup (%args) {
    my $call = AWS::RDS::CreateDBSecurityGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::CreateDBSecurityGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateDBSnapshot (%args) {
    my $call = AWS::RDS::CreateDBSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::CreateDBSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateDBSubnetGroup (%args) {
    my $call = AWS::RDS::CreateDBSubnetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::CreateDBSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateEventSubscription (%args) {
    my $call = AWS::RDS::CreateEventSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::CreateEventSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateOptionGroup (%args) {
    my $call = AWS::RDS::CreateOptionGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::CreateOptionGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteDBInstance (%args) {
    my $call = AWS::RDS::DeleteDBInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DeleteDBInstanceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteDBParameterGroup (%args) {
    my $call = AWS::RDS::DeleteDBParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DeleteDBParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteDBSecurityGroup (%args) {
    my $call = AWS::RDS::DeleteDBSecurityGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DeleteDBSecurityGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteDBSnapshot (%args) {
    my $call = AWS::RDS::DeleteDBSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DeleteDBSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteDBSubnetGroup (%args) {
    my $call = AWS::RDS::DeleteDBSubnetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DeleteDBSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteEventSubscription (%args) {
    my $call = AWS::RDS::DeleteEventSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DeleteEventSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteOptionGroup (%args) {
    my $call = AWS::RDS::DeleteOptionGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DeleteOptionGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeDBEngineVersions (%args) {
    my $call = AWS::RDS::DescribeDBEngineVersions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DescribeDBEngineVersionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeDBInstances (%args) {
    my $call = AWS::RDS::DescribeDBInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DescribeDBInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeDBLogFiles (%args) {
    my $call = AWS::RDS::DescribeDBLogFiles->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DescribeDBLogFilesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeDBParameterGroups (%args) {
    my $call = AWS::RDS::DescribeDBParameterGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DescribeDBParameterGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeDBParameters (%args) {
    my $call = AWS::RDS::DescribeDBParameters->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DescribeDBParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeDBSecurityGroups (%args) {
    my $call = AWS::RDS::DescribeDBSecurityGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DescribeDBSecurityGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeDBSnapshots (%args) {
    my $call = AWS::RDS::DescribeDBSnapshots->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DescribeDBSnapshotsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeDBSubnetGroups (%args) {
    my $call = AWS::RDS::DescribeDBSubnetGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DescribeDBSubnetGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeEngineDefaultParameters (%args) {
    my $call = AWS::RDS::DescribeEngineDefaultParameters->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DescribeEngineDefaultParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeEventCategories (%args) {
    my $call = AWS::RDS::DescribeEventCategories->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DescribeEventCategoriesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeEventSubscriptions (%args) {
    my $call = AWS::RDS::DescribeEventSubscriptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DescribeEventSubscriptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeEvents (%args) {
    my $call = AWS::RDS::DescribeEvents->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DescribeEventsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeOptionGroupOptions (%args) {
    my $call = AWS::RDS::DescribeOptionGroupOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DescribeOptionGroupOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeOptionGroups (%args) {
    my $call = AWS::RDS::DescribeOptionGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DescribeOptionGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeOrderableDBInstanceOptions (%args) {
    my $call = AWS::RDS::DescribeOrderableDBInstanceOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DescribeOrderableDBInstanceOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeReservedDBInstances (%args) {
    my $call = AWS::RDS::DescribeReservedDBInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DescribeReservedDBInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeReservedDBInstancesOfferings (%args) {
    my $call = AWS::RDS::DescribeReservedDBInstancesOfferings->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DescribeReservedDBInstancesOfferingsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DownloadDBLogFilePortion (%args) {
    my $call = AWS::RDS::DownloadDBLogFilePortion->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::DownloadDBLogFilePortionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ListTagsForResource (%args) {
    my $call = AWS::RDS::ListTagsForResource->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::ListTagsForResourceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ModifyDBInstance (%args) {
    my $call = AWS::RDS::ModifyDBInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::ModifyDBInstanceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ModifyDBParameterGroup (%args) {
    my $call = AWS::RDS::ModifyDBParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::ModifyDBParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ModifyDBSubnetGroup (%args) {
    my $call = AWS::RDS::ModifyDBSubnetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::ModifyDBSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ModifyEventSubscription (%args) {
    my $call = AWS::RDS::ModifyEventSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::ModifyEventSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ModifyOptionGroup (%args) {
    my $call = AWS::RDS::ModifyOptionGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::ModifyOptionGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method PromoteReadReplica (%args) {
    my $call = AWS::RDS::PromoteReadReplica->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::PromoteReadReplicaResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method PurchaseReservedDBInstancesOffering (%args) {
    my $call = AWS::RDS::PurchaseReservedDBInstancesOffering->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::PurchaseReservedDBInstancesOfferingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RebootDBInstance (%args) {
    my $call = AWS::RDS::RebootDBInstance->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::RebootDBInstanceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RemoveSourceIdentifierFromSubscription (%args) {
    my $call = AWS::RDS::RemoveSourceIdentifierFromSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::RemoveSourceIdentifierFromSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RemoveTagsFromResource (%args) {
    my $call = AWS::RDS::RemoveTagsFromResource->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::RemoveTagsFromResourceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ResetDBParameterGroup (%args) {
    my $call = AWS::RDS::ResetDBParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::ResetDBParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RestoreDBInstanceFromDBSnapshot (%args) {
    my $call = AWS::RDS::RestoreDBInstanceFromDBSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::RestoreDBInstanceFromDBSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RestoreDBInstanceToPointInTime (%args) {
    my $call = AWS::RDS::RestoreDBInstanceToPointInTime->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::RestoreDBInstanceToPointInTimeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RevokeDBSecurityGroupIngress (%args) {
    my $call = AWS::RDS::RevokeDBSecurityGroupIngress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RDS::RevokeDBSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

}

