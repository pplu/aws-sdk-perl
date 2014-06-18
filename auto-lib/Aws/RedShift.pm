
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::RedShift::SourceType', ['cluster','cluster-parameter-group','cluster-security-group','cluster-snapshot',];


package Aws::RedShift::AccountWithRestoreAccess {
  use Moose;
  with ('AWS::API::ResultParser');
  has AccountId => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::AvailabilityZone {
  use Moose;
  with ('AWS::API::ResultParser');
  has Name => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::Cluster {
  use Moose;
  with ('AWS::API::ResultParser');
  has AllowVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has ClusterCreateTime => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has ClusterNodes => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterNode]');
  has ClusterParameterGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterParameterGroupStatus]');
  has ClusterPublicKey => (is => 'ro', isa => 'Str');
  has ClusterRevisionNumber => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterSecurityGroupMembership]');
  has ClusterSnapshotCopyStatus => (is => 'ro', isa => 'Aws::RedShift::ClusterSnapshotCopyStatus');
  has ClusterStatus => (is => 'ro', isa => 'Str');
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has DBName => (is => 'ro', isa => 'Str');
  has ElasticIpStatus => (is => 'ro', isa => 'Aws::RedShift::ElasticIpStatus');
  has Encrypted => (is => 'ro', isa => 'Bool');
  has Endpoint => (is => 'ro', isa => 'Aws::RedShift::Endpoint');
  has HsmStatus => (is => 'ro', isa => 'Aws::RedShift::HsmStatus');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has ModifyStatus => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has PendingModifiedValues => (is => 'ro', isa => 'Aws::RedShift::PendingModifiedValues');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has RestoreStatus => (is => 'ro', isa => 'Aws::RedShift::RestoreStatus');
  has VpcId => (is => 'ro', isa => 'Str');
  has VpcSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::VpcSecurityGroupMembership]');
}

package Aws::RedShift::ClusterNode {
  use Moose;
  with ('AWS::API::ResultParser');
  has NodeRole => (is => 'ro', isa => 'Str');
  has PrivateIPAddress => (is => 'ro', isa => 'Str');
  has PublicIPAddress => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::ClusterParameterGroup {
  use Moose;
  with ('AWS::API::ResultParser');
  has Description => (is => 'ro', isa => 'Str');
  has ParameterGroupFamily => (is => 'ro', isa => 'Str');
  has ParameterGroupName => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::ClusterParameterGroupStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has ParameterApplyStatus => (is => 'ro', isa => 'Str');
  has ParameterGroupName => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::ClusterSecurityGroup {
  use Moose;
  with ('AWS::API::ResultParser');
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EC2SecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::EC2SecurityGroup]');
  has IPRanges => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::IPRange]');
}

package Aws::RedShift::ClusterSecurityGroupMembership {
  use Moose;
  with ('AWS::API::ResultParser');
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::ClusterSnapshotCopyStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has DestinationRegion => (is => 'ro', isa => 'Str');
  has RetentionPeriod => (is => 'ro', isa => 'Num');
}

package Aws::RedShift::ClusterSubnetGroup {
  use Moose;
  with ('AWS::API::ResultParser');
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has SubnetGroupStatus => (is => 'ro', isa => 'Str');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Subnet]');
  has VpcId => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::ClusterVersion {
  use Moose;
  with ('AWS::API::ResultParser');
  has ClusterParameterGroupFamily => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::DefaultClusterParameters {
  use Moose;
  with ('AWS::API::ResultParser');
  has Marker => (is => 'ro', isa => 'Str');
  has ParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Parameter]');
}

package Aws::RedShift::EC2SecurityGroup {
  use Moose;
  with ('AWS::API::ResultParser');
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::ElasticIpStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has ElasticIp => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::Endpoint {
  use Moose;
  with ('AWS::API::ResultParser');
  has Address => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
}

package Aws::RedShift::Event {
  use Moose;
  with ('AWS::API::ResultParser');
  has Date => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has EventId => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Str');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Aws::RedShift::SourceType');
}

package Aws::RedShift::EventCategoriesMap {
  use Moose;
  with ('AWS::API::ResultParser');
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::EventInfoMap]');
  has SourceType => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::EventInfoMap {
  use Moose;
  with ('AWS::API::ResultParser');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]');
  has EventDescription => (is => 'ro', isa => 'Str');
  has EventId => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::EventSubscription {
  use Moose;
  with ('AWS::API::ResultParser');
  has CustSubscriptionId => (is => 'ro', isa => 'Str');
  has CustomerAwsId => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has EventCategoriesList => (is => 'ro', isa => 'ArrayRef[Str]');
  has Severity => (is => 'ro', isa => 'Str');
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has SourceIdsList => (is => 'ro', isa => 'ArrayRef[Str]');
  has SourceType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SubscriptionCreationTime => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::HsmClientCertificate {
  use Moose;
  with ('AWS::API::ResultParser');
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has HsmClientCertificatePublicKey => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::HsmConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has Description => (is => 'ro', isa => 'Str');
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has HsmIpAddress => (is => 'ro', isa => 'Str');
  has HsmPartitionName => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::HsmStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::IPRange {
  use Moose;
  with ('AWS::API::ResultParser');
  has CIDRIP => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::OrderableClusterOption {
  use Moose;
  with ('AWS::API::ResultParser');
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::AvailabilityZone]');
  has ClusterType => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::Parameter {
  use Moose;
  with ('AWS::API::ResultParser');
  has AllowedValues => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Bool');
  has MinimumEngineVersion => (is => 'ro', isa => 'Str');
  has ParameterName => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::PendingModifiedValues {
  use Moose;
  with ('AWS::API::ResultParser');
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has ClusterType => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
}

package Aws::RedShift::RecurringCharge {
  use Moose;
  with ('AWS::API::ResultParser');
  has RecurringChargeAmount => (is => 'ro', isa => 'Num');
  has RecurringChargeFrequency => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::ReservedNode {
  use Moose;
  with ('AWS::API::ResultParser');
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

package Aws::RedShift::ReservedNodeOffering {
  use Moose;
  with ('AWS::API::ResultParser');
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has FixedPrice => (is => 'ro', isa => 'Num');
  has NodeType => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::RecurringCharge]');
  has ReservedNodeOfferingId => (is => 'ro', isa => 'Str');
  has UsagePrice => (is => 'ro', isa => 'Num');
}

package Aws::RedShift::RestoreStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has CurrentRestoreRateInMegaBytesPerSecond => (is => 'ro', isa => 'Num');
  has ElapsedTimeInSeconds => (is => 'ro', isa => 'Num');
  has EstimatedTimeToCompletionInSeconds => (is => 'ro', isa => 'Num');
  has ProgressInMegaBytes => (is => 'ro', isa => 'Num');
  has SnapshotSizeInMegaBytes => (is => 'ro', isa => 'Num');
  has Status => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::Snapshot {
  use Moose;
  with ('AWS::API::ResultParser');
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
  has Encrypted => (is => 'ro', isa => 'Bool');
  has EncryptedWithHSM => (is => 'ro', isa => 'Bool');
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

package Aws::RedShift::Subnet {
  use Moose;
  with ('AWS::API::ResultParser');
  has SubnetAvailabilityZone => (is => 'ro', isa => 'Aws::RedShift::AvailabilityZone');
  has SubnetIdentifier => (is => 'ro', isa => 'Str');
  has SubnetStatus => (is => 'ro', isa => 'Str');
}

package Aws::RedShift::VpcSecurityGroupMembership {
  use Moose;
  with ('AWS::API::ResultParser');
  has Status => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupId => (is => 'ro', isa => 'Str');
}



package Aws::RedShift::AuthorizeClusterSecurityGroupIngress {
  use Moose;
  has CIDRIP => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeClusterSecurityGroupIngress');
  has _returns => (isa => 'Aws::RedShift::AuthorizeClusterSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeClusterSecurityGroupIngressResult');  
}
package Aws::RedShift::AuthorizeSnapshotAccess {
  use Moose;
  has AccountWithRestoreAccess => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeSnapshotAccess');
  has _returns => (isa => 'Aws::RedShift::AuthorizeSnapshotAccessResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeSnapshotAccessResult');  
}
package Aws::RedShift::CopyClusterSnapshot {
  use Moose;
  has SourceSnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SourceSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has TargetSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CopyClusterSnapshot');
  has _returns => (isa => 'Aws::RedShift::CopyClusterSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CopyClusterSnapshotResult');  
}
package Aws::RedShift::CreateCluster {
  use Moose;
  has AllowVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ClusterSecurityGroupName' );
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has ClusterType => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has DBName => (is => 'ro', isa => 'Str');
  has ElasticIp => (is => 'ro', isa => 'Str');
  has Encrypted => (is => 'ro', isa => 'Bool');
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str', required => 1);
  has MasterUserPassword => (is => 'ro', isa => 'Str', required => 1);
  has NodeType => (is => 'ro', isa => 'Str', required => 1);
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'VpcSecurityGroupId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCluster');
  has _returns => (isa => 'Aws::RedShift::CreateClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterResult');  
}
package Aws::RedShift::CreateClusterParameterGroup {
  use Moose;
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has ParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterParameterGroup');
  has _returns => (isa => 'Aws::RedShift::CreateClusterParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterParameterGroupResult');  
}
package Aws::RedShift::CreateClusterSecurityGroup {
  use Moose;
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterSecurityGroup');
  has _returns => (isa => 'Aws::RedShift::CreateClusterSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterSecurityGroupResult');  
}
package Aws::RedShift::CreateClusterSnapshot {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterSnapshot');
  has _returns => (isa => 'Aws::RedShift::CreateClusterSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterSnapshotResult');  
}
package Aws::RedShift::CreateClusterSubnetGroup {
  use Moose;
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SubnetIdentifier' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterSubnetGroup');
  has _returns => (isa => 'Aws::RedShift::CreateClusterSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterSubnetGroupResult');  
}
package Aws::RedShift::CreateEventSubscription {
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'EventCategory' );
  has Severity => (is => 'ro', isa => 'Str');
  has SnsTopicArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SourceId' );
  has SourceType => (is => 'ro', isa => 'Str');
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEventSubscription');
  has _returns => (isa => 'Aws::RedShift::CreateEventSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateEventSubscriptionResult');  
}
package Aws::RedShift::CreateHsmClientCertificate {
  use Moose;
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHsmClientCertificate');
  has _returns => (isa => 'Aws::RedShift::CreateHsmClientCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateHsmClientCertificateResult');  
}
package Aws::RedShift::CreateHsmConfiguration {
  use Moose;
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
package Aws::RedShift::DeleteCluster {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has FinalClusterSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SkipFinalClusterSnapshot => (is => 'ro', isa => 'Bool');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCluster');
  has _returns => (isa => 'Aws::RedShift::DeleteClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteClusterResult');  
}
package Aws::RedShift::DeleteClusterParameterGroup {
  use Moose;
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteClusterParameterGroup');
  has _returns => (isa => 'Aws::RedShift::DeleteClusterParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteClusterParameterGroupResult');  
}
package Aws::RedShift::DeleteClusterSecurityGroup {
  use Moose;
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteClusterSecurityGroup');
  has _returns => (isa => 'Aws::RedShift::DeleteClusterSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteClusterSecurityGroupResult');  
}
package Aws::RedShift::DeleteClusterSnapshot {
  use Moose;
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteClusterSnapshot');
  has _returns => (isa => 'Aws::RedShift::DeleteClusterSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteClusterSnapshotResult');  
}
package Aws::RedShift::DeleteClusterSubnetGroup {
  use Moose;
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteClusterSubnetGroup');
  has _returns => (isa => 'Aws::RedShift::DeleteClusterSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteClusterSubnetGroupResult');  
}
package Aws::RedShift::DeleteEventSubscription {
  use Moose;
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEventSubscription');
  has _returns => (isa => 'Aws::RedShift::DeleteEventSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteEventSubscriptionResult');  
}
package Aws::RedShift::DeleteHsmClientCertificate {
  use Moose;
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteHsmClientCertificate');
  has _returns => (isa => 'Aws::RedShift::DeleteHsmClientCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteHsmClientCertificateResult');  
}
package Aws::RedShift::DeleteHsmConfiguration {
  use Moose;
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteHsmConfiguration');
  has _returns => (isa => 'Aws::RedShift::DeleteHsmConfigurationResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteHsmConfigurationResult');  
}
package Aws::RedShift::DescribeClusterParameterGroups {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ParameterGroupName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterParameterGroups');
  has _returns => (isa => 'Aws::RedShift::DescribeClusterParameterGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterParameterGroupsResult');  
}
package Aws::RedShift::DescribeClusterParameters {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Source => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterParameters');
  has _returns => (isa => 'Aws::RedShift::DescribeClusterParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterParametersResult');  
}
package Aws::RedShift::DescribeClusterSecurityGroups {
  use Moose;
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterSecurityGroups');
  has _returns => (isa => 'Aws::RedShift::DescribeClusterSecurityGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterSecurityGroupsResult');  
}
package Aws::RedShift::DescribeClusterSnapshots {
  use Moose;
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
package Aws::RedShift::DescribeClusterSubnetGroups {
  use Moose;
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterSubnetGroups');
  has _returns => (isa => 'Aws::RedShift::DescribeClusterSubnetGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterSubnetGroupsResult');  
}
package Aws::RedShift::DescribeClusterVersions {
  use Moose;
  has ClusterParameterGroupFamily => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterVersions');
  has _returns => (isa => 'Aws::RedShift::DescribeClusterVersionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterVersionsResult');  
}
package Aws::RedShift::DescribeClusters {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusters');
  has _returns => (isa => 'Aws::RedShift::DescribeClustersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClustersResult');  
}
package Aws::RedShift::DescribeDefaultClusterParameters {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDefaultClusterParameters');
  has _returns => (isa => 'Aws::RedShift::DescribeDefaultClusterParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDefaultClusterParametersResult');  
}
package Aws::RedShift::DescribeEventCategories {
  use Moose;
  has SourceType => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventCategories');
  has _returns => (isa => 'Aws::RedShift::DescribeEventCategoriesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventCategoriesResult');  
}
package Aws::RedShift::DescribeEventSubscriptions {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SubscriptionName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventSubscriptions');
  has _returns => (isa => 'Aws::RedShift::DescribeEventSubscriptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventSubscriptionsResult');  
}
package Aws::RedShift::DescribeEvents {
  use Moose;
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
package Aws::RedShift::DescribeHsmClientCertificates {
  use Moose;
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHsmClientCertificates');
  has _returns => (isa => 'Aws::RedShift::DescribeHsmClientCertificatesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeHsmClientCertificatesResult');  
}
package Aws::RedShift::DescribeHsmConfigurations {
  use Moose;
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHsmConfigurations');
  has _returns => (isa => 'Aws::RedShift::DescribeHsmConfigurationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeHsmConfigurationsResult');  
}
package Aws::RedShift::DescribeLoggingStatus {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoggingStatus');
  has _returns => (isa => 'Aws::RedShift::DescribeLoggingStatusResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoggingStatusResult');  
}
package Aws::RedShift::DescribeOrderableClusterOptions {
  use Moose;
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NodeType => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOrderableClusterOptions');
  has _returns => (isa => 'Aws::RedShift::DescribeOrderableClusterOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeOrderableClusterOptionsResult');  
}
package Aws::RedShift::DescribeReservedNodeOfferings {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ReservedNodeOfferingId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedNodeOfferings');
  has _returns => (isa => 'Aws::RedShift::DescribeReservedNodeOfferingsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedNodeOfferingsResult');  
}
package Aws::RedShift::DescribeReservedNodes {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ReservedNodeId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedNodes');
  has _returns => (isa => 'Aws::RedShift::DescribeReservedNodesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedNodesResult');  
}
package Aws::RedShift::DescribeResize {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeResize');
  has _returns => (isa => 'Aws::RedShift::DescribeResizeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeResizeResult');  
}
package Aws::RedShift::DisableLogging {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisableLogging');
  has _returns => (isa => 'Aws::RedShift::DisableLoggingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisableLoggingResult');  
}
package Aws::RedShift::DisableSnapshotCopy {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisableSnapshotCopy');
  has _returns => (isa => 'Aws::RedShift::DisableSnapshotCopyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisableSnapshotCopyResult');  
}
package Aws::RedShift::EnableLogging {
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str', required => 1);
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has S3KeyPrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'EnableLogging');
  has _returns => (isa => 'Aws::RedShift::EnableLoggingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EnableLoggingResult');  
}
package Aws::RedShift::EnableSnapshotCopy {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DestinationRegion => (is => 'ro', isa => 'Str', required => 1);
  has RetentionPeriod => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'EnableSnapshotCopy');
  has _returns => (isa => 'Aws::RedShift::EnableSnapshotCopyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EnableSnapshotCopyResult');  
}
package Aws::RedShift::ModifyCluster {
  use Moose;
  has AllowVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ClusterSecurityGroupName' );
  has ClusterType => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has NewClusterIdentifier => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'VpcSecurityGroupId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCluster');
  has _returns => (isa => 'Aws::RedShift::ModifyClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyClusterResult');  
}
package Aws::RedShift::ModifyClusterParameterGroup {
  use Moose;
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Parameter]', traits => ['NameInRequest'], request_name => 'Parameter' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyClusterParameterGroup');
  has _returns => (isa => 'Aws::RedShift::ModifyClusterParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyClusterParameterGroupResult');  
}
package Aws::RedShift::ModifyClusterSubnetGroup {
  use Moose;
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SubnetIdentifier' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyClusterSubnetGroup');
  has _returns => (isa => 'Aws::RedShift::ModifyClusterSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyClusterSubnetGroupResult');  
}
package Aws::RedShift::ModifyEventSubscription {
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'EventCategory' );
  has Severity => (is => 'ro', isa => 'Str');
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has SourceIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SourceId' );
  has SourceType => (is => 'ro', isa => 'Str');
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyEventSubscription');
  has _returns => (isa => 'Aws::RedShift::ModifyEventSubscriptionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyEventSubscriptionResult');  
}
package Aws::RedShift::ModifySnapshotCopyRetentionPeriod {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has RetentionPeriod => (is => 'ro', isa => 'Int', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifySnapshotCopyRetentionPeriod');
  has _returns => (isa => 'Aws::RedShift::ModifySnapshotCopyRetentionPeriodResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifySnapshotCopyRetentionPeriodResult');  
}
package Aws::RedShift::PurchaseReservedNodeOffering {
  use Moose;
  has NodeCount => (is => 'ro', isa => 'Int');
  has ReservedNodeOfferingId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedNodeOffering');
  has _returns => (isa => 'Aws::RedShift::PurchaseReservedNodeOfferingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PurchaseReservedNodeOfferingResult');  
}
package Aws::RedShift::RebootCluster {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RebootCluster');
  has _returns => (isa => 'Aws::RedShift::RebootClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RebootClusterResult');  
}
package Aws::RedShift::ResetClusterParameterGroup {
  use Moose;
  has ParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Parameter]', traits => ['NameInRequest'], request_name => 'Parameter' );
  has ResetAllParameters => (is => 'ro', isa => 'Bool');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResetClusterParameterGroup');
  has _returns => (isa => 'Aws::RedShift::ResetClusterParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResetClusterParameterGroupResult');  
}
package Aws::RedShift::RestoreFromClusterSnapshot {
  use Moose;
  has AllowVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ClusterSecurityGroupName' );
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has ElasticIp => (is => 'ro', isa => 'Str');
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has OwnerAccount => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'VpcSecurityGroupId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreFromClusterSnapshot');
  has _returns => (isa => 'Aws::RedShift::RestoreFromClusterSnapshotResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreFromClusterSnapshotResult');  
}
package Aws::RedShift::RevokeClusterSecurityGroupIngress {
  use Moose;
  has CIDRIP => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeClusterSecurityGroupIngress');
  has _returns => (isa => 'Aws::RedShift::RevokeClusterSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeClusterSecurityGroupIngressResult');  
}
package Aws::RedShift::RevokeSnapshotAccess {
  use Moose;
  has AccountWithRestoreAccess => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeSnapshotAccess');
  has _returns => (isa => 'Aws::RedShift::RevokeSnapshotAccessResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeSnapshotAccessResult');  
}
package Aws::RedShift::RotateEncryptionKey {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RotateEncryptionKey');
  has _returns => (isa => 'Aws::RedShift::RotateEncryptionKeyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RotateEncryptionKeyResult');  
}

package Aws::RedShift::AuthorizeClusterSecurityGroupIngressResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterSecurityGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterSecurityGroup');

}
package Aws::RedShift::AuthorizeSnapshotAccessResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Aws::RedShift::Snapshot');

}
package Aws::RedShift::CopyClusterSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Aws::RedShift::Snapshot');

}
package Aws::RedShift::CreateClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
package Aws::RedShift::CreateClusterParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterParameterGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterParameterGroup');

}
package Aws::RedShift::CreateClusterSecurityGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterSecurityGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterSecurityGroup');

}
package Aws::RedShift::CreateClusterSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Aws::RedShift::Snapshot');

}
package Aws::RedShift::CreateClusterSubnetGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterSubnetGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterSubnetGroup');

}
package Aws::RedShift::CreateEventSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Aws::RedShift::EventSubscription');

}
package Aws::RedShift::CreateHsmClientCertificateResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HsmClientCertificate => (is => 'ro', isa => 'Aws::RedShift::HsmClientCertificate');

}
package Aws::RedShift::CreateHsmConfigurationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HsmConfiguration => (is => 'ro', isa => 'Aws::RedShift::HsmConfiguration');

}
package Aws::RedShift::DeleteClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
package Aws::RedShift::DeleteClusterSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Aws::RedShift::Snapshot');

}
package Aws::RedShift::DescribeClusterParameterGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ParameterGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterParameterGroup]', traits => ['Unwrapped'], xmlname => 'ClusterParameterGroup');

}
package Aws::RedShift::DescribeClusterParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Parameter]', traits => ['Unwrapped'], xmlname => 'Parameter');

}
package Aws::RedShift::DescribeClusterSecurityGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterSecurityGroup]', traits => ['Unwrapped'], xmlname => 'ClusterSecurityGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DescribeClusterSnapshotsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Snapshot]', traits => ['Unwrapped'], xmlname => 'Snapshot');

}
package Aws::RedShift::DescribeClusterSubnetGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterSubnetGroups => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterSubnetGroup]', traits => ['Unwrapped'], xmlname => 'ClusterSubnetGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DescribeClusterVersionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterVersions => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ClusterVersion]', traits => ['Unwrapped'], xmlname => 'ClusterVersion');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DescribeClustersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Clusters => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Cluster]', traits => ['Unwrapped'], xmlname => 'Cluster');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DescribeDefaultClusterParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DefaultClusterParameters => (is => 'ro', isa => 'Aws::RedShift::DefaultClusterParameters');

}
package Aws::RedShift::DescribeEventCategoriesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventCategoriesMapList => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::EventCategoriesMap]', traits => ['Unwrapped'], xmlname => 'EventCategoriesMap');

}
package Aws::RedShift::DescribeEventSubscriptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscriptionsList => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::EventSubscription]', traits => ['Unwrapped'], xmlname => 'EventSubscription');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DescribeEventsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Event]', traits => ['Unwrapped'], xmlname => 'Event');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DescribeHsmClientCertificatesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HsmClientCertificates => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::HsmClientCertificate]', traits => ['Unwrapped'], xmlname => 'HsmClientCertificate');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DescribeHsmConfigurationsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HsmConfigurations => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::HsmConfiguration]', traits => ['Unwrapped'], xmlname => 'HsmConfiguration');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DescribeLoggingStatusResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has BucketName => (is => 'ro', isa => 'Str');
  has LastFailureMessage => (is => 'ro', isa => 'Str');
  has LastFailureTime => (is => 'ro', isa => 'Str');
  has LastSuccessfulDeliveryTime => (is => 'ro', isa => 'Str');
  has LoggingEnabled => (is => 'ro', isa => 'Bool');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DescribeOrderableClusterOptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has OrderableClusterOptions => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::OrderableClusterOption]', traits => ['Unwrapped'], xmlname => 'OrderableClusterOption');

}
package Aws::RedShift::DescribeReservedNodeOfferingsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedNodeOfferings => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ReservedNodeOffering]', traits => ['Unwrapped'], xmlname => 'ReservedNodeOffering');

}
package Aws::RedShift::DescribeReservedNodesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedNodes => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::ReservedNode]', traits => ['Unwrapped'], xmlname => 'ReservedNode');

}
package Aws::RedShift::DescribeResizeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AvgResizeRateInMegaBytesPerSecond => (is => 'ro', isa => 'Num');
  has ElapsedTimeInSeconds => (is => 'ro', isa => 'Num');
  has EstimatedTimeToCompletionInSeconds => (is => 'ro', isa => 'Num');
  has ImportTablesCompleted => (is => 'ro', isa => 'ArrayRef[Str]');
  has ImportTablesInProgress => (is => 'ro', isa => 'ArrayRef[Str]');
  has ImportTablesNotStarted => (is => 'ro', isa => 'ArrayRef[Str]');
  has ProgressInMegaBytes => (is => 'ro', isa => 'Num');
  has Status => (is => 'ro', isa => 'Str');
  has TargetClusterType => (is => 'ro', isa => 'Str');
  has TargetNodeType => (is => 'ro', isa => 'Str');
  has TargetNumberOfNodes => (is => 'ro', isa => 'Int');
  has TotalResizeDataInMegaBytes => (is => 'ro', isa => 'Num');

}
package Aws::RedShift::DisableLoggingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has BucketName => (is => 'ro', isa => 'Str');
  has LastFailureMessage => (is => 'ro', isa => 'Str');
  has LastFailureTime => (is => 'ro', isa => 'Str');
  has LastSuccessfulDeliveryTime => (is => 'ro', isa => 'Str');
  has LoggingEnabled => (is => 'ro', isa => 'Bool');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::DisableSnapshotCopyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
package Aws::RedShift::EnableLoggingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has BucketName => (is => 'ro', isa => 'Str');
  has LastFailureMessage => (is => 'ro', isa => 'Str');
  has LastFailureTime => (is => 'ro', isa => 'Str');
  has LastSuccessfulDeliveryTime => (is => 'ro', isa => 'Str');
  has LoggingEnabled => (is => 'ro', isa => 'Bool');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::EnableSnapshotCopyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
package Aws::RedShift::ModifyClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
package Aws::RedShift::ModifyClusterParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterGroupStatus => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::ModifyClusterSubnetGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterSubnetGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterSubnetGroup');

}
package Aws::RedShift::ModifyEventSubscriptionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Aws::RedShift::EventSubscription');

}
package Aws::RedShift::ModifySnapshotCopyRetentionPeriodResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
package Aws::RedShift::PurchaseReservedNodeOfferingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ReservedNode => (is => 'ro', isa => 'Aws::RedShift::ReservedNode');

}
package Aws::RedShift::RebootClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
package Aws::RedShift::ResetClusterParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterGroupStatus => (is => 'ro', isa => 'Str');

}
package Aws::RedShift::RestoreFromClusterSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}
package Aws::RedShift::RevokeClusterSecurityGroupIngressResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ClusterSecurityGroup => (is => 'ro', isa => 'Aws::RedShift::ClusterSecurityGroup');

}
package Aws::RedShift::RevokeSnapshotAccessResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Aws::RedShift::Snapshot');

}
package Aws::RedShift::RotateEncryptionKeyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::RedShift::Cluster');

}

package Aws::RedShift {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'redshift');
  has version => (is => 'ro', isa => 'Str', default => '2012-12-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::QueryCaller', 'Net::AWS::XMLResponse');
  
  sub AuthorizeClusterSecurityGroupIngress {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::AuthorizeClusterSecurityGroupIngress', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::AuthorizeClusterSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub AuthorizeSnapshotAccess {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::AuthorizeSnapshotAccess', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::AuthorizeSnapshotAccessResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CopyClusterSnapshot {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::CopyClusterSnapshot', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::CopyClusterSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateCluster {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::CreateCluster', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::CreateClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateClusterParameterGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::CreateClusterParameterGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::CreateClusterParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateClusterSecurityGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::CreateClusterSecurityGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::CreateClusterSecurityGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateClusterSnapshot {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::CreateClusterSnapshot', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::CreateClusterSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateClusterSubnetGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::CreateClusterSubnetGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::CreateClusterSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateEventSubscription {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::CreateEventSubscription', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::CreateEventSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateHsmClientCertificate {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::CreateHsmClientCertificate', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::CreateHsmClientCertificateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateHsmConfiguration {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::CreateHsmConfiguration', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::CreateHsmConfigurationResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteCluster {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DeleteCluster', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DeleteClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteClusterParameterGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DeleteClusterParameterGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteClusterSecurityGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DeleteClusterSecurityGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteClusterSnapshot {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DeleteClusterSnapshot', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DeleteClusterSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteClusterSubnetGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DeleteClusterSubnetGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteEventSubscription {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DeleteEventSubscription', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteHsmClientCertificate {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DeleteHsmClientCertificate', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteHsmConfiguration {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DeleteHsmConfiguration', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DescribeClusterParameterGroups {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DescribeClusterParameterGroups', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeClusterParameterGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeClusterParameters {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DescribeClusterParameters', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeClusterParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeClusters {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DescribeClusters', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeClustersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeClusterSecurityGroups {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DescribeClusterSecurityGroups', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeClusterSecurityGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeClusterSnapshots {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DescribeClusterSnapshots', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeClusterSnapshotsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeClusterSubnetGroups {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DescribeClusterSubnetGroups', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeClusterSubnetGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeClusterVersions {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DescribeClusterVersions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeClusterVersionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeDefaultClusterParameters {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DescribeDefaultClusterParameters', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeDefaultClusterParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeEventCategories {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DescribeEventCategories', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeEventCategoriesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeEvents {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DescribeEvents', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeEventsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeEventSubscriptions {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DescribeEventSubscriptions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeEventSubscriptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeHsmClientCertificates {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DescribeHsmClientCertificates', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeHsmClientCertificatesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeHsmConfigurations {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DescribeHsmConfigurations', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeHsmConfigurationsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeLoggingStatus {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DescribeLoggingStatus', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeLoggingStatusResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeOrderableClusterOptions {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DescribeOrderableClusterOptions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeOrderableClusterOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeReservedNodeOfferings {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DescribeReservedNodeOfferings', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeReservedNodeOfferingsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeReservedNodes {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DescribeReservedNodes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeReservedNodesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeResize {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DescribeResize', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DescribeResizeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DisableLogging {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DisableLogging', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DisableLoggingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DisableSnapshotCopy {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::DisableSnapshotCopy', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::DisableSnapshotCopyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub EnableLogging {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::EnableLogging', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::EnableLoggingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub EnableSnapshotCopy {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::EnableSnapshotCopy', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::EnableSnapshotCopyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ModifyCluster {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::ModifyCluster', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::ModifyClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ModifyClusterParameterGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::ModifyClusterParameterGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::ModifyClusterParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ModifyClusterSubnetGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::ModifyClusterSubnetGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::ModifyClusterSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ModifyEventSubscription {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::ModifyEventSubscription', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::ModifyEventSubscriptionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ModifySnapshotCopyRetentionPeriod {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::ModifySnapshotCopyRetentionPeriod', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::ModifySnapshotCopyRetentionPeriodResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub PurchaseReservedNodeOffering {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::PurchaseReservedNodeOffering', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::PurchaseReservedNodeOfferingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub RebootCluster {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::RebootCluster', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::RebootClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ResetClusterParameterGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::ResetClusterParameterGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::ResetClusterParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub RestoreFromClusterSnapshot {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::RestoreFromClusterSnapshot', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::RestoreFromClusterSnapshotResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub RevokeClusterSecurityGroupIngress {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::RevokeClusterSecurityGroupIngress', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::RevokeClusterSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub RevokeSnapshotAccess {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::RevokeSnapshotAccess', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::RevokeSnapshotAccessResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub RotateEncryptionKey {
    my $self = shift;
    my $call = new_with_coercions('Aws::RedShift::RotateEncryptionKey', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::RedShift::RotateEncryptionKeyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
