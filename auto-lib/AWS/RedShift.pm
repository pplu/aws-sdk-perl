
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'AWS::RedShift::SourceType', [qw(cluster cluster-parameter-group cluster-security-group cluster-snapshot )];


class AWS::RedShift::AccountWithRestoreAccess with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AccountId => (is => 'ro', isa => 'Str');
}

class AWS::RedShift::AvailabilityZone with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str');
}

class AWS::RedShift::Cluster with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AllowVersionUpgrade => (is => 'ro', isa => 'Str');
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has ClusterCreateTime => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has ClusterParameterGroups => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::ClusterParameterGroupStatus]');
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::ClusterSecurityGroupMembership]');
  has ClusterStatus => (is => 'ro', isa => 'Str');
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has DBName => (is => 'ro', isa => 'Str');
  has Encrypted => (is => 'ro', isa => 'Str');
  has Endpoint => (is => 'ro', isa => 'AWS::RedShift::Endpoint');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has ModifyStatus => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has PendingModifiedValues => (is => 'ro', isa => 'AWS::RedShift::PendingModifiedValues');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Str');
  has RestoreStatus => (is => 'ro', isa => 'AWS::RedShift::RestoreStatus');
  has VpcId => (is => 'ro', isa => 'Str');
  has VpcSecurityGroups => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::VpcSecurityGroupMembership]');
}

class AWS::RedShift::ClusterParameterGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Description => (is => 'ro', isa => 'Str');
  has ParameterGroupFamily => (is => 'ro', isa => 'Str');
  has ParameterGroupName => (is => 'ro', isa => 'Str');
}

class AWS::RedShift::ClusterParameterGroupStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ParameterApplyStatus => (is => 'ro', isa => 'Str');
  has ParameterGroupName => (is => 'ro', isa => 'Str');
}

class AWS::RedShift::ClusterSecurityGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EC2SecurityGroups => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::EC2SecurityGroup]');
  has IPRanges => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::IPRange]');
}

class AWS::RedShift::ClusterSecurityGroupMembership with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class AWS::RedShift::ClusterSubnetGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has SubnetGroupStatus => (is => 'ro', isa => 'Str');
  has Subnets => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::Subnet]');
  has VpcId => (is => 'ro', isa => 'Str');
}

class AWS::RedShift::ClusterVersion with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ClusterParameterGroupFamily => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
}

class AWS::RedShift::DefaultClusterParameters with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Marker => (is => 'ro', isa => 'Str');
  has ParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::Parameter]');
}

class AWS::RedShift::EC2SecurityGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class AWS::RedShift::Endpoint with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Address => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
}

class AWS::RedShift::Event with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Date => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'AWS::RedShift::SourceType');
}

class AWS::RedShift::IPRange with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CIDRIP => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class AWS::RedShift::OrderableClusterOption with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::AvailabilityZone]');
  has ClusterType => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
}

class AWS::RedShift::Parameter with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AllowedValues => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Str');
  has MinimumEngineVersion => (is => 'ro', isa => 'Str');
  has ParameterName => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
}

class AWS::RedShift::PendingModifiedValues with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has ClusterType => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
}

class AWS::RedShift::RecurringCharge with (AWS::API::ResultParser, AWS::API::ToParams) {
  has RecurringChargeAmount => (is => 'ro', isa => 'Num');
  has RecurringChargeFrequency => (is => 'ro', isa => 'Str');
}

class AWS::RedShift::ReservedNode with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has FixedPrice => (is => 'ro', isa => 'Num');
  has NodeCount => (is => 'ro', isa => 'Int');
  has NodeType => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::RecurringCharge]');
  has ReservedNodeId => (is => 'ro', isa => 'Str');
  has ReservedNodeOfferingId => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has UsagePrice => (is => 'ro', isa => 'Num');
}

class AWS::RedShift::ReservedNodeOffering with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has FixedPrice => (is => 'ro', isa => 'Num');
  has NodeType => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::RecurringCharge]');
  has ReservedNodeOfferingId => (is => 'ro', isa => 'Str');
  has UsagePrice => (is => 'ro', isa => 'Num');
}

class AWS::RedShift::RestoreStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CurrentRestoreRateInMegaBytesPerSecond => (is => 'ro', isa => 'Num');
  has ElapsedTimeInSeconds => (is => 'ro', isa => 'Num');
  has EstimatedTimeToCompletionInSeconds => (is => 'ro', isa => 'Num');
  has ProgressInMegaBytes => (is => 'ro', isa => 'Num');
  has SnapshotSizeInMegaBytes => (is => 'ro', isa => 'Num');
  has Status => (is => 'ro', isa => 'Str');
}

class AWS::RedShift::Snapshot with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AccountsWithRestoreAccess => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::AccountWithRestoreAccess]');
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
  has EstimatedSecondsToCompletion => (is => 'ro', isa => 'Num');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has OwnerAccount => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has SnapshotCreateTime => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TotalBackupSizeInMegaBytes => (is => 'ro', isa => 'Num');
  has VpcId => (is => 'ro', isa => 'Str');
}

class AWS::RedShift::Subnet with (AWS::API::ResultParser, AWS::API::ToParams) {
  has SubnetAvailabilityZone => (is => 'ro', isa => 'AWS::RedShift::AvailabilityZone');
  has SubnetIdentifier => (is => 'ro', isa => 'Str');
  has SubnetStatus => (is => 'ro', isa => 'Str');
}

class AWS::RedShift::VpcSecurityGroupMembership with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Status => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupId => (is => 'ro', isa => 'Str');
}



class AWS::RedShift::AuthorizeClusterSecurityGroupIngress {
  has CIDRIP => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeClusterSecurityGroupIngress');
  has _returns => (isa => 'AWS::RedShift::AuthorizeClusterSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeClusterSecurityGroupIngressResult');  
}
class AWS::RedShift::AuthorizeSnapshotAccess {
  has AccountWithRestoreAccess => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeSnapshotAccess');
  has _returns => (isa => 'AWS::RedShift::AuthorizeSnapshotAccessResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeSnapshotAccessResult');  
}
class AWS::RedShift::CopyClusterSnapshot {
  has SourceSnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SourceSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has TargetSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CopyClusterSnapshot');
  has _returns => (isa => 'AWS::RedShift::CopyClusterSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CopyClusterSnapshotResult');  
}
class AWS::RedShift::CreateCluster {
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
  has Encrypted => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str', required => 1);
  has MasterUserPassword => (is => 'ro', isa => 'Str', required => 1);
  has NodeType => (is => 'ro', isa => 'Str', required => 1);
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCluster');
  has _returns => (isa => 'AWS::RedShift::CreateClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterResult');  
}
class AWS::RedShift::CreateClusterParameterGroup {
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has ParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterParameterGroup');
  has _returns => (isa => 'AWS::RedShift::CreateClusterParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterParameterGroupResult');  
}
class AWS::RedShift::CreateClusterSecurityGroup {
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterSecurityGroup');
  has _returns => (isa => 'AWS::RedShift::CreateClusterSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterSecurityGroupResult');  
}
class AWS::RedShift::CreateClusterSnapshot {
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterSnapshot');
  has _returns => (isa => 'AWS::RedShift::CreateClusterSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterSnapshotResult');  
}
class AWS::RedShift::CreateClusterSubnetGroup {
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterSubnetGroup');
  has _returns => (isa => 'AWS::RedShift::CreateClusterSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterSubnetGroupResult');  
}
class AWS::RedShift::DeleteCluster {
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has FinalClusterSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SkipFinalClusterSnapshot => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCluster');
  has _returns => (isa => 'AWS::RedShift::DeleteClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteClusterResult');  
}
class AWS::RedShift::DeleteClusterParameterGroup {
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteClusterParameterGroup');
  has _returns => (isa => 'AWS::RedShift::DeleteClusterParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteClusterParameterGroupResult');  
}
class AWS::RedShift::DeleteClusterSecurityGroup {
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteClusterSecurityGroup');
  has _returns => (isa => 'AWS::RedShift::DeleteClusterSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteClusterSecurityGroupResult');  
}
class AWS::RedShift::DeleteClusterSnapshot {
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteClusterSnapshot');
  has _returns => (isa => 'AWS::RedShift::DeleteClusterSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteClusterSnapshotResult');  
}
class AWS::RedShift::DeleteClusterSubnetGroup {
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteClusterSubnetGroup');
  has _returns => (isa => 'AWS::RedShift::DeleteClusterSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteClusterSubnetGroupResult');  
}
class AWS::RedShift::DescribeClusterParameterGroups {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ParameterGroupName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterParameterGroups');
  has _returns => (isa => 'AWS::RedShift::DescribeClusterParameterGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterParameterGroupsResult');  
}
class AWS::RedShift::DescribeClusterParameters {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Source => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterParameters');
  has _returns => (isa => 'AWS::RedShift::DescribeClusterParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterParametersResult');  
}
class AWS::RedShift::DescribeClusterSecurityGroups {
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterSecurityGroups');
  has _returns => (isa => 'AWS::RedShift::DescribeClusterSecurityGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterSecurityGroupsResult');  
}
class AWS::RedShift::DescribeClusterSnapshots {
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has OwnerAccount => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotType => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterSnapshots');
  has _returns => (isa => 'AWS::RedShift::DescribeClusterSnapshotsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterSnapshotsResult');  
}
class AWS::RedShift::DescribeClusterSubnetGroups {
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterSubnetGroups');
  has _returns => (isa => 'AWS::RedShift::DescribeClusterSubnetGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterSubnetGroupsResult');  
}
class AWS::RedShift::DescribeClusterVersions {
  has ClusterParameterGroupFamily => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterVersions');
  has _returns => (isa => 'AWS::RedShift::DescribeClusterVersionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterVersionsResult');  
}
class AWS::RedShift::DescribeClusters {
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusters');
  has _returns => (isa => 'AWS::RedShift::DescribeClustersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClustersResult');  
}
class AWS::RedShift::DescribeDefaultClusterParameters {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDefaultClusterParameters');
  has _returns => (isa => 'AWS::RedShift::DescribeDefaultClusterParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDefaultClusterParametersResult');  
}
class AWS::RedShift::DescribeEvents {
  has Duration => (is => 'ro', isa => 'Int');
  has EndTime => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEvents');
  has _returns => (isa => 'AWS::RedShift::DescribeEventsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventsResult');  
}
class AWS::RedShift::DescribeOrderableClusterOptions {
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NodeType => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOrderableClusterOptions');
  has _returns => (isa => 'AWS::RedShift::DescribeOrderableClusterOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeOrderableClusterOptionsResult');  
}
class AWS::RedShift::DescribeReservedNodeOfferings {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ReservedNodeOfferingId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedNodeOfferings');
  has _returns => (isa => 'AWS::RedShift::DescribeReservedNodeOfferingsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedNodeOfferingsResult');  
}
class AWS::RedShift::DescribeReservedNodes {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ReservedNodeId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedNodes');
  has _returns => (isa => 'AWS::RedShift::DescribeReservedNodesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedNodesResult');  
}
class AWS::RedShift::DescribeResize {
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeResize');
  has _returns => (isa => 'AWS::RedShift::DescribeResizeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeResizeResult');  
}
class AWS::RedShift::ModifyCluster {
  has AllowVersionUpgrade => (is => 'ro', isa => 'Str');
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has ClusterType => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCluster');
  has _returns => (isa => 'AWS::RedShift::ModifyClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyClusterResult');  
}
class AWS::RedShift::ModifyClusterParameterGroup {
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::Parameter]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyClusterParameterGroup');
  has _returns => (isa => 'AWS::RedShift::ModifyClusterParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyClusterParameterGroupResult');  
}
class AWS::RedShift::ModifyClusterSubnetGroup {
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyClusterSubnetGroup');
  has _returns => (isa => 'AWS::RedShift::ModifyClusterSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyClusterSubnetGroupResult');  
}
class AWS::RedShift::PurchaseReservedNodeOffering {
  has NodeCount => (is => 'ro', isa => 'Int');
  has ReservedNodeOfferingId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedNodeOffering');
  has _returns => (isa => 'AWS::RedShift::PurchaseReservedNodeOfferingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PurchaseReservedNodeOfferingResult');  
}
class AWS::RedShift::RebootCluster {
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RebootCluster');
  has _returns => (isa => 'AWS::RedShift::RebootClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RebootClusterResult');  
}
class AWS::RedShift::ResetClusterParameterGroup {
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::Parameter]');
  has ResetAllParameters => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResetClusterParameterGroup');
  has _returns => (isa => 'AWS::RedShift::ResetClusterParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResetClusterParameterGroupResult');  
}
class AWS::RedShift::RestoreFromClusterSnapshot {
  has AllowVersionUpgrade => (is => 'ro', isa => 'Str');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has OwnerAccount => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Str');
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreFromClusterSnapshot');
  has _returns => (isa => 'AWS::RedShift::RestoreFromClusterSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreFromClusterSnapshotResult');  
}
class AWS::RedShift::RevokeClusterSecurityGroupIngress {
  has CIDRIP => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeClusterSecurityGroupIngress');
  has _returns => (isa => 'AWS::RedShift::RevokeClusterSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeClusterSecurityGroupIngressResult');  
}
class AWS::RedShift::RevokeSnapshotAccess {
  has AccountWithRestoreAccess => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeSnapshotAccess');
  has _returns => (isa => 'AWS::RedShift::RevokeSnapshotAccessResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeSnapshotAccessResult');  
}

class AWS::RedShift::AuthorizeClusterSecurityGroupIngressResult with AWS::API::ResultParser {
  has ClusterSecurityGroup => (is => 'ro', isa => 'AWS::RedShift::ClusterSecurityGroup');

}
class AWS::RedShift::AuthorizeSnapshotAccessResult with AWS::API::ResultParser {
  has Snapshot => (is => 'ro', isa => 'AWS::RedShift::Snapshot');

}
class AWS::RedShift::CopyClusterSnapshotResult with AWS::API::ResultParser {
  has Snapshot => (is => 'ro', isa => 'AWS::RedShift::Snapshot');

}
class AWS::RedShift::CreateClusterResult with AWS::API::ResultParser {
  has Cluster => (is => 'ro', isa => 'AWS::RedShift::Cluster');

}
class AWS::RedShift::CreateClusterParameterGroupResult with AWS::API::ResultParser {
  has ClusterParameterGroup => (is => 'ro', isa => 'AWS::RedShift::ClusterParameterGroup');

}
class AWS::RedShift::CreateClusterSecurityGroupResult with AWS::API::ResultParser {
  has ClusterSecurityGroup => (is => 'ro', isa => 'AWS::RedShift::ClusterSecurityGroup');

}
class AWS::RedShift::CreateClusterSnapshotResult with AWS::API::ResultParser {
  has Snapshot => (is => 'ro', isa => 'AWS::RedShift::Snapshot');

}
class AWS::RedShift::CreateClusterSubnetGroupResult with AWS::API::ResultParser {
  has ClusterSubnetGroup => (is => 'ro', isa => 'AWS::RedShift::ClusterSubnetGroup');

}
class AWS::RedShift::DeleteClusterResult with AWS::API::ResultParser {
  has Cluster => (is => 'ro', isa => 'AWS::RedShift::Cluster');

}
class AWS::RedShift::DeleteClusterSnapshotResult with AWS::API::ResultParser {
  has Snapshot => (is => 'ro', isa => 'AWS::RedShift::Snapshot');

}
class AWS::RedShift::DescribeClusterParameterGroupsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has ParameterGroups => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::ClusterParameterGroup]');

}
class AWS::RedShift::DescribeClusterParametersResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::Parameter]');

}
class AWS::RedShift::DescribeClusterSecurityGroupsResult with AWS::API::ResultParser {
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::ClusterSecurityGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
class AWS::RedShift::DescribeClusterSnapshotsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has Snapshots => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::Snapshot]');

}
class AWS::RedShift::DescribeClusterSubnetGroupsResult with AWS::API::ResultParser {
  has ClusterSubnetGroups => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::ClusterSubnetGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
class AWS::RedShift::DescribeClusterVersionsResult with AWS::API::ResultParser {
  has ClusterVersions => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::ClusterVersion]');
  has Marker => (is => 'ro', isa => 'Str');

}
class AWS::RedShift::DescribeClustersResult with AWS::API::ResultParser {
  has Clusters => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::Cluster]');
  has Marker => (is => 'ro', isa => 'Str');

}
class AWS::RedShift::DescribeDefaultClusterParametersResult with AWS::API::ResultParser {
  has DefaultClusterParameters => (is => 'ro', isa => 'AWS::RedShift::DefaultClusterParameters');

}
class AWS::RedShift::DescribeEventsResult with AWS::API::ResultParser {
  has Events => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::Event]');
  has Marker => (is => 'ro', isa => 'Str');

}
class AWS::RedShift::DescribeOrderableClusterOptionsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has OrderableClusterOptions => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::OrderableClusterOption]');

}
class AWS::RedShift::DescribeReservedNodeOfferingsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedNodeOfferings => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::ReservedNodeOffering]');

}
class AWS::RedShift::DescribeReservedNodesResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedNodes => (is => 'ro', isa => 'ArrayRef[AWS::RedShift::ReservedNode]');

}
class AWS::RedShift::DescribeResizeResult with AWS::API::ResultParser {
  has ImportTablesCompleted => (is => 'ro', isa => 'ArrayRef[Str]');
  has ImportTablesInProgress => (is => 'ro', isa => 'ArrayRef[Str]');
  has ImportTablesNotStarted => (is => 'ro', isa => 'ArrayRef[Str]');
  has Status => (is => 'ro', isa => 'Str');
  has TargetClusterType => (is => 'ro', isa => 'Str');
  has TargetNodeType => (is => 'ro', isa => 'Str');
  has TargetNumberOfNodes => (is => 'ro', isa => 'Int');

}
class AWS::RedShift::ModifyClusterResult with AWS::API::ResultParser {
  has Cluster => (is => 'ro', isa => 'AWS::RedShift::Cluster');

}
class AWS::RedShift::ModifyClusterParameterGroupResult with AWS::API::ResultParser {
  has ParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterGroupStatus => (is => 'ro', isa => 'Str');

}
class AWS::RedShift::ModifyClusterSubnetGroupResult with AWS::API::ResultParser {
  has ClusterSubnetGroup => (is => 'ro', isa => 'AWS::RedShift::ClusterSubnetGroup');

}
class AWS::RedShift::PurchaseReservedNodeOfferingResult with AWS::API::ResultParser {
  has ReservedNode => (is => 'ro', isa => 'AWS::RedShift::ReservedNode');

}
class AWS::RedShift::RebootClusterResult with AWS::API::ResultParser {
  has Cluster => (is => 'ro', isa => 'AWS::RedShift::Cluster');

}
class AWS::RedShift::ResetClusterParameterGroupResult with AWS::API::ResultParser {
  has ParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterGroupStatus => (is => 'ro', isa => 'Str');

}
class AWS::RedShift::RestoreFromClusterSnapshotResult with AWS::API::ResultParser {
  has Cluster => (is => 'ro', isa => 'AWS::RedShift::Cluster');

}
class AWS::RedShift::RevokeClusterSecurityGroupIngressResult with AWS::API::ResultParser {
  has ClusterSecurityGroup => (is => 'ro', isa => 'AWS::RedShift::ClusterSecurityGroup');

}
class AWS::RedShift::RevokeSnapshotAccessResult with AWS::API::ResultParser {
  has Snapshot => (is => 'ro', isa => 'AWS::RedShift::Snapshot');

}

class AWS::RedShift with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'redshift');
  has version => (is => 'ro', isa => 'Str', default => '2012-12-01');
  
  method AuthorizeClusterSecurityGroupIngress (%args) {
    my $call = AWS::RedShift::AuthorizeClusterSecurityGroupIngress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::AuthorizeClusterSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method AuthorizeSnapshotAccess (%args) {
    my $call = AWS::RedShift::AuthorizeSnapshotAccess->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::AuthorizeSnapshotAccessResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CopyClusterSnapshot (%args) {
    my $call = AWS::RedShift::CopyClusterSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::CopyClusterSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateCluster (%args) {
    my $call = AWS::RedShift::CreateCluster->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::CreateClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateClusterParameterGroup (%args) {
    my $call = AWS::RedShift::CreateClusterParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::CreateClusterParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateClusterSecurityGroup (%args) {
    my $call = AWS::RedShift::CreateClusterSecurityGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::CreateClusterSecurityGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateClusterSnapshot (%args) {
    my $call = AWS::RedShift::CreateClusterSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::CreateClusterSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateClusterSubnetGroup (%args) {
    my $call = AWS::RedShift::CreateClusterSubnetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::CreateClusterSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteCluster (%args) {
    my $call = AWS::RedShift::DeleteCluster->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::DeleteClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteClusterParameterGroup (%args) {
    my $call = AWS::RedShift::DeleteClusterParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteClusterSecurityGroup (%args) {
    my $call = AWS::RedShift::DeleteClusterSecurityGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteClusterSnapshot (%args) {
    my $call = AWS::RedShift::DeleteClusterSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::DeleteClusterSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteClusterSubnetGroup (%args) {
    my $call = AWS::RedShift::DeleteClusterSubnetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DescribeClusterParameterGroups (%args) {
    my $call = AWS::RedShift::DescribeClusterParameterGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::DescribeClusterParameterGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeClusterParameters (%args) {
    my $call = AWS::RedShift::DescribeClusterParameters->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::DescribeClusterParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeClusters (%args) {
    my $call = AWS::RedShift::DescribeClusters->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::DescribeClustersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeClusterSecurityGroups (%args) {
    my $call = AWS::RedShift::DescribeClusterSecurityGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::DescribeClusterSecurityGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeClusterSnapshots (%args) {
    my $call = AWS::RedShift::DescribeClusterSnapshots->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::DescribeClusterSnapshotsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeClusterSubnetGroups (%args) {
    my $call = AWS::RedShift::DescribeClusterSubnetGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::DescribeClusterSubnetGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeClusterVersions (%args) {
    my $call = AWS::RedShift::DescribeClusterVersions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::DescribeClusterVersionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeDefaultClusterParameters (%args) {
    my $call = AWS::RedShift::DescribeDefaultClusterParameters->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::DescribeDefaultClusterParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeEvents (%args) {
    my $call = AWS::RedShift::DescribeEvents->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::DescribeEventsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeOrderableClusterOptions (%args) {
    my $call = AWS::RedShift::DescribeOrderableClusterOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::DescribeOrderableClusterOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeReservedNodeOfferings (%args) {
    my $call = AWS::RedShift::DescribeReservedNodeOfferings->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::DescribeReservedNodeOfferingsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeReservedNodes (%args) {
    my $call = AWS::RedShift::DescribeReservedNodes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::DescribeReservedNodesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeResize (%args) {
    my $call = AWS::RedShift::DescribeResize->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::DescribeResizeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifyCluster (%args) {
    my $call = AWS::RedShift::ModifyCluster->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::ModifyClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifyClusterParameterGroup (%args) {
    my $call = AWS::RedShift::ModifyClusterParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::ModifyClusterParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifyClusterSubnetGroup (%args) {
    my $call = AWS::RedShift::ModifyClusterSubnetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::ModifyClusterSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method PurchaseReservedNodeOffering (%args) {
    my $call = AWS::RedShift::PurchaseReservedNodeOffering->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::PurchaseReservedNodeOfferingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RebootCluster (%args) {
    my $call = AWS::RedShift::RebootCluster->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::RebootClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ResetClusterParameterGroup (%args) {
    my $call = AWS::RedShift::ResetClusterParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::ResetClusterParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RestoreFromClusterSnapshot (%args) {
    my $call = AWS::RedShift::RestoreFromClusterSnapshot->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::RestoreFromClusterSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RevokeClusterSecurityGroupIngress (%args) {
    my $call = AWS::RedShift::RevokeClusterSecurityGroupIngress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::RevokeClusterSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RevokeSnapshotAccess (%args) {
    my $call = AWS::RedShift::RevokeSnapshotAccess->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::RedShift::RevokeSnapshotAccessResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
