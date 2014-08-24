
use AWS::API;


package Aws::ElastiCache::AvailabilityZone {
  use Moose;
  with ('AWS::API::ResultParser');
  has Name => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::CacheCluster {
  use Moose;
  with ('AWS::API::ResultParser');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has CacheClusterCreateTime => (is => 'ro', isa => 'Str');
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has CacheClusterStatus => (is => 'ro', isa => 'Str');
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has CacheNodes => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheNode]');
  has CacheParameterGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheParameterGroupStatus');
  has CacheSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheSecurityGroupMembership]');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has ClientDownloadLandingPage => (is => 'ro', isa => 'Str');
  has ConfigurationEndpoint => (is => 'ro', isa => 'Aws::ElastiCache::Endpoint');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NotificationConfiguration => (is => 'ro', isa => 'Aws::ElastiCache::NotificationConfiguration');
  has NumCacheNodes => (is => 'ro', isa => 'Int');
  has PendingModifiedValues => (is => 'ro', isa => 'Aws::ElastiCache::PendingModifiedValues');
  has PreferredAvailabilityZone => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::SecurityGroupMembership]');
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshotWindow => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::CacheEngineVersion {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheEngineDescription => (is => 'ro', isa => 'Str');
  has CacheEngineVersionDescription => (is => 'ro', isa => 'Str');
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::CacheNode {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheNodeCreateTime => (is => 'ro', isa => 'Str');
  has CacheNodeId => (is => 'ro', isa => 'Str');
  has CacheNodeStatus => (is => 'ro', isa => 'Str');
  has CustomerAvailabilityZone => (is => 'ro', isa => 'Str');
  has Endpoint => (is => 'ro', isa => 'Aws::ElastiCache::Endpoint');
  has ParameterGroupStatus => (is => 'ro', isa => 'Str');
  has SourceCacheNodeId => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::CacheNodeTypeSpecificParameter {
  use Moose;
  with ('AWS::API::ResultParser');
  has AllowedValues => (is => 'ro', isa => 'Str');
  has CacheNodeTypeSpecificValues => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheNodeTypeSpecificValue]');
  has DataType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Bool');
  has MinimumEngineVersion => (is => 'ro', isa => 'Str');
  has ParameterName => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::CacheNodeTypeSpecificValue {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::CacheParameterGroup {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::CacheParameterGroupStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheNodeIdsToReboot => (is => 'ro', isa => 'ArrayRef[Str]');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterApplyStatus => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::CacheSecurityGroup {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EC2SecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::EC2SecurityGroup]');
  has OwnerId => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::CacheSecurityGroupMembership {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::CacheSubnetGroup {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::Subnet]');
  has VpcId => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::EC2SecurityGroup {
  use Moose;
  with ('AWS::API::ResultParser');
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::Endpoint {
  use Moose;
  with ('AWS::API::ResultParser');
  has Address => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
}

package Aws::ElastiCache::EngineDefaults {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheNodeTypeSpecificParameters => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheNodeTypeSpecificParameter]');
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::Parameter]');
}

package Aws::ElastiCache::Event {
  use Moose;
  with ('AWS::API::ResultParser');
  has Date => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::NodeGroup {
  use Moose;
  with ('AWS::API::ResultParser');
  has NodeGroupId => (is => 'ro', isa => 'Str');
  has NodeGroupMembers => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::NodeGroupMember]');
  has PrimaryEndpoint => (is => 'ro', isa => 'Aws::ElastiCache::Endpoint');
  has Status => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::NodeGroupMember {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has CacheNodeId => (is => 'ro', isa => 'Str');
  has CurrentRole => (is => 'ro', isa => 'Str');
  has PreferredAvailabilityZone => (is => 'ro', isa => 'Str');
  has ReadEndpoint => (is => 'ro', isa => 'Aws::ElastiCache::Endpoint');
}

package Aws::ElastiCache::NodeSnapshot {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheNodeCreateTime => (is => 'ro', isa => 'Str');
  has CacheNodeId => (is => 'ro', isa => 'Str');
  has CacheSize => (is => 'ro', isa => 'Str');
  has SnapshotCreateTime => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::NotificationConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has TopicArn => (is => 'ro', isa => 'Str');
  has TopicStatus => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::Parameter {
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

package Aws::ElastiCache::ParameterNameValue {
  use Moose;
  with ('AWS::API::ResultParser');
  has ParameterName => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::PendingModifiedValues {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheNodeIdsToRemove => (is => 'ro', isa => 'ArrayRef[Str]');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NumCacheNodes => (is => 'ro', isa => 'Int');
}

package Aws::ElastiCache::RecurringCharge {
  use Moose;
  with ('AWS::API::ResultParser');
  has RecurringChargeAmount => (is => 'ro', isa => 'Num');
  has RecurringChargeFrequency => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::ReplicationGroup {
  use Moose;
  with ('AWS::API::ResultParser');
  has Description => (is => 'ro', isa => 'Str');
  has MemberClusters => (is => 'ro', isa => 'ArrayRef[Str]');
  has NodeGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::NodeGroup]');
  has PendingModifiedValues => (is => 'ro', isa => 'Aws::ElastiCache::ReplicationGroupPendingModifiedValues');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');
  has SnapshottingClusterId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::ReplicationGroupPendingModifiedValues {
  use Moose;
  with ('AWS::API::ResultParser');
  has PrimaryClusterId => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::ReservedCacheNode {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheNodeCount => (is => 'ro', isa => 'Int');
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has FixedPrice => (is => 'ro', isa => 'Num');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::RecurringCharge]');
  has ReservedCacheNodeId => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferingId => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has UsagePrice => (is => 'ro', isa => 'Num');
}

package Aws::ElastiCache::ReservedCacheNodesOffering {
  use Moose;
  with ('AWS::API::ResultParser');
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has FixedPrice => (is => 'ro', isa => 'Num');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::RecurringCharge]');
  has ReservedCacheNodesOfferingId => (is => 'ro', isa => 'Str');
  has UsagePrice => (is => 'ro', isa => 'Num');
}

package Aws::ElastiCache::SecurityGroupMembership {
  use Moose;
  with ('AWS::API::ResultParser');
  has SecurityGroupId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::Snapshot {
  use Moose;
  with ('AWS::API::ResultParser');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has CacheClusterCreateTime => (is => 'ro', isa => 'Str');
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NodeSnapshots => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::NodeSnapshot]');
  has NumCacheNodes => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredAvailabilityZone => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has SnapshotName => (is => 'ro', isa => 'Str');
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshotSource => (is => 'ro', isa => 'Str');
  has SnapshotStatus => (is => 'ro', isa => 'Str');
  has SnapshotWindow => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
}

package Aws::ElastiCache::Subnet {
  use Moose;
  with ('AWS::API::ResultParser');
  has SubnetAvailabilityZone => (is => 'ro', isa => 'Aws::ElastiCache::AvailabilityZone');
  has SubnetIdentifier => (is => 'ro', isa => 'Str');
}



package Aws::ElastiCache::AuthorizeCacheSecurityGroupIngress {
  use Moose;
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeCacheSecurityGroupIngress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::AuthorizeCacheSecurityGroupIngressResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeCacheSecurityGroupIngressResult');
}
package Aws::ElastiCache::CopySnapshot {
  use Moose;
  has SourceSnapshotName => (is => 'ro', isa => 'Str', required => 1);
  has TargetSnapshotName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopySnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::CopySnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopySnapshotResult');
}
package Aws::ElastiCache::CreateCacheCluster {
  use Moose;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AZMode => (is => 'ro', isa => 'Str');
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has CacheSecurityGroupNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'CacheSecurityGroupName' );
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NotificationTopicArn => (is => 'ro', isa => 'Str');
  has NumCacheNodes => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredAvailabilityZone => (is => 'ro', isa => 'Str');
  has PreferredAvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'PreferredAvailabilityZone' );
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has SnapshotArns => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SnapshotArn' );
  has SnapshotName => (is => 'ro', isa => 'Str');
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshotWindow => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::CreateCacheClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheClusterResult');
}
package Aws::ElastiCache::CreateCacheParameterGroup {
  use Moose;
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::CreateCacheParameterGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheParameterGroupResult');
}
package Aws::ElastiCache::CreateCacheSecurityGroup {
  use Moose;
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheSecurityGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::CreateCacheSecurityGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheSecurityGroupResult');
}
package Aws::ElastiCache::CreateCacheSubnetGroup {
  use Moose;
  has CacheSubnetGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SubnetIdentifier' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheSubnetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::CreateCacheSubnetGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheSubnetGroupResult');
}
package Aws::ElastiCache::CreateReplicationGroup {
  use Moose;
  has PrimaryClusterId => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReplicationGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::CreateReplicationGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateReplicationGroupResult');
}
package Aws::ElastiCache::CreateSnapshot {
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::CreateSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSnapshotResult');
}
package Aws::ElastiCache::DeleteCacheCluster {
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);
  has FinalSnapshotIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DeleteCacheClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteCacheClusterResult');
}
package Aws::ElastiCache::DeleteCacheParameterGroup {
  use Moose;
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::ElastiCache::DeleteCacheSecurityGroup {
  use Moose;
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheSecurityGroup');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::ElastiCache::DeleteCacheSubnetGroup {
  use Moose;
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheSubnetGroup');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::ElastiCache::DeleteReplicationGroup {
  use Moose;
  has FinalSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);
  has RetainPrimaryCluster => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteReplicationGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DeleteReplicationGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteReplicationGroupResult');
}
package Aws::ElastiCache::DeleteSnapshot {
  use Moose;
  has SnapshotName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DeleteSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSnapshotResult');
}
package Aws::ElastiCache::DescribeCacheClusters {
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ShowCacheNodeInfo => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheClusters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DescribeCacheClustersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheClustersResult');
}
package Aws::ElastiCache::DescribeCacheEngineVersions {
  use Moose;
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DefaultOnly => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheEngineVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DescribeCacheEngineVersionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheEngineVersionsResult');
}
package Aws::ElastiCache::DescribeCacheParameterGroups {
  use Moose;
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheParameterGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DescribeCacheParameterGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheParameterGroupsResult');
}
package Aws::ElastiCache::DescribeCacheParameters {
  use Moose;
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has Source => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DescribeCacheParametersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheParametersResult');
}
package Aws::ElastiCache::DescribeCacheSecurityGroups {
  use Moose;
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheSecurityGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DescribeCacheSecurityGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheSecurityGroupsResult');
}
package Aws::ElastiCache::DescribeCacheSubnetGroups {
  use Moose;
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheSubnetGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DescribeCacheSubnetGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheSubnetGroupsResult');
}
package Aws::ElastiCache::DescribeEngineDefaultParameters {
  use Moose;
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DescribeEngineDefaultParametersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParametersResult');
}
package Aws::ElastiCache::DescribeEvents {
  use Moose;
  has Duration => (is => 'ro', isa => 'Int');
  has EndTime => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DescribeEventsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventsResult');
}
package Aws::ElastiCache::DescribeReplicationGroups {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReplicationGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DescribeReplicationGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReplicationGroupsResult');
}
package Aws::ElastiCache::DescribeReservedCacheNodes {
  use Moose;
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has ReservedCacheNodeId => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferingId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedCacheNodes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DescribeReservedCacheNodesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedCacheNodesResult');
}
package Aws::ElastiCache::DescribeReservedCacheNodesOfferings {
  use Moose;
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferingId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedCacheNodesOfferings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DescribeReservedCacheNodesOfferingsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedCacheNodesOfferingsResult');
}
package Aws::ElastiCache::DescribeSnapshots {
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SnapshotName => (is => 'ro', isa => 'Str');
  has SnapshotSource => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::DescribeSnapshotsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotsResult');
}
package Aws::ElastiCache::ModifyCacheCluster {
  use Moose;
  has ApplyImmediately => (is => 'ro', isa => 'Bool');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AZMode => (is => 'ro', isa => 'Str');
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);
  has CacheNodeIdsToRemove => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'CacheNodeId' );
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has CacheSecurityGroupNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'CacheSecurityGroupName' );
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NewAvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'PreferredAvailabilityZone' );
  has NotificationTopicArn => (is => 'ro', isa => 'Str');
  has NotificationTopicStatus => (is => 'ro', isa => 'Str');
  has NumCacheNodes => (is => 'ro', isa => 'Int');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshotWindow => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCacheCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::ModifyCacheClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCacheClusterResult');
}
package Aws::ElastiCache::ModifyCacheParameterGroup {
  use Moose;
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ParameterNameValues => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ParameterNameValue]', traits => ['NameInRequest'], request_name => 'ParameterNameValue' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCacheParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::ModifyCacheParameterGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCacheParameterGroupResult');
}
package Aws::ElastiCache::ModifyCacheSubnetGroup {
  use Moose;
  has CacheSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SubnetIdentifier' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCacheSubnetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::ModifyCacheSubnetGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCacheSubnetGroupResult');
}
package Aws::ElastiCache::ModifyReplicationGroup {
  use Moose;
  has ApplyImmediately => (is => 'ro', isa => 'Bool');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has CacheSecurityGroupNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'CacheSecurityGroupName' );
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NotificationTopicArn => (is => 'ro', isa => 'Str');
  has NotificationTopicStatus => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PrimaryClusterId => (is => 'ro', isa => 'Str');
  has ReplicationGroupDescription => (is => 'ro', isa => 'Str');
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshottingClusterId => (is => 'ro', isa => 'Str');
  has SnapshotWindow => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyReplicationGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::ModifyReplicationGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyReplicationGroupResult');
}
package Aws::ElastiCache::PurchaseReservedCacheNodesOffering {
  use Moose;
  has CacheNodeCount => (is => 'ro', isa => 'Int');
  has ReservedCacheNodeId => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferingId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedCacheNodesOffering');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::PurchaseReservedCacheNodesOfferingResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PurchaseReservedCacheNodesOfferingResult');
}
package Aws::ElastiCache::RebootCacheCluster {
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);
  has CacheNodeIdsToReboot => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'CacheNodeId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RebootCacheCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::RebootCacheClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RebootCacheClusterResult');
}
package Aws::ElastiCache::ResetCacheParameterGroup {
  use Moose;
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ParameterNameValues => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ParameterNameValue]', traits => ['NameInRequest'], request_name => 'ParameterNameValue' , required => 1);
  has ResetAllParameters => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetCacheParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::ResetCacheParameterGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ResetCacheParameterGroupResult');
}
package Aws::ElastiCache::RevokeCacheSecurityGroupIngress {
  use Moose;
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeCacheSecurityGroupIngress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ElastiCache::RevokeCacheSecurityGroupIngressResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeCacheSecurityGroupIngressResult');
}

package Aws::ElastiCache::AuthorizeCacheSecurityGroupIngressResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSecurityGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheSecurityGroup');

}
package Aws::ElastiCache::CopySnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Aws::ElastiCache::Snapshot');

}
package Aws::ElastiCache::CreateCacheClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheCluster => (is => 'ro', isa => 'Aws::ElastiCache::CacheCluster');

}
package Aws::ElastiCache::CreateCacheParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheParameterGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheParameterGroup');

}
package Aws::ElastiCache::CreateCacheSecurityGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSecurityGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheSecurityGroup');

}
package Aws::ElastiCache::CreateCacheSubnetGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSubnetGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheSubnetGroup');

}
package Aws::ElastiCache::CreateReplicationGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ReplicationGroup => (is => 'ro', isa => 'Aws::ElastiCache::ReplicationGroup');

}
package Aws::ElastiCache::CreateSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Aws::ElastiCache::Snapshot');

}
package Aws::ElastiCache::DeleteCacheClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheCluster => (is => 'ro', isa => 'Aws::ElastiCache::CacheCluster');

}
package Aws::ElastiCache::DeleteReplicationGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ReplicationGroup => (is => 'ro', isa => 'Aws::ElastiCache::ReplicationGroup');

}
package Aws::ElastiCache::DeleteSnapshotResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Snapshot => (is => 'ro', isa => 'Aws::ElastiCache::Snapshot');

}
package Aws::ElastiCache::DescribeCacheClustersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheClusters => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheCluster]', traits => ['Unwrapped'], xmlname => 'CacheCluster');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::ElastiCache::DescribeCacheEngineVersionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheEngineVersions => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheEngineVersion]', traits => ['Unwrapped'], xmlname => 'CacheEngineVersion');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::ElastiCache::DescribeCacheParameterGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheParameterGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheParameterGroup]', traits => ['Unwrapped'], xmlname => 'CacheParameterGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::ElastiCache::DescribeCacheParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheNodeTypeSpecificParameters => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheNodeTypeSpecificParameter]', traits => ['Unwrapped'], xmlname => 'CacheNodeTypeSpecificParameter');
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::Parameter]', traits => ['Unwrapped'], xmlname => 'Parameter');

}
package Aws::ElastiCache::DescribeCacheSecurityGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheSecurityGroup]', traits => ['Unwrapped'], xmlname => 'CacheSecurityGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::ElastiCache::DescribeCacheSubnetGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSubnetGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheSubnetGroup]', traits => ['Unwrapped'], xmlname => 'CacheSubnetGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::ElastiCache::DescribeEngineDefaultParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has EngineDefaults => (is => 'ro', isa => 'Aws::ElastiCache::EngineDefaults');

}
package Aws::ElastiCache::DescribeEventsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::Event]', traits => ['Unwrapped'], xmlname => 'Event');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::ElastiCache::DescribeReplicationGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReplicationGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ReplicationGroup]', traits => ['Unwrapped'], xmlname => 'ReplicationGroup');

}
package Aws::ElastiCache::DescribeReservedCacheNodesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedCacheNodes => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ReservedCacheNode]', traits => ['Unwrapped'], xmlname => 'ReservedCacheNode');

}
package Aws::ElastiCache::DescribeReservedCacheNodesOfferingsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferings => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ReservedCacheNodesOffering]', traits => ['Unwrapped'], xmlname => 'ReservedCacheNodesOffering');

}
package Aws::ElastiCache::DescribeSnapshotsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::Snapshot]', traits => ['Unwrapped'], xmlname => 'Snapshot');

}
package Aws::ElastiCache::ModifyCacheClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheCluster => (is => 'ro', isa => 'Aws::ElastiCache::CacheCluster');

}
package Aws::ElastiCache::ModifyCacheParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');

}
package Aws::ElastiCache::ModifyCacheSubnetGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSubnetGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheSubnetGroup');

}
package Aws::ElastiCache::ModifyReplicationGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ReplicationGroup => (is => 'ro', isa => 'Aws::ElastiCache::ReplicationGroup');

}
package Aws::ElastiCache::PurchaseReservedCacheNodesOfferingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ReservedCacheNode => (is => 'ro', isa => 'Aws::ElastiCache::ReservedCacheNode');

}
package Aws::ElastiCache::RebootCacheClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheCluster => (is => 'ro', isa => 'Aws::ElastiCache::CacheCluster');

}
package Aws::ElastiCache::ResetCacheParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');

}
package Aws::ElastiCache::RevokeCacheSecurityGroupIngressResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSecurityGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheSecurityGroup');

}

package Aws::ElastiCache {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'elasticache');
  has version => (is => 'ro', isa => 'Str', default => '2014-07-15');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub AuthorizeCacheSecurityGroupIngress {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::AuthorizeCacheSecurityGroupIngress', @_);
  }
  sub CopySnapshot {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::CopySnapshot', @_);
  }
  sub CreateCacheCluster {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::CreateCacheCluster', @_);
  }
  sub CreateCacheParameterGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::CreateCacheParameterGroup', @_);
  }
  sub CreateCacheSecurityGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::CreateCacheSecurityGroup', @_);
  }
  sub CreateCacheSubnetGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::CreateCacheSubnetGroup', @_);
  }
  sub CreateReplicationGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::CreateReplicationGroup', @_);
  }
  sub CreateSnapshot {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::CreateSnapshot', @_);
  }
  sub DeleteCacheCluster {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DeleteCacheCluster', @_);
  }
  sub DeleteCacheParameterGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DeleteCacheParameterGroup', @_);
  }
  sub DeleteCacheSecurityGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DeleteCacheSecurityGroup', @_);
  }
  sub DeleteCacheSubnetGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DeleteCacheSubnetGroup', @_);
  }
  sub DeleteReplicationGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DeleteReplicationGroup', @_);
  }
  sub DeleteSnapshot {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DeleteSnapshot', @_);
  }
  sub DescribeCacheClusters {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeCacheClusters', @_);
  }
  sub DescribeCacheEngineVersions {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeCacheEngineVersions', @_);
  }
  sub DescribeCacheParameterGroups {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeCacheParameterGroups', @_);
  }
  sub DescribeCacheParameters {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeCacheParameters', @_);
  }
  sub DescribeCacheSecurityGroups {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeCacheSecurityGroups', @_);
  }
  sub DescribeCacheSubnetGroups {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeCacheSubnetGroups', @_);
  }
  sub DescribeEngineDefaultParameters {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeEngineDefaultParameters', @_);
  }
  sub DescribeEvents {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeEvents', @_);
  }
  sub DescribeReplicationGroups {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeReplicationGroups', @_);
  }
  sub DescribeReservedCacheNodes {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeReservedCacheNodes', @_);
  }
  sub DescribeReservedCacheNodesOfferings {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeReservedCacheNodesOfferings', @_);
  }
  sub DescribeSnapshots {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::DescribeSnapshots', @_);
  }
  sub ModifyCacheCluster {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::ModifyCacheCluster', @_);
  }
  sub ModifyCacheParameterGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::ModifyCacheParameterGroup', @_);
  }
  sub ModifyCacheSubnetGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::ModifyCacheSubnetGroup', @_);
  }
  sub ModifyReplicationGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::ModifyReplicationGroup', @_);
  }
  sub PurchaseReservedCacheNodesOffering {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::PurchaseReservedCacheNodesOffering', @_);
  }
  sub RebootCacheCluster {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::RebootCacheCluster', @_);
  }
  sub ResetCacheParameterGroup {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::ResetCacheParameterGroup', @_);
  }
  sub RevokeCacheSecurityGroupIngress {
    my $self = shift;
    return $self->do_call('Aws::ElastiCache::RevokeCacheSecurityGroupIngress', @_);
  }
}
1;
