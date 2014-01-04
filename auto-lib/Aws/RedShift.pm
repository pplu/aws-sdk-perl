
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::RedShift::SourceType', [qw(cluster cluster-parameter-group cluster-security-group cluster-snapshot )];


class Aws::RedShift::AccountWithRestoreAccess with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AccountId => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::AvailabilityZone with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::Cluster with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AllowVersionUpgrade => (is => 'ro', isa => 'Str');
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has ClusterCreateTime => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has ClusterNodes => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterNode]');
  has ClusterParameterGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterParameterGroupStatus]');
  has ClusterPublicKey => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterSecurityGroupMembership]');
  has ClusterSnapshotCopyStatus => (is => 'ro', isa => 'Aws::RedShift::ClusterSnapshotCopyStatus');
  has ClusterStatus => (is => 'ro', isa => 'Str');
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has DBName => (is => 'ro', isa => 'Str');
  has ElasticIpStatus => (is => 'ro', isa => 'Aws::RedShift::ElasticIpStatus');
  has Encrypted => (is => 'ro', isa => 'Str');
  has Endpoint => (is => 'ro', isa => 'Aws::RedShift::Endpoint');
  has HsmStatus => (is => 'ro', isa => 'Aws::RedShift::HsmStatus');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has ModifyStatus => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has PendingModifiedValues => (is => 'ro', isa => 'Aws::RedShift::PendingModifiedValues');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Str');
  has RestoreStatus => (is => 'ro', isa => 'Aws::RedShift::RestoreStatus');
  has VpcId => (is => 'ro', isa => 'Str');
  has VpcSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::VpcSecurityGroupMembership]');
}

class Aws::RedShift::ClusterNode with (AWS::API::ResultParser, AWS::API::ToParams) {
  has NodeRole => (is => 'ro', isa => 'Str');
  has PrivateIPAddress => (is => 'ro', isa => 'Str');
  has PublicIPAddress => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::ClusterParameterGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Description => (is => 'ro', isa => 'Str');
  has ParameterGroupFamily => (is => 'ro', isa => 'Str');
  has ParameterGroupName => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::ClusterParameterGroupStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ParameterApplyStatus => (is => 'ro', isa => 'Str');
  has ParameterGroupName => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::ClusterSecurityGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EC2SecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::EC2SecurityGroup]');
  has IPRanges => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::IPRange]');
}

class Aws::RedShift::ClusterSecurityGroupMembership with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::ClusterSnapshotCopyStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DestinationRegion => (is => 'ro', isa => 'Str');
  has RetentionPeriod => (is => 'ro', isa => 'Num');
}

class Aws::RedShift::ClusterSubnetGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has SubnetGroupStatus => (is => 'ro', isa => 'Str');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Subnet]');
  has VpcId => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::ClusterVersion with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ClusterParameterGroupFamily => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::DefaultClusterParameters with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Marker => (is => 'ro', isa => 'Str');
  has ParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Parameter]');
}

class Aws::RedShift::EC2SecurityGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::ElasticIpStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ElasticIp => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::Endpoint with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Address => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
}

class Aws::RedShift::Event with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Date => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has EventId => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Str');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Aws::RedShift::SourceType');
}

class Aws::RedShift::EventCategoriesMap with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::EventInfoMap]');
  has SourceType => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::EventInfoMap with (AWS::API::ResultParser, AWS::API::ToParams) {
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has EventDescription => (is => 'ro', isa => 'Str');
  has EventId => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::EventSubscription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CustSubscriptionId => (is => 'ro', isa => 'Str');
  has CustomerAwsId => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Str');
  has EventCategoriesList => (is => 'ro', isa => 'ArrayRef[Str]');
  has Severity => (is => 'ro', isa => 'Str');
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has SourceIdsList => (is => 'ro', isa => 'ArrayRef[Str]');
  has SourceType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SubscriptionCreationTime => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::HsmClientCertificate with (AWS::API::ResultParser, AWS::API::ToParams) {
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has HsmClientCertificatePublicKey => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::HsmConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Description => (is => 'ro', isa => 'Str');
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has HsmIpAddress => (is => 'ro', isa => 'Str');
  has HsmPartitionName => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::HsmStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::IPRange with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CIDRIP => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::OrderableClusterOption with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::AvailabilityZone]');
  has ClusterType => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::Parameter with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AllowedValues => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Str');
  has MinimumEngineVersion => (is => 'ro', isa => 'Str');
  has ParameterName => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::PendingModifiedValues with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has ClusterType => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
}

class Aws::RedShift::RecurringCharge with (AWS::API::ResultParser, AWS::API::ToParams) {
  has RecurringChargeAmount => (is => 'ro', isa => 'Num');
  has RecurringChargeFrequency => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::ReservedNode with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has FixedPrice => (is => 'ro', isa => 'Num');
  has NodeCount => (is => 'ro', isa => 'Int');
  has NodeType => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::RecurringCharge]');
  has ReservedNodeId => (is => 'ro', isa => 'Str');
  has ReservedNodeOfferingId => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has UsagePrice => (is => 'ro', isa => 'Num');
}

class Aws::RedShift::ReservedNodeOffering with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has FixedPrice => (is => 'ro', isa => 'Num');
  has NodeType => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::RecurringCharge]');
  has ReservedNodeOfferingId => (is => 'ro', isa => 'Str');
  has UsagePrice => (is => 'ro', isa => 'Num');
}

class Aws::RedShift::RestoreStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CurrentRestoreRateInMegaBytesPerSecond => (is => 'ro', isa => 'Num');
  has ElapsedTimeInSeconds => (is => 'ro', isa => 'Num');
  has EstimatedTimeToCompletionInSeconds => (is => 'ro', isa => 'Num');
  has ProgressInMegaBytes => (is => 'ro', isa => 'Num');
  has SnapshotSizeInMegaBytes => (is => 'ro', isa => 'Num');
  has Status => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::Snapshot with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AccountsWithRestoreAccess => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::AccountWithRestoreAccess]');
  has ActualIncrementalBackupSizeInMegaBytes => (is => 'ro', isa => 'Num');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has BackupProgressInMegaBytes => (is => 'ro', isa => 'Num');
  has ClusterCreateTime => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has CurrentBackupRateInMegaBytesPerSecond => (is => 'ro', isa => 'Num');
  has DBName => (is => 'ro', isa => 'Str');
  has ElapsedTimeInSeconds => (is => 'ro', isa => 'Num');
  has Encrypted => (is => 'ro', isa => 'Str');
  has EncryptedWithHSM => (is => 'ro', isa => 'Str');
  has EstimatedSecondsToCompletion => (is => 'ro', isa => 'Num');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has OwnerAccount => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has SnapshotCreateTime => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotType => (is => 'ro', isa => 'Str');
  has SourceRegion => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TotalBackupSizeInMegaBytes => (is => 'ro', isa => 'Num');
  has VpcId => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::Subnet with (AWS::API::ResultParser, AWS::API::ToParams) {
  has SubnetAvailabilityZone => (is => 'ro', isa => 'Aws::RedShift::AvailabilityZone');
  has SubnetIdentifier => (is => 'ro', isa => 'Str');
  has SubnetStatus => (is => 'ro', isa => 'Str');
}

class Aws::RedShift::VpcSecurityGroupMembership with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Status => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupId => (is => 'ro', isa => 'Str');
}



class Aws::RedShift::AuthorizeClusterSecurityGroupIngress {
  has CIDRIP => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeClusterSecurityGroupIngress');
  has _returns => (isa => 'Aws::RedShift::AuthorizeClusterSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeClusterSecurityGroupIngressResult');  
}
class Aws::RedShift::AuthorizeSnapshotAccess {
  has AccountWithRestoreAccess => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeSnapshotAccess');
  has _returns => (isa => 'Aws::RedShift::AuthorizeSnapshotAccessResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeSnapshotAccessResult');  
}
class Aws::RedShift::CopyClusterSnapshot {
  has SourceSnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SourceSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has TargetSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CopyClusterSnapshot');
  has _returns => (isa => 'Aws::RedShift::CopyClusterSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CopyClusterSnapshotResult');  
}
class Aws::RedShift::CreateCluster {
  has AllowVersionUpgrade => (is => 'ro', isa => 'Str');
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has ClusterType => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has DBName => (is => 'ro', isa => 'Str');
  has ElasticIp => (is => 'ro', isa => 'Str');
  has Encrypted => (is => 'ro', isa => 'Str');
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str', required => 1);
  has MasterUserPassword => (is => 'ro', isa => 'Str', required => 1);
  has NodeType => (is => 'ro', isa => 'Str', required => 1);
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCluster');
  has _returns => (isa => 'Aws::RedShift::CreateClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterResult');  
}
class Aws::RedShift::CreateClusterParameterGroup {
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has ParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterParameterGroup');
  has _returns => (isa => 'Aws::RedShift::CreateClusterParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterParameterGroupResult');  
}
class Aws::RedShift::CreateClusterSecurityGroup {
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterSecurityGroup');
  has _returns => (isa => 'Aws::RedShift::CreateClusterSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterSecurityGroupResult');  
}
class Aws::RedShift::CreateClusterSnapshot {
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterSnapshot');
  has _returns => (isa => 'Aws::RedShift::CreateClusterSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterSnapshotResult');  
}
class Aws::RedShift::CreateClusterSubnetGroup {
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterSubnetGroup');
  has _returns => (isa => 'Aws::RedShift::CreateClusterSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterSubnetGroupResult');  
}
class Aws::RedShift::CreateEventSubscription {
  has Enabled => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has Severity => (is => 'ro', isa => 'Str');
  has SnsTopicArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has SourceType => (is => 'ro', isa => 'Str');
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEventSubscription');
  has _returns => (isa => 'Aws::RedShift::CreateEventSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateEventSubscriptionResult');  
}
class Aws::RedShift::CreateHsmClientCertificate {
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHsmClientCertificate');
  has _returns => (isa => 'Aws::RedShift::CreateHsmClientCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateHsmClientCertificateResult');  
}
class Aws::RedShift::CreateHsmConfiguration {
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has HsmIpAddress => (is => 'ro', isa => 'Str', required => 1);
  has HsmPartitionName => (is => 'ro', isa => 'Str', required => 1);
  has HsmPartitionPassword => (is => 'ro', isa => 'Str', required => 1);
  has HsmServerPublicCertificate => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHsmConfiguration');
  has _returns => (isa => 'Aws::RedShift::CreateHsmConfigurationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateHsmConfigurationResult');  
}
class Aws::RedShift::DeleteCluster {
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has FinalClusterSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SkipFinalClusterSnapshot => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCluster');
  has _returns => (isa => 'Aws::RedShift::DeleteClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteClusterResult');  
}
class Aws::RedShift::DeleteClusterParameterGroup {
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteClusterParameterGroup');
  has _returns => (isa => 'Aws::RedShift::DeleteClusterParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteClusterParameterGroupResult');  
}
class Aws::RedShift::DeleteClusterSecurityGroup {
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteClusterSecurityGroup');
  has _returns => (isa => 'Aws::RedShift::DeleteClusterSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteClusterSecurityGroupResult');  
}
class Aws::RedShift::DeleteClusterSnapshot {
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteClusterSnapshot');
  has _returns => (isa => 'Aws::RedShift::DeleteClusterSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteClusterSnapshotResult');  
}
class Aws::RedShift::DeleteClusterSubnetGroup {
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteClusterSubnetGroup');
  has _returns => (isa => 'Aws::RedShift::DeleteClusterSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteClusterSubnetGroupResult');  
}
class Aws::RedShift::DeleteEventSubscription {
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEventSubscription');
  has _returns => (isa => 'Aws::RedShift::DeleteEventSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteEventSubscriptionResult');  
}
class Aws::RedShift::DeleteHsmClientCertificate {
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteHsmClientCertificate');
  has _returns => (isa => 'Aws::RedShift::DeleteHsmClientCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteHsmClientCertificateResult');  
}
class Aws::RedShift::DeleteHsmConfiguration {
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteHsmConfiguration');
  has _returns => (isa => 'Aws::RedShift::DeleteHsmConfigurationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteHsmConfigurationResult');  
}
class Aws::RedShift::DescribeClusterParameterGroups {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ParameterGroupName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterParameterGroups');
  has _returns => (isa => 'Aws::RedShift::DescribeClusterParameterGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterParameterGroupsResult');  
}
class Aws::RedShift::DescribeClusterParameters {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Source => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterParameters');
  has _returns => (isa => 'Aws::RedShift::DescribeClusterParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterParametersResult');  
}
class Aws::RedShift::DescribeClusterSecurityGroups {
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterSecurityGroups');
  has _returns => (isa => 'Aws::RedShift::DescribeClusterSecurityGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterSecurityGroupsResult');  
}
class Aws::RedShift::DescribeClusterSnapshots {
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has OwnerAccount => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotType => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterSnapshots');
  has _returns => (isa => 'Aws::RedShift::DescribeClusterSnapshotsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterSnapshotsResult');  
}
class Aws::RedShift::DescribeClusterSubnetGroups {
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterSubnetGroups');
  has _returns => (isa => 'Aws::RedShift::DescribeClusterSubnetGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterSubnetGroupsResult');  
}
class Aws::RedShift::DescribeClusterVersions {
  has ClusterParameterGroupFamily => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterVersions');
  has _returns => (isa => 'Aws::RedShift::DescribeClusterVersionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterVersionsResult');  
}
class Aws::RedShift::DescribeClusters {
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusters');
  has _returns => (isa => 'Aws::RedShift::DescribeClustersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClustersResult');  
}
class Aws::RedShift::DescribeDefaultClusterParameters {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDefaultClusterParameters');
  has _returns => (isa => 'Aws::RedShift::DescribeDefaultClusterParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDefaultClusterParametersResult');  
}
class Aws::RedShift::DescribeEventCategories {
  has SourceType => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventCategories');
  has _returns => (isa => 'Aws::RedShift::DescribeEventCategoriesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventCategoriesResult');  
}
class Aws::RedShift::DescribeEventSubscriptions {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SubscriptionName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventSubscriptions');
  has _returns => (isa => 'Aws::RedShift::DescribeEventSubscriptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventSubscriptionsResult');  
}
class Aws::RedShift::DescribeEvents {
  has Duration => (is => 'ro', isa => 'Int');
  has EndTime => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEvents');
  has _returns => (isa => 'Aws::RedShift::DescribeEventsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventsResult');  
}
class Aws::RedShift::DescribeHsmClientCertificates {
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHsmClientCertificates');
  has _returns => (isa => 'Aws::RedShift::DescribeHsmClientCertificatesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeHsmClientCertificatesResult');  
}
class Aws::RedShift::DescribeHsmConfigurations {
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHsmConfigurations');
  has _returns => (isa => 'Aws::RedShift::DescribeHsmConfigurationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeHsmConfigurationsResult');  
}
class Aws::RedShift::DescribeLoggingStatus {
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoggingStatus');
  has _returns => (isa => 'Aws::RedShift::DescribeLoggingStatusResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoggingStatusResult');  
}
class Aws::RedShift::DescribeOrderableClusterOptions {
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NodeType => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOrderableClusterOptions');
  has _returns => (isa => 'Aws::RedShift::DescribeOrderableClusterOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeOrderableClusterOptionsResult');  
}
class Aws::RedShift::DescribeReservedNodeOfferings {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ReservedNodeOfferingId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedNodeOfferings');
  has _returns => (isa => 'Aws::RedShift::DescribeReservedNodeOfferingsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedNodeOfferingsResult');  
}
class Aws::RedShift::DescribeReservedNodes {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ReservedNodeId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedNodes');
  has _returns => (isa => 'Aws::RedShift::DescribeReservedNodesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedNodesResult');  
}
class Aws::RedShift::DescribeResize {
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeResize');
  has _returns => (isa => 'Aws::RedShift::DescribeResizeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeResizeResult');  
}
class Aws::RedShift::DisableLogging {
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisableLogging');
  has _returns => (isa => 'Aws::RedShift::DisableLoggingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisableLoggingResult');  
}
class Aws::RedShift::DisableSnapshotCopy {
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisableSnapshotCopy');
  has _returns => (isa => 'Aws::RedShift::DisableSnapshotCopyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisableSnapshotCopyResult');  
}
class Aws::RedShift::EnableLogging {
  has BucketName => (is => 'ro', isa => 'Str', required => 1);
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has S3KeyPrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'EnableLogging');
  has _returns => (isa => 'Aws::RedShift::EnableLoggingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EnableLoggingResult');  
}
class Aws::RedShift::EnableSnapshotCopy {
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DestinationRegion => (is => 'ro', isa => 'Str', required => 1);
  has RetentionPeriod => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'EnableSnapshotCopy');
  has _returns => (isa => 'Aws::RedShift::EnableSnapshotCopyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EnableSnapshotCopyResult');  
}
class Aws::RedShift::ModifyCluster {
  has AllowVersionUpgrade => (is => 'ro', isa => 'Str');
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has ClusterType => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCluster');
  has _returns => (isa => 'Aws::RedShift::ModifyClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyClusterResult');  
}
class Aws::RedShift::ModifyClusterParameterGroup {
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Parameter]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyClusterParameterGroup');
  has _returns => (isa => 'Aws::RedShift::ModifyClusterParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyClusterParameterGroupResult');  
}
class Aws::RedShift::ModifyClusterSubnetGroup {
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyClusterSubnetGroup');
  has _returns => (isa => 'Aws::RedShift::ModifyClusterSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyClusterSubnetGroupResult');  
}
class Aws::RedShift::ModifyEventSubscription {
  has Enabled => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has Severity => (is => 'ro', isa => 'Str');
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has SourceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has SourceType => (is => 'ro', isa => 'Str');
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyEventSubscription');
  has _returns => (isa => 'Aws::RedShift::ModifyEventSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyEventSubscriptionResult');  
}
class Aws::RedShift::ModifySnapshotCopyRetentionPeriod {
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has RetentionPeriod => (is => 'ro', isa => 'Int', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifySnapshotCopyRetentionPeriod');
  has _returns => (isa => 'Aws::RedShift::ModifySnapshotCopyRetentionPeriodResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifySnapshotCopyRetentionPeriodResult');  
}
class Aws::RedShift::PurchaseReservedNodeOffering {
  has NodeCount => (is => 'ro', isa => 'Int');
  has ReservedNodeOfferingId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedNodeOffering');
  has _returns => (isa => 'Aws::RedShift::PurchaseReservedNodeOfferingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PurchaseReservedNodeOfferingResult');  
}
class Aws::RedShift::RebootCluster {
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RebootCluster');
  has _returns => (isa => 'Aws::RedShift::RebootClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RebootClusterResult');  
}
class Aws::RedShift::ResetClusterParameterGroup {
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Parameter]');
  has ResetAllParameters => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResetClusterParameterGroup');
  has _returns => (isa => 'Aws::RedShift::ResetClusterParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResetClusterParameterGroupResult');  
}
class Aws::RedShift::RestoreFromClusterSnapshot {
  has AllowVersionUpgrade => (is => 'ro', isa => 'Str');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has ElasticIp => (is => 'ro', isa => 'Str');
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has OwnerAccount => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Str');
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreFromClusterSnapshot');
  has _returns => (isa => 'Aws::RedShift::RestoreFromClusterSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreFromClusterSnapshotResult');  
}
class Aws::RedShift::RevokeClusterSecurityGroupIngress {
  has CIDRIP => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeClusterSecurityGroupIngress');
  has _returns => (isa => 'Aws::RedShift::RevokeClusterSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeClusterSecurityGroupIngressResult');  
}
class Aws::RedShift::RevokeSnapshotAccess {
  has AccountWithRestoreAccess => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeSnapshotAccess');
  has _returns => (isa => 'Aws::RedShift::RevokeSnapshotAccessResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeSnapshotAccessResult');  
}
class Aws::RedShift::RotateEncryptionKey {
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RotateEncryptionKey');
  has _returns => (isa => 'Aws::RedShift::RotateEncryptionKeyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RotateEncryptionKeyResult');  
}

class Aws::RedShift::AuthorizeClusterSecurityGroupIngressResult with AWS::API::ResultParser {
  has ClusterSecurityGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterSecurityGroup');

}
class Aws::RedShift::AuthorizeSnapshotAccessResult with AWS::API::ResultParser {
  has Snapshot => (is => 'ro', isa => 'Aws::RedShift::Snapshot');

}
class Aws::RedShift::CopyClusterSnapshotResult with AWS::API::ResultParser {
  has Snapshot => (is => 'ro', isa => 'Aws::RedShift::Snapshot');

}
class Aws::RedShift::CreateClusterResult with AWS::API::ResultParser {
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
class Aws::RedShift::CreateClusterParameterGroupResult with AWS::API::ResultParser {
  has ClusterParameterGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterParameterGroup');

}
class Aws::RedShift::CreateClusterSecurityGroupResult with AWS::API::ResultParser {
  has ClusterSecurityGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterSecurityGroup');

}
class Aws::RedShift::CreateClusterSnapshotResult with AWS::API::ResultParser {
  has Snapshot => (is => 'ro', isa => 'Aws::RedShift::Snapshot');

}
class Aws::RedShift::CreateClusterSubnetGroupResult with AWS::API::ResultParser {
  has ClusterSubnetGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterSubnetGroup');

}
class Aws::RedShift::CreateEventSubscriptionResult with AWS::API::ResultParser {
  has EventSubscription => (is => 'ro', isa => 'Aws::RedShift::EventSubscription');

}
class Aws::RedShift::CreateHsmClientCertificateResult with AWS::API::ResultParser {
  has HsmClientCertificate => (is => 'ro', isa => 'Aws::RedShift::HsmClientCertificate');

}
class Aws::RedShift::CreateHsmConfigurationResult with AWS::API::ResultParser {
  has HsmConfiguration => (is => 'ro', isa => 'Aws::RedShift::HsmConfiguration');

}
class Aws::RedShift::DeleteClusterResult with AWS::API::ResultParser {
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
class Aws::RedShift::DeleteClusterSnapshotResult with AWS::API::ResultParser {
  has Snapshot => (is => 'ro', isa => 'Aws::RedShift::Snapshot');

}
class Aws::RedShift::DescribeClusterParameterGroupsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has ParameterGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterParameterGroup]');

}
class Aws::RedShift::DescribeClusterParametersResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Parameter]');

}
class Aws::RedShift::DescribeClusterSecurityGroupsResult with AWS::API::ResultParser {
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterSecurityGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::RedShift::DescribeClusterSnapshotsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Snapshot]');

}
class Aws::RedShift::DescribeClusterSubnetGroupsResult with AWS::API::ResultParser {
  has ClusterSubnetGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterSubnetGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::RedShift::DescribeClusterVersionsResult with AWS::API::ResultParser {
  has ClusterVersions => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterVersion]');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::RedShift::DescribeClustersResult with AWS::API::ResultParser {
  has Clusters => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Cluster]');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::RedShift::DescribeDefaultClusterParametersResult with AWS::API::ResultParser {
  has DefaultClusterParameters => (is => 'ro', isa => 'Aws::RedShift::DefaultClusterParameters');

}
class Aws::RedShift::DescribeEventCategoriesResult with AWS::API::ResultParser {
  has EventCategoriesMapList => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::EventCategoriesMap]');

}
class Aws::RedShift::DescribeEventSubscriptionsResult with AWS::API::ResultParser {
  has EventSubscriptionsList => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::EventSubscription]');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::RedShift::DescribeEventsResult with AWS::API::ResultParser {
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Event]');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::RedShift::DescribeHsmClientCertificatesResult with AWS::API::ResultParser {
  has HsmClientCertificates => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::HsmClientCertificate]');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::RedShift::DescribeHsmConfigurationsResult with AWS::API::ResultParser {
  has HsmConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::HsmConfiguration]');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::RedShift::DescribeLoggingStatusResult with AWS::API::ResultParser {
  has BucketName => (is => 'ro', isa => 'Str');
  has LastFailureMessage => (is => 'ro', isa => 'Str');
  has LastFailureTime => (is => 'ro', isa => 'Str');
  has LastSuccessfulDeliveryTime => (is => 'ro', isa => 'Str');
  has LoggingEnabled => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');

}
class Aws::RedShift::DescribeOrderableClusterOptionsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has OrderableClusterOptions => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::OrderableClusterOption]');

}
class Aws::RedShift::DescribeReservedNodeOfferingsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedNodeOfferings => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ReservedNodeOffering]');

}
class Aws::RedShift::DescribeReservedNodesResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedNodes => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ReservedNode]');

}
class Aws::RedShift::DescribeResizeResult with AWS::API::ResultParser {
  has ImportTablesCompleted => (is => 'ro', isa => 'ArrayRef[Str]');
  has ImportTablesInProgress => (is => 'ro', isa => 'ArrayRef[Str]');
  has ImportTablesNotStarted => (is => 'ro', isa => 'ArrayRef[Str]');
  has Status => (is => 'ro', isa => 'Str');
  has TargetClusterType => (is => 'ro', isa => 'Str');
  has TargetNodeType => (is => 'ro', isa => 'Str');
  has TargetNumberOfNodes => (is => 'ro', isa => 'Int');

}
class Aws::RedShift::DisableLoggingResult with AWS::API::ResultParser {
  has BucketName => (is => 'ro', isa => 'Str');
  has LastFailureMessage => (is => 'ro', isa => 'Str');
  has LastFailureTime => (is => 'ro', isa => 'Str');
  has LastSuccessfulDeliveryTime => (is => 'ro', isa => 'Str');
  has LoggingEnabled => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');

}
class Aws::RedShift::DisableSnapshotCopyResult with AWS::API::ResultParser {
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
class Aws::RedShift::EnableLoggingResult with AWS::API::ResultParser {
  has BucketName => (is => 'ro', isa => 'Str');
  has LastFailureMessage => (is => 'ro', isa => 'Str');
  has LastFailureTime => (is => 'ro', isa => 'Str');
  has LastSuccessfulDeliveryTime => (is => 'ro', isa => 'Str');
  has LoggingEnabled => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');

}
class Aws::RedShift::EnableSnapshotCopyResult with AWS::API::ResultParser {
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
class Aws::RedShift::ModifyClusterResult with AWS::API::ResultParser {
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
class Aws::RedShift::ModifyClusterParameterGroupResult with AWS::API::ResultParser {
  has ParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterGroupStatus => (is => 'ro', isa => 'Str');

}
class Aws::RedShift::ModifyClusterSubnetGroupResult with AWS::API::ResultParser {
  has ClusterSubnetGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterSubnetGroup');

}
class Aws::RedShift::ModifyEventSubscriptionResult with AWS::API::ResultParser {
  has EventSubscription => (is => 'ro', isa => 'Aws::RedShift::EventSubscription');

}
class Aws::RedShift::ModifySnapshotCopyRetentionPeriodResult with AWS::API::ResultParser {
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
class Aws::RedShift::PurchaseReservedNodeOfferingResult with AWS::API::ResultParser {
  has ReservedNode => (is => 'ro', isa => 'Aws::RedShift::ReservedNode');

}
class Aws::RedShift::RebootClusterResult with AWS::API::ResultParser {
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
class Aws::RedShift::ResetClusterParameterGroupResult with AWS::API::ResultParser {
  has ParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterGroupStatus => (is => 'ro', isa => 'Str');

}
class Aws::RedShift::RestoreFromClusterSnapshotResult with AWS::API::ResultParser {
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
class Aws::RedShift::RevokeClusterSecurityGroupIngressResult with AWS::API::ResultParser {
  has ClusterSecurityGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterSecurityGroup');

}
class Aws::RedShift::RevokeSnapshotAccessResult with AWS::API::ResultParser {
  has Snapshot => (is => 'ro', isa => 'Aws::RedShift::Snapshot');

}
class Aws::RedShift::RotateEncryptionKeyResult with AWS::API::ResultParser {
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}

class Aws::RedShift with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'redshift');
  has version => (is => 'ro', isa => 'Str', default => '2012-12-01');
  
  method AuthorizeClusterSecurityGroupIngress (%args) {
    my $call = Aws::RedShift::AuthorizeClusterSecurityGroupIngress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::AuthorizeClusterSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method AuthorizeSnapshotAccess (%args) {
    my $call = Aws::RedShift::AuthorizeSnapshotAccess->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::AuthorizeSnapshotAccessResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CopyClusterSnapshot (%args) {
    my $call = Aws::RedShift::CopyClusterSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::CopyClusterSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateCluster (%args) {
    my $call = Aws::RedShift::CreateCluster->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::CreateClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateClusterParameterGroup (%args) {
    my $call = Aws::RedShift::CreateClusterParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::CreateClusterParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateClusterSecurityGroup (%args) {
    my $call = Aws::RedShift::CreateClusterSecurityGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::CreateClusterSecurityGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateClusterSnapshot (%args) {
    my $call = Aws::RedShift::CreateClusterSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::CreateClusterSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateClusterSubnetGroup (%args) {
    my $call = Aws::RedShift::CreateClusterSubnetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::CreateClusterSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateEventSubscription (%args) {
    my $call = Aws::RedShift::CreateEventSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::CreateEventSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateHsmClientCertificate (%args) {
    my $call = Aws::RedShift::CreateHsmClientCertificate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::CreateHsmClientCertificateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateHsmConfiguration (%args) {
    my $call = Aws::RedShift::CreateHsmConfiguration->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::CreateHsmConfigurationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteCluster (%args) {
    my $call = Aws::RedShift::DeleteCluster->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DeleteClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteClusterParameterGroup (%args) {
    my $call = Aws::RedShift::DeleteClusterParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteClusterSecurityGroup (%args) {
    my $call = Aws::RedShift::DeleteClusterSecurityGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteClusterSnapshot (%args) {
    my $call = Aws::RedShift::DeleteClusterSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DeleteClusterSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteClusterSubnetGroup (%args) {
    my $call = Aws::RedShift::DeleteClusterSubnetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteEventSubscription (%args) {
    my $call = Aws::RedShift::DeleteEventSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteHsmClientCertificate (%args) {
    my $call = Aws::RedShift::DeleteHsmClientCertificate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteHsmConfiguration (%args) {
    my $call = Aws::RedShift::DeleteHsmConfiguration->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DescribeClusterParameterGroups (%args) {
    my $call = Aws::RedShift::DescribeClusterParameterGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeClusterParameterGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeClusterParameters (%args) {
    my $call = Aws::RedShift::DescribeClusterParameters->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeClusterParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeClusters (%args) {
    my $call = Aws::RedShift::DescribeClusters->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeClustersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeClusterSecurityGroups (%args) {
    my $call = Aws::RedShift::DescribeClusterSecurityGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeClusterSecurityGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeClusterSnapshots (%args) {
    my $call = Aws::RedShift::DescribeClusterSnapshots->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeClusterSnapshotsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeClusterSubnetGroups (%args) {
    my $call = Aws::RedShift::DescribeClusterSubnetGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeClusterSubnetGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeClusterVersions (%args) {
    my $call = Aws::RedShift::DescribeClusterVersions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeClusterVersionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeDefaultClusterParameters (%args) {
    my $call = Aws::RedShift::DescribeDefaultClusterParameters->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeDefaultClusterParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeEventCategories (%args) {
    my $call = Aws::RedShift::DescribeEventCategories->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeEventCategoriesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeEvents (%args) {
    my $call = Aws::RedShift::DescribeEvents->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeEventsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeEventSubscriptions (%args) {
    my $call = Aws::RedShift::DescribeEventSubscriptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeEventSubscriptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeHsmClientCertificates (%args) {
    my $call = Aws::RedShift::DescribeHsmClientCertificates->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeHsmClientCertificatesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeHsmConfigurations (%args) {
    my $call = Aws::RedShift::DescribeHsmConfigurations->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeHsmConfigurationsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeLoggingStatus (%args) {
    my $call = Aws::RedShift::DescribeLoggingStatus->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeLoggingStatusResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeOrderableClusterOptions (%args) {
    my $call = Aws::RedShift::DescribeOrderableClusterOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeOrderableClusterOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeReservedNodeOfferings (%args) {
    my $call = Aws::RedShift::DescribeReservedNodeOfferings->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeReservedNodeOfferingsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeReservedNodes (%args) {
    my $call = Aws::RedShift::DescribeReservedNodes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeReservedNodesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeResize (%args) {
    my $call = Aws::RedShift::DescribeResize->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeResizeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DisableLogging (%args) {
    my $call = Aws::RedShift::DisableLogging->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DisableLoggingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DisableSnapshotCopy (%args) {
    my $call = Aws::RedShift::DisableSnapshotCopy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DisableSnapshotCopyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method EnableLogging (%args) {
    my $call = Aws::RedShift::EnableLogging->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::EnableLoggingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method EnableSnapshotCopy (%args) {
    my $call = Aws::RedShift::EnableSnapshotCopy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::EnableSnapshotCopyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifyCluster (%args) {
    my $call = Aws::RedShift::ModifyCluster->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::ModifyClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifyClusterParameterGroup (%args) {
    my $call = Aws::RedShift::ModifyClusterParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::ModifyClusterParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifyClusterSubnetGroup (%args) {
    my $call = Aws::RedShift::ModifyClusterSubnetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::ModifyClusterSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifyEventSubscription (%args) {
    my $call = Aws::RedShift::ModifyEventSubscription->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::ModifyEventSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifySnapshotCopyRetentionPeriod (%args) {
    my $call = Aws::RedShift::ModifySnapshotCopyRetentionPeriod->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::ModifySnapshotCopyRetentionPeriodResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method PurchaseReservedNodeOffering (%args) {
    my $call = Aws::RedShift::PurchaseReservedNodeOffering->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::PurchaseReservedNodeOfferingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RebootCluster (%args) {
    my $call = Aws::RedShift::RebootCluster->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::RebootClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ResetClusterParameterGroup (%args) {
    my $call = Aws::RedShift::ResetClusterParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::ResetClusterParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RestoreFromClusterSnapshot (%args) {
    my $call = Aws::RedShift::RestoreFromClusterSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::RestoreFromClusterSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RevokeClusterSecurityGroupIngress (%args) {
    my $call = Aws::RedShift::RevokeClusterSecurityGroupIngress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::RevokeClusterSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RevokeSnapshotAccess (%args) {
    my $call = Aws::RedShift::RevokeSnapshotAccess->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::RevokeSnapshotAccessResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RotateEncryptionKey (%args) {
    my $call = Aws::RedShift::RotateEncryptionKey->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::RotateEncryptionKeyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
