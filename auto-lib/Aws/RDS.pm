
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::RDS::ApplyMethod', ['immediate','pending-reboot',];
enum 'Aws::RDS::SourceType', ['db-instance','db-parameter-group','db-security-group','db-snapshot',];


package Aws::RDS::AvailabilityZone {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Name => (is => 'ro', isa => 'Str');
  has ProvisionedIopsCapable => (is => 'ro', isa => 'Str');
}

package Aws::RDS::CharacterSet {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has CharacterSetDescription => (is => 'ro', isa => 'Str');
  has CharacterSetName => (is => 'ro', isa => 'Str');
}

package Aws::RDS::DBEngineVersion {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has DBEngineDescription => (is => 'ro', isa => 'Str');
  has DBEngineVersionDescription => (is => 'ro', isa => 'Str');
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DefaultCharacterSet => (is => 'ro', isa => 'Aws::RDS::CharacterSet');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has SupportedCharacterSets => (is => 'ro', isa => 'ArrayRef[Aws::RDS::CharacterSet]');
}

package Aws::RDS::DBInstance {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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

package Aws::RDS::DBInstanceStatusInfo {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Message => (is => 'ro', isa => 'Str');
  has Normal => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusType => (is => 'ro', isa => 'Str');
}

package Aws::RDS::DBParameterGroup {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
}

package Aws::RDS::DBParameterGroupStatus {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterApplyStatus => (is => 'ro', isa => 'Str');
}

package Aws::RDS::DBSecurityGroup {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has DBSecurityGroupDescription => (is => 'ro', isa => 'Str');
  has DBSecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::EC2SecurityGroup]');
  has IPRanges => (is => 'ro', isa => 'ArrayRef[Aws::RDS::IPRange]');
  has OwnerId => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
}

package Aws::RDS::DBSecurityGroupMembership {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has DBSecurityGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

package Aws::RDS::DBSnapshot {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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

package Aws::RDS::DBSubnetGroup {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has DBSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has SubnetGroupStatus => (is => 'ro', isa => 'Str');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Subnet]');
  has VpcId => (is => 'ro', isa => 'Str');
}

package Aws::RDS::DescribeDBLogFilesDetails {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has LastWritten => (is => 'ro', isa => 'Num');
  has LogFileName => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Num');
}

package Aws::RDS::EC2SecurityGroup {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has EC2SecurityGroupId => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

package Aws::RDS::Endpoint {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Address => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
}

package Aws::RDS::EngineDefaults {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Parameter]');
}

package Aws::RDS::Event {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Date => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has Message => (is => 'ro', isa => 'Str');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Aws::RDS::SourceType');
}

package Aws::RDS::EventCategoriesMap {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has SourceType => (is => 'ro', isa => 'Str');
}

package Aws::RDS::EventSubscription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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

package Aws::RDS::IPRange {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has CIDRIP => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

package Aws::RDS::Option {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has DBSecurityGroupMemberships => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSecurityGroupMembership]');
  has OptionDescription => (is => 'ro', isa => 'Str');
  has OptionName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionSetting]');
  has Permanent => (is => 'ro', isa => 'Str');
  has Persistent => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has VpcSecurityGroupMemberships => (is => 'ro', isa => 'ArrayRef[Aws::RDS::VpcSecurityGroupMembership]');
}

package Aws::RDS::OptionConfiguration {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has DBSecurityGroupMemberships => (is => 'ro', isa => 'ArrayRef[Str]');
  has OptionName => (is => 'ro', isa => 'Str', required => 1);
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionSetting]');
  has Port => (is => 'ro', isa => 'Int');
  has VpcSecurityGroupMemberships => (is => 'ro', isa => 'ArrayRef[Str]');
}

package Aws::RDS::OptionGroup {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AllowsVpcAndNonVpcInstanceMemberships => (is => 'ro', isa => 'Str');
  has EngineName => (is => 'ro', isa => 'Str');
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has OptionGroupDescription => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Option]');
  has VpcId => (is => 'ro', isa => 'Str');
}

package Aws::RDS::OptionGroupMembership {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

package Aws::RDS::OptionGroupOption {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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

package Aws::RDS::OptionGroupOptionSetting {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AllowedValues => (is => 'ro', isa => 'Str');
  has ApplyType => (is => 'ro', isa => 'Str');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Str');
  has SettingDescription => (is => 'ro', isa => 'Str');
  has SettingName => (is => 'ro', isa => 'Str');
}

package Aws::RDS::OptionSetting {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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

package Aws::RDS::OrderableDBInstanceOption {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Aws::RDS::AvailabilityZone]');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MultiAZCapable => (is => 'ro', isa => 'Str');
  has ReadReplicaCapable => (is => 'ro', isa => 'Str');
  has Vpc => (is => 'ro', isa => 'Str');
}

package Aws::RDS::Parameter {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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

package Aws::RDS::PendingModifiedValues {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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

package Aws::RDS::RecurringCharge {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has RecurringChargeAmount => (is => 'ro', isa => 'Num');
  has RecurringChargeFrequency => (is => 'ro', isa => 'Str');
}

package Aws::RDS::ReservedDBInstance {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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

package Aws::RDS::ReservedDBInstancesOffering {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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

package Aws::RDS::Subnet {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has SubnetAvailabilityZone => (is => 'ro', isa => 'Aws::RDS::AvailabilityZone');
  has SubnetIdentifier => (is => 'ro', isa => 'Str');
  has SubnetStatus => (is => 'ro', isa => 'Str');
}

package Aws::RDS::Tag {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

package Aws::RDS::VpcSecurityGroupMembership {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Status => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupId => (is => 'ro', isa => 'Str');
}



package Aws::RDS::AddSourceIdentifierToSubscription {
  use Moose;
  has SourceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddSourceIdentifierToSubscription');
  has _returns => (isa => 'Aws::RDS::AddSourceIdentifierToSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddSourceIdentifierToSubscriptionResult');  
}
package Aws::RDS::AddTagsToResource {
  use Moose;
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['NameInRequest'], request_name => 'Tag' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddTagsToResource');
  has _returns => (isa => 'Aws::RDS::AddTagsToResourceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddTagsToResourceResult');  
}
package Aws::RDS::AuthorizeDBSecurityGroupIngress {
  use Moose;
  has CIDRIP => (is => 'ro', isa => 'Str');
  has DBSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupId => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeDBSecurityGroupIngress');
  has _returns => (isa => 'Aws::RDS::AuthorizeDBSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeDBSecurityGroupIngressResult');  
}
package Aws::RDS::CopyDBSnapshot {
  use Moose;
  has SourceDBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['NameInRequest'], request_name => 'Tag' );
  has TargetDBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CopyDBSnapshot');
  has _returns => (isa => 'Aws::RDS::CopyDBSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CopyDBSnapshotResult');  
}
package Aws::RDS::CreateDBInstance {
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int', required => 1);
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Str');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str', required => 1);
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBName => (is => 'ro', isa => 'Str');
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'DBSecurityGroupName' );
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
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['NameInRequest'], request_name => 'Tag' );
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'VpcSecurityGroupId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBInstance');
  has _returns => (isa => 'Aws::RDS::CreateDBInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceResult');  
}
package Aws::RDS::CreateDBInstanceReadReplica {
  use Moose;
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
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['NameInRequest'], request_name => 'Tag' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceReadReplica');
  has _returns => (isa => 'Aws::RDS::CreateDBInstanceReadReplicaResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceReadReplicaResult');  
}
package Aws::RDS::CreateDBParameterGroup {
  use Moose;
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['NameInRequest'], request_name => 'Tag' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBParameterGroup');
  has _returns => (isa => 'Aws::RDS::CreateDBParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBParameterGroupResult');  
}
package Aws::RDS::CreateDBSecurityGroup {
  use Moose;
  has DBSecurityGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has DBSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['NameInRequest'], request_name => 'Tag' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBSecurityGroup');
  has _returns => (isa => 'Aws::RDS::CreateDBSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBSecurityGroupResult');  
}
package Aws::RDS::CreateDBSnapshot {
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['NameInRequest'], request_name => 'Tag' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBSnapshot');
  has _returns => (isa => 'Aws::RDS::CreateDBSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBSnapshotResult');  
}
package Aws::RDS::CreateDBSubnetGroup {
  use Moose;
  has DBSubnetGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has DBSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SubnetIdentifier' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['NameInRequest'], request_name => 'Tag' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBSubnetGroup');
  has _returns => (isa => 'Aws::RDS::CreateDBSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBSubnetGroupResult');  
}
package Aws::RDS::CreateEventSubscription {
  use Moose;
  has Enabled => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'EventCategory' );
  has SnsTopicArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SourceId' );
  has SourceType => (is => 'ro', isa => 'Str');
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['NameInRequest'], request_name => 'Tag' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEventSubscription');
  has _returns => (isa => 'Aws::RDS::CreateEventSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateEventSubscriptionResult');  
}
package Aws::RDS::CreateOptionGroup {
  use Moose;
  has EngineName => (is => 'ro', isa => 'Str', required => 1);
  has MajorEngineVersion => (is => 'ro', isa => 'Str', required => 1);
  has OptionGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has OptionGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['NameInRequest'], request_name => 'Tag' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOptionGroup');
  has _returns => (isa => 'Aws::RDS::CreateOptionGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateOptionGroupResult');  
}
package Aws::RDS::DeleteDBInstance {
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has FinalDBSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SkipFinalSnapshot => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBInstance');
  has _returns => (isa => 'Aws::RDS::DeleteDBInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBInstanceResult');  
}
package Aws::RDS::DeleteDBParameterGroup {
  use Moose;
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBParameterGroup');
  has _returns => (isa => 'Aws::RDS::DeleteDBParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBParameterGroupResult');  
}
package Aws::RDS::DeleteDBSecurityGroup {
  use Moose;
  has DBSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBSecurityGroup');
  has _returns => (isa => 'Aws::RDS::DeleteDBSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBSecurityGroupResult');  
}
package Aws::RDS::DeleteDBSnapshot {
  use Moose;
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBSnapshot');
  has _returns => (isa => 'Aws::RDS::DeleteDBSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBSnapshotResult');  
}
package Aws::RDS::DeleteDBSubnetGroup {
  use Moose;
  has DBSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBSubnetGroup');
  has _returns => (isa => 'Aws::RDS::DeleteDBSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBSubnetGroupResult');  
}
package Aws::RDS::DeleteEventSubscription {
  use Moose;
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEventSubscription');
  has _returns => (isa => 'Aws::RDS::DeleteEventSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteEventSubscriptionResult');  
}
package Aws::RDS::DeleteOptionGroup {
  use Moose;
  has OptionGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteOptionGroup');
  has _returns => (isa => 'Aws::RDS::DeleteOptionGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteOptionGroupResult');  
}
package Aws::RDS::DescribeDBEngineVersions {
  use Moose;
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
package Aws::RDS::DescribeDBInstances {
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBInstances');
  has _returns => (isa => 'Aws::RDS::DescribeDBInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBInstancesResult');  
}
package Aws::RDS::DescribeDBLogFiles {
  use Moose;
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
package Aws::RDS::DescribeDBParameterGroups {
  use Moose;
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBParameterGroups');
  has _returns => (isa => 'Aws::RDS::DescribeDBParameterGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBParameterGroupsResult');  
}
package Aws::RDS::DescribeDBParameters {
  use Moose;
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has Source => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBParameters');
  has _returns => (isa => 'Aws::RDS::DescribeDBParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBParametersResult');  
}
package Aws::RDS::DescribeDBSecurityGroups {
  use Moose;
  has DBSecurityGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBSecurityGroups');
  has _returns => (isa => 'Aws::RDS::DescribeDBSecurityGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBSecurityGroupsResult');  
}
package Aws::RDS::DescribeDBSnapshots {
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SnapshotType => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBSnapshots');
  has _returns => (isa => 'Aws::RDS::DescribeDBSnapshotsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBSnapshotsResult');  
}
package Aws::RDS::DescribeDBSubnetGroups {
  use Moose;
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBSubnetGroups');
  has _returns => (isa => 'Aws::RDS::DescribeDBSubnetGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBSubnetGroupsResult');  
}
package Aws::RDS::DescribeEngineDefaultParameters {
  use Moose;
  has DBParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParameters');
  has _returns => (isa => 'Aws::RDS::DescribeEngineDefaultParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParametersResult');  
}
package Aws::RDS::DescribeEventCategories {
  use Moose;
  has SourceType => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventCategories');
  has _returns => (isa => 'Aws::RDS::DescribeEventCategoriesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventCategoriesResult');  
}
package Aws::RDS::DescribeEventSubscriptions {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SubscriptionName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventSubscriptions');
  has _returns => (isa => 'Aws::RDS::DescribeEventSubscriptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventSubscriptionsResult');  
}
package Aws::RDS::DescribeEvents {
  use Moose;
  has Duration => (is => 'ro', isa => 'Int');
  has EndTime => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'EventCategory' );
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEvents');
  has _returns => (isa => 'Aws::RDS::DescribeEventsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventsResult');  
}
package Aws::RDS::DescribeOptionGroupOptions {
  use Moose;
  has EngineName => (is => 'ro', isa => 'Str', required => 1);
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOptionGroupOptions');
  has _returns => (isa => 'Aws::RDS::DescribeOptionGroupOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeOptionGroupOptionsResult');  
}
package Aws::RDS::DescribeOptionGroups {
  use Moose;
  has EngineName => (is => 'ro', isa => 'Str');
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has OptionGroupName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOptionGroups');
  has _returns => (isa => 'Aws::RDS::DescribeOptionGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeOptionGroupsResult');  
}
package Aws::RDS::DescribeOrderableDBInstanceOptions {
  use Moose;
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
package Aws::RDS::DescribeReservedDBInstances {
  use Moose;
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
package Aws::RDS::DescribeReservedDBInstancesOfferings {
  use Moose;
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
package Aws::RDS::DownloadDBLogFilePortion {
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has LogFileName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has NumberOfLines => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DownloadDBLogFilePortion');
  has _returns => (isa => 'Aws::RDS::DownloadDBLogFilePortionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DownloadDBLogFilePortionResult');  
}
package Aws::RDS::ListTagsForResource {
  use Moose;
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  has _returns => (isa => 'Aws::RDS::ListTagsForResourceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListTagsForResourceResult');  
}
package Aws::RDS::ModifyDBInstance {
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AllowMajorVersionUpgrade => (is => 'ro', isa => 'Str');
  has ApplyImmediately => (is => 'ro', isa => 'Str');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Str');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'DBSecurityGroupName' );
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Str');
  has NewDBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'VpcSecurityGroupId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBInstance');
  has _returns => (isa => 'Aws::RDS::ModifyDBInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBInstanceResult');  
}
package Aws::RDS::ModifyDBParameterGroup {
  use Moose;
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Parameter]', traits => ['NameInRequest'], request_name => 'Parameter' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBParameterGroup');
  has _returns => (isa => 'Aws::RDS::ModifyDBParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBParameterGroupResult');  
}
package Aws::RDS::ModifyDBSubnetGroup {
  use Moose;
  has DBSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SubnetIdentifier' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBSubnetGroup');
  has _returns => (isa => 'Aws::RDS::ModifyDBSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBSubnetGroupResult');  
}
package Aws::RDS::ModifyEventSubscription {
  use Moose;
  has Enabled => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'EventCategory' );
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyEventSubscription');
  has _returns => (isa => 'Aws::RDS::ModifyEventSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyEventSubscriptionResult');  
}
package Aws::RDS::ModifyOptionGroup {
  use Moose;
  has ApplyImmediately => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str', required => 1);
  has OptionsToInclude => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionConfiguration]', traits => ['NameInRequest'], request_name => 'OptionConfiguration' );
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyOptionGroup');
  has _returns => (isa => 'Aws::RDS::ModifyOptionGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyOptionGroupResult');  
}
package Aws::RDS::PromoteReadReplica {
  use Moose;
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'PromoteReadReplica');
  has _returns => (isa => 'Aws::RDS::PromoteReadReplicaResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PromoteReadReplicaResult');  
}
package Aws::RDS::PurchaseReservedDBInstancesOffering {
  use Moose;
  has DBInstanceCount => (is => 'ro', isa => 'Int');
  has ReservedDBInstanceId => (is => 'ro', isa => 'Str');
  has ReservedDBInstancesOfferingId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['NameInRequest'], request_name => 'Tag' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedDBInstancesOffering');
  has _returns => (isa => 'Aws::RDS::PurchaseReservedDBInstancesOfferingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PurchaseReservedDBInstancesOfferingResult');  
}
package Aws::RDS::RebootDBInstance {
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ForceFailover => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RebootDBInstance');
  has _returns => (isa => 'Aws::RDS::RebootDBInstanceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RebootDBInstanceResult');  
}
package Aws::RDS::RemoveSourceIdentifierFromSubscription {
  use Moose;
  has SourceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveSourceIdentifierFromSubscription');
  has _returns => (isa => 'Aws::RDS::RemoveSourceIdentifierFromSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveSourceIdentifierFromSubscriptionResult');  
}
package Aws::RDS::RemoveTagsFromResource {
  use Moose;
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTagsFromResource');
  has _returns => (isa => 'Aws::RDS::RemoveTagsFromResourceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveTagsFromResourceResult');  
}
package Aws::RDS::ResetDBParameterGroup {
  use Moose;
  has DBParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Parameter]', traits => ['NameInRequest'], request_name => 'Parameter' );
  has ResetAllParameters => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResetDBParameterGroup');
  has _returns => (isa => 'Aws::RDS::ResetDBParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResetDBParameterGroupResult');  
}
package Aws::RDS::RestoreDBInstanceFromDBSnapshot {
  use Moose;
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
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['NameInRequest'], request_name => 'Tag' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceFromDBSnapshot');
  has _returns => (isa => 'Aws::RDS::RestoreDBInstanceFromDBSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceFromDBSnapshotResult');  
}
package Aws::RDS::RestoreDBInstanceToPointInTime {
  use Moose;
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
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['NameInRequest'], request_name => 'Tag' );
  has TargetDBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has UseLatestRestorableTime => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceToPointInTime');
  has _returns => (isa => 'Aws::RDS::RestoreDBInstanceToPointInTimeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBInstanceToPointInTimeResult');  
}
package Aws::RDS::RevokeDBSecurityGroupIngress {
  use Moose;
  has CIDRIP => (is => 'ro', isa => 'Str');
  has DBSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupId => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeDBSecurityGroupIngress');
  has _returns => (isa => 'Aws::RDS::RevokeDBSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeDBSecurityGroupIngressResult');  
}

package Aws::RDS::AddSourceIdentifierToSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Aws::RDS::EventSubscription');

}
package Aws::RDS::AuthorizeDBSecurityGroupIngressResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSecurityGroup => (is => 'ro', isa => 'Aws::RDS::DBSecurityGroup');

}
package Aws::RDS::CopyDBSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSnapshot => (is => 'ro', isa => 'Aws::RDS::DBSnapshot');

}
package Aws::RDS::CreateDBInstanceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
package Aws::RDS::CreateDBInstanceReadReplicaResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
package Aws::RDS::CreateDBParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBParameterGroup => (is => 'ro', isa => 'Aws::RDS::DBParameterGroup');

}
package Aws::RDS::CreateDBSecurityGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSecurityGroup => (is => 'ro', isa => 'Aws::RDS::DBSecurityGroup');

}
package Aws::RDS::CreateDBSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSnapshot => (is => 'ro', isa => 'Aws::RDS::DBSnapshot');

}
package Aws::RDS::CreateDBSubnetGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSubnetGroup => (is => 'ro', isa => 'Aws::RDS::DBSubnetGroup');

}
package Aws::RDS::CreateEventSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Aws::RDS::EventSubscription');

}
package Aws::RDS::CreateOptionGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has OptionGroup => (is => 'ro', isa => 'Aws::RDS::OptionGroup');

}
package Aws::RDS::DeleteDBInstanceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
package Aws::RDS::DeleteDBSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSnapshot => (is => 'ro', isa => 'Aws::RDS::DBSnapshot');

}
package Aws::RDS::DeleteEventSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Aws::RDS::EventSubscription');

}
package Aws::RDS::DescribeDBEngineVersionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBEngineVersions => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBEngineVersion]', traits => ['Unwrapped'], xmlname => 'DBEngineVersion');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::DescribeDBInstancesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstances => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBInstance]', traits => ['Unwrapped'], xmlname => 'DBInstance');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::DescribeDBLogFilesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DescribeDBLogFiles => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DescribeDBLogFilesDetails]', traits => ['Unwrapped'], xmlname => 'DescribeDBLogFilesDetails');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::DescribeDBParameterGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBParameterGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBParameterGroup]', traits => ['Unwrapped'], xmlname => 'DBParameterGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::DescribeDBParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Parameter]', traits => ['Unwrapped'], xmlname => 'Parameter');

}
package Aws::RDS::DescribeDBSecurityGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSecurityGroup]', traits => ['Unwrapped'], xmlname => 'DBSecurityGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::DescribeDBSnapshotsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSnapshots => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSnapshot]', traits => ['Unwrapped'], xmlname => 'DBSnapshot');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::DescribeDBSubnetGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSubnetGroups => (is => 'ro', isa => 'ArrayRef[Aws::RDS::DBSubnetGroup]', traits => ['Unwrapped'], xmlname => 'DBSubnetGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::DescribeEngineDefaultParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EngineDefaults => (is => 'ro', isa => 'Aws::RDS::EngineDefaults');

}
package Aws::RDS::DescribeEventCategoriesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventCategoriesMapList => (is => 'ro', isa => 'ArrayRef[Aws::RDS::EventCategoriesMap]', traits => ['Unwrapped'], xmlname => 'EventCategoriesMap');

}
package Aws::RDS::DescribeEventSubscriptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscriptionsList => (is => 'ro', isa => 'ArrayRef[Aws::RDS::EventSubscription]', traits => ['Unwrapped'], xmlname => 'EventSubscription');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::DescribeEventsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Event]', traits => ['Unwrapped'], xmlname => 'Event');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::DescribeOptionGroupOptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has OptionGroupOptions => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionGroupOption]', traits => ['Unwrapped'], xmlname => 'OptionGroupOption');

}
package Aws::RDS::DescribeOptionGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has OptionGroupsList => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OptionGroup]', traits => ['Unwrapped'], xmlname => 'OptionGroup');

}
package Aws::RDS::DescribeOrderableDBInstanceOptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has OrderableDBInstanceOptions => (is => 'ro', isa => 'ArrayRef[Aws::RDS::OrderableDBInstanceOption]', traits => ['Unwrapped'], xmlname => 'OrderableDBInstanceOption');

}
package Aws::RDS::DescribeReservedDBInstancesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedDBInstances => (is => 'ro', isa => 'ArrayRef[Aws::RDS::ReservedDBInstance]', traits => ['Unwrapped'], xmlname => 'ReservedDBInstance');

}
package Aws::RDS::DescribeReservedDBInstancesOfferingsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedDBInstancesOfferings => (is => 'ro', isa => 'ArrayRef[Aws::RDS::ReservedDBInstancesOffering]', traits => ['Unwrapped'], xmlname => 'ReservedDBInstancesOffering');

}
package Aws::RDS::DownloadDBLogFilePortionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AdditionalDataPending => (is => 'ro', isa => 'Str');
  has LogFileData => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RDS::ListTagsForResourceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TagList => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['Unwrapped'], xmlname => 'Tag');

}
package Aws::RDS::ModifyDBInstanceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
package Aws::RDS::ModifyDBParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBParameterGroupName => (is => 'ro', isa => 'Str');

}
package Aws::RDS::ModifyDBSubnetGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSubnetGroup => (is => 'ro', isa => 'Aws::RDS::DBSubnetGroup');

}
package Aws::RDS::ModifyEventSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Aws::RDS::EventSubscription');

}
package Aws::RDS::ModifyOptionGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has OptionGroup => (is => 'ro', isa => 'Aws::RDS::OptionGroup');

}
package Aws::RDS::PromoteReadReplicaResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
package Aws::RDS::PurchaseReservedDBInstancesOfferingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ReservedDBInstance => (is => 'ro', isa => 'Aws::RDS::ReservedDBInstance');

}
package Aws::RDS::RebootDBInstanceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
package Aws::RDS::RemoveSourceIdentifierFromSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Aws::RDS::EventSubscription');

}
package Aws::RDS::ResetDBParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBParameterGroupName => (is => 'ro', isa => 'Str');

}
package Aws::RDS::RestoreDBInstanceFromDBSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
package Aws::RDS::RestoreDBInstanceToPointInTimeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBInstance => (is => 'ro', isa => 'Aws::RDS::DBInstance');

}
package Aws::RDS::RevokeDBSecurityGroupIngressResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSecurityGroup => (is => 'ro', isa => 'Aws::RDS::DBSecurityGroup');

}

package Aws::RDS {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'rds');
  has version => (is => 'ro', isa => 'Str', default => '2013-09-09');
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::QueryCaller', 'Net::AWS::XMLResponse');
  
  sub AddSourceIdentifierToSubscription {
    my $self = shift;
    my $call = Aws::RDS::AddSourceIdentifierToSubscription->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::AddSourceIdentifierToSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub AddTagsToResource {
    my $self = shift;
    my $call = Aws::RDS::AddTagsToResource->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub AuthorizeDBSecurityGroupIngress {
    my $self = shift;
    my $call = Aws::RDS::AuthorizeDBSecurityGroupIngress->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::AuthorizeDBSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CopyDBSnapshot {
    my $self = shift;
    my $call = Aws::RDS::CopyDBSnapshot->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::CopyDBSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateDBInstance {
    my $self = shift;
    my $call = Aws::RDS::CreateDBInstance->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::CreateDBInstanceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateDBInstanceReadReplica {
    my $self = shift;
    my $call = Aws::RDS::CreateDBInstanceReadReplica->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::CreateDBInstanceReadReplicaResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateDBParameterGroup {
    my $self = shift;
    my $call = Aws::RDS::CreateDBParameterGroup->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::CreateDBParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateDBSecurityGroup {
    my $self = shift;
    my $call = Aws::RDS::CreateDBSecurityGroup->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::CreateDBSecurityGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateDBSnapshot {
    my $self = shift;
    my $call = Aws::RDS::CreateDBSnapshot->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::CreateDBSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateDBSubnetGroup {
    my $self = shift;
    my $call = Aws::RDS::CreateDBSubnetGroup->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::CreateDBSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateEventSubscription {
    my $self = shift;
    my $call = Aws::RDS::CreateEventSubscription->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::CreateEventSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateOptionGroup {
    my $self = shift;
    my $call = Aws::RDS::CreateOptionGroup->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::CreateOptionGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteDBInstance {
    my $self = shift;
    my $call = Aws::RDS::DeleteDBInstance->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DeleteDBInstanceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteDBParameterGroup {
    my $self = shift;
    my $call = Aws::RDS::DeleteDBParameterGroup->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteDBSecurityGroup {
    my $self = shift;
    my $call = Aws::RDS::DeleteDBSecurityGroup->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteDBSnapshot {
    my $self = shift;
    my $call = Aws::RDS::DeleteDBSnapshot->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DeleteDBSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteDBSubnetGroup {
    my $self = shift;
    my $call = Aws::RDS::DeleteDBSubnetGroup->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteEventSubscription {
    my $self = shift;
    my $call = Aws::RDS::DeleteEventSubscription->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DeleteEventSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteOptionGroup {
    my $self = shift;
    my $call = Aws::RDS::DeleteOptionGroup->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DescribeDBEngineVersions {
    my $self = shift;
    my $call = Aws::RDS::DescribeDBEngineVersions->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeDBEngineVersionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeDBInstances {
    my $self = shift;
    my $call = Aws::RDS::DescribeDBInstances->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeDBInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeDBLogFiles {
    my $self = shift;
    my $call = Aws::RDS::DescribeDBLogFiles->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeDBLogFilesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeDBParameterGroups {
    my $self = shift;
    my $call = Aws::RDS::DescribeDBParameterGroups->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeDBParameterGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeDBParameters {
    my $self = shift;
    my $call = Aws::RDS::DescribeDBParameters->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeDBParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeDBSecurityGroups {
    my $self = shift;
    my $call = Aws::RDS::DescribeDBSecurityGroups->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeDBSecurityGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeDBSnapshots {
    my $self = shift;
    my $call = Aws::RDS::DescribeDBSnapshots->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeDBSnapshotsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeDBSubnetGroups {
    my $self = shift;
    my $call = Aws::RDS::DescribeDBSubnetGroups->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeDBSubnetGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeEngineDefaultParameters {
    my $self = shift;
    my $call = Aws::RDS::DescribeEngineDefaultParameters->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeEngineDefaultParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeEventCategories {
    my $self = shift;
    my $call = Aws::RDS::DescribeEventCategories->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeEventCategoriesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeEvents {
    my $self = shift;
    my $call = Aws::RDS::DescribeEvents->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeEventsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeEventSubscriptions {
    my $self = shift;
    my $call = Aws::RDS::DescribeEventSubscriptions->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeEventSubscriptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeOptionGroupOptions {
    my $self = shift;
    my $call = Aws::RDS::DescribeOptionGroupOptions->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeOptionGroupOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeOptionGroups {
    my $self = shift;
    my $call = Aws::RDS::DescribeOptionGroups->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeOptionGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeOrderableDBInstanceOptions {
    my $self = shift;
    my $call = Aws::RDS::DescribeOrderableDBInstanceOptions->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeOrderableDBInstanceOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeReservedDBInstances {
    my $self = shift;
    my $call = Aws::RDS::DescribeReservedDBInstances->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeReservedDBInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeReservedDBInstancesOfferings {
    my $self = shift;
    my $call = Aws::RDS::DescribeReservedDBInstancesOfferings->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DescribeReservedDBInstancesOfferingsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DownloadDBLogFilePortion {
    my $self = shift;
    my $call = Aws::RDS::DownloadDBLogFilePortion->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::DownloadDBLogFilePortionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call = Aws::RDS::ListTagsForResource->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::ListTagsForResourceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ModifyDBInstance {
    my $self = shift;
    my $call = Aws::RDS::ModifyDBInstance->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::ModifyDBInstanceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ModifyDBParameterGroup {
    my $self = shift;
    my $call = Aws::RDS::ModifyDBParameterGroup->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::ModifyDBParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ModifyDBSubnetGroup {
    my $self = shift;
    my $call = Aws::RDS::ModifyDBSubnetGroup->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::ModifyDBSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ModifyEventSubscription {
    my $self = shift;
    my $call = Aws::RDS::ModifyEventSubscription->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::ModifyEventSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ModifyOptionGroup {
    my $self = shift;
    my $call = Aws::RDS::ModifyOptionGroup->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::ModifyOptionGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub PromoteReadReplica {
    my $self = shift;
    my $call = Aws::RDS::PromoteReadReplica->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::PromoteReadReplicaResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub PurchaseReservedDBInstancesOffering {
    my $self = shift;
    my $call = Aws::RDS::PurchaseReservedDBInstancesOffering->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::PurchaseReservedDBInstancesOfferingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub RebootDBInstance {
    my $self = shift;
    my $call = Aws::RDS::RebootDBInstance->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::RebootDBInstanceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub RemoveSourceIdentifierFromSubscription {
    my $self = shift;
    my $call = Aws::RDS::RemoveSourceIdentifierFromSubscription->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::RemoveSourceIdentifierFromSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub RemoveTagsFromResource {
    my $self = shift;
    my $call = Aws::RDS::RemoveTagsFromResource->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub ResetDBParameterGroup {
    my $self = shift;
    my $call = Aws::RDS::ResetDBParameterGroup->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::ResetDBParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub RestoreDBInstanceFromDBSnapshot {
    my $self = shift;
    my $call = Aws::RDS::RestoreDBInstanceFromDBSnapshot->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::RestoreDBInstanceFromDBSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub RestoreDBInstanceToPointInTime {
    my $self = shift;
    my $call = Aws::RDS::RestoreDBInstanceToPointInTime->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::RestoreDBInstanceToPointInTimeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub RevokeDBSecurityGroupIngress {
    my $self = shift;
    my $call = Aws::RDS::RevokeDBSecurityGroupIngress->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RDS::RevokeDBSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
