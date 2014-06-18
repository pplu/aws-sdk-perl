
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::ElastiCache::SourceType', ['cache-cluster','cache-parameter-group','cache-security-group','cache-subnet-group',];


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
  has SourceType => (is => 'ro', isa => 'Aws::ElastiCache::SourceType');
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeCacheSecurityGroupIngress');
  has _returns => (isa => 'Aws::ElastiCache::AuthorizeCacheSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeCacheSecurityGroupIngressResult');  
}
package Aws::ElastiCache::CreateCacheCluster {
  use Moose;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
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
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has SnapshotArns => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SnapshotArn' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheCluster');
  has _returns => (isa => 'Aws::ElastiCache::CreateCacheClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheClusterResult');  
}
package Aws::ElastiCache::CreateCacheParameterGroup {
  use Moose;
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheParameterGroup');
  has _returns => (isa => 'Aws::ElastiCache::CreateCacheParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheParameterGroupResult');  
}
package Aws::ElastiCache::CreateCacheSecurityGroup {
  use Moose;
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheSecurityGroup');
  has _returns => (isa => 'Aws::ElastiCache::CreateCacheSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheSecurityGroupResult');  
}
package Aws::ElastiCache::CreateCacheSubnetGroup {
  use Moose;
  has CacheSubnetGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SubnetIdentifier' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheSubnetGroup');
  has _returns => (isa => 'Aws::ElastiCache::CreateCacheSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheSubnetGroupResult');  
}
package Aws::ElastiCache::CreateReplicationGroup {
  use Moose;
  has PrimaryClusterId => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReplicationGroup');
  has _returns => (isa => 'Aws::ElastiCache::CreateReplicationGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateReplicationGroupResult');  
}
package Aws::ElastiCache::DeleteCacheCluster {
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheCluster');
  has _returns => (isa => 'Aws::ElastiCache::DeleteCacheClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteCacheClusterResult');  
}
package Aws::ElastiCache::DeleteCacheParameterGroup {
  use Moose;
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheParameterGroup');
  has _returns => (isa => 'Aws::ElastiCache::DeleteCacheParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteCacheParameterGroupResult');  
}
package Aws::ElastiCache::DeleteCacheSecurityGroup {
  use Moose;
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheSecurityGroup');
  has _returns => (isa => 'Aws::ElastiCache::DeleteCacheSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteCacheSecurityGroupResult');  
}
package Aws::ElastiCache::DeleteCacheSubnetGroup {
  use Moose;
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheSubnetGroup');
  has _returns => (isa => 'Aws::ElastiCache::DeleteCacheSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteCacheSubnetGroupResult');  
}
package Aws::ElastiCache::DeleteReplicationGroup {
  use Moose;
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);
  has RetainPrimaryCluster => (is => 'ro', isa => 'Bool');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteReplicationGroup');
  has _returns => (isa => 'Aws::ElastiCache::DeleteReplicationGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteReplicationGroupResult');  
}
package Aws::ElastiCache::DescribeCacheClusters {
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ShowCacheNodeInfo => (is => 'ro', isa => 'Bool');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheClusters');
  has _returns => (isa => 'Aws::ElastiCache::DescribeCacheClustersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheClustersResult');  
}
package Aws::ElastiCache::DescribeCacheEngineVersions {
  use Moose;
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DefaultOnly => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheEngineVersions');
  has _returns => (isa => 'Aws::ElastiCache::DescribeCacheEngineVersionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheEngineVersionsResult');  
}
package Aws::ElastiCache::DescribeCacheParameterGroups {
  use Moose;
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheParameterGroups');
  has _returns => (isa => 'Aws::ElastiCache::DescribeCacheParameterGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheParameterGroupsResult');  
}
package Aws::ElastiCache::DescribeCacheParameters {
  use Moose;
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has Source => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheParameters');
  has _returns => (isa => 'Aws::ElastiCache::DescribeCacheParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheParametersResult');  
}
package Aws::ElastiCache::DescribeCacheSecurityGroups {
  use Moose;
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheSecurityGroups');
  has _returns => (isa => 'Aws::ElastiCache::DescribeCacheSecurityGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheSecurityGroupsResult');  
}
package Aws::ElastiCache::DescribeCacheSubnetGroups {
  use Moose;
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheSubnetGroups');
  has _returns => (isa => 'Aws::ElastiCache::DescribeCacheSubnetGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheSubnetGroupsResult');  
}
package Aws::ElastiCache::DescribeEngineDefaultParameters {
  use Moose;
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParameters');
  has _returns => (isa => 'Aws::ElastiCache::DescribeEngineDefaultParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParametersResult');  
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEvents');
  has _returns => (isa => 'Aws::ElastiCache::DescribeEventsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventsResult');  
}
package Aws::ElastiCache::DescribeReplicationGroups {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReplicationGroups');
  has _returns => (isa => 'Aws::ElastiCache::DescribeReplicationGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReplicationGroupsResult');  
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedCacheNodes');
  has _returns => (isa => 'Aws::ElastiCache::DescribeReservedCacheNodesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedCacheNodesResult');  
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedCacheNodesOfferings');
  has _returns => (isa => 'Aws::ElastiCache::DescribeReservedCacheNodesOfferingsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedCacheNodesOfferingsResult');  
}
package Aws::ElastiCache::ModifyCacheCluster {
  use Moose;
  has ApplyImmediately => (is => 'ro', isa => 'Bool');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);
  has CacheNodeIdsToRemove => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'CacheNodeId' );
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has CacheSecurityGroupNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'CacheSecurityGroupName' );
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NotificationTopicArn => (is => 'ro', isa => 'Str');
  has NotificationTopicStatus => (is => 'ro', isa => 'Str');
  has NumCacheNodes => (is => 'ro', isa => 'Int');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCacheCluster');
  has _returns => (isa => 'Aws::ElastiCache::ModifyCacheClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCacheClusterResult');  
}
package Aws::ElastiCache::ModifyCacheParameterGroup {
  use Moose;
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ParameterNameValues => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ParameterNameValue]', traits => ['NameInRequest'], request_name => 'ParameterNameValue' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCacheParameterGroup');
  has _returns => (isa => 'Aws::ElastiCache::ModifyCacheParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCacheParameterGroupResult');  
}
package Aws::ElastiCache::ModifyCacheSubnetGroup {
  use Moose;
  has CacheSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SubnetIdentifier' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCacheSubnetGroup');
  has _returns => (isa => 'Aws::ElastiCache::ModifyCacheSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCacheSubnetGroupResult');  
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyReplicationGroup');
  has _returns => (isa => 'Aws::ElastiCache::ModifyReplicationGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyReplicationGroupResult');  
}
package Aws::ElastiCache::PurchaseReservedCacheNodesOffering {
  use Moose;
  has CacheNodeCount => (is => 'ro', isa => 'Int');
  has ReservedCacheNodeId => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferingId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedCacheNodesOffering');
  has _returns => (isa => 'Aws::ElastiCache::PurchaseReservedCacheNodesOfferingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PurchaseReservedCacheNodesOfferingResult');  
}
package Aws::ElastiCache::RebootCacheCluster {
  use Moose;
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);
  has CacheNodeIdsToReboot => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'CacheNodeId' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RebootCacheCluster');
  has _returns => (isa => 'Aws::ElastiCache::RebootCacheClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RebootCacheClusterResult');  
}
package Aws::ElastiCache::ResetCacheParameterGroup {
  use Moose;
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ParameterNameValues => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ParameterNameValue]', traits => ['NameInRequest'], request_name => 'ParameterNameValue' , required => 1);
  has ResetAllParameters => (is => 'ro', isa => 'Bool');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResetCacheParameterGroup');
  has _returns => (isa => 'Aws::ElastiCache::ResetCacheParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResetCacheParameterGroupResult');  
}
package Aws::ElastiCache::RevokeCacheSecurityGroupIngress {
  use Moose;
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeCacheSecurityGroupIngress');
  has _returns => (isa => 'Aws::ElastiCache::RevokeCacheSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeCacheSecurityGroupIngressResult');  
}

package Aws::ElastiCache::AuthorizeCacheSecurityGroupIngressResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CacheSecurityGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheSecurityGroup');

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
  has version => (is => 'ro', isa => 'Str', default => '2013-06-15');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::QueryCaller', 'Net::AWS::XMLResponse');
  
  sub AuthorizeCacheSecurityGroupIngress {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::AuthorizeCacheSecurityGroupIngress', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::AuthorizeCacheSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateCacheCluster {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::CreateCacheCluster', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::CreateCacheClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateCacheParameterGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::CreateCacheParameterGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::CreateCacheParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateCacheSecurityGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::CreateCacheSecurityGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::CreateCacheSecurityGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateCacheSubnetGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::CreateCacheSubnetGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::CreateCacheSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateReplicationGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::CreateReplicationGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::CreateReplicationGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteCacheCluster {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::DeleteCacheCluster', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DeleteCacheClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteCacheParameterGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::DeleteCacheParameterGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteCacheSecurityGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::DeleteCacheSecurityGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteCacheSubnetGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::DeleteCacheSubnetGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteReplicationGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::DeleteReplicationGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DeleteReplicationGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeCacheClusters {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::DescribeCacheClusters', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeCacheClustersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeCacheEngineVersions {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::DescribeCacheEngineVersions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeCacheEngineVersionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeCacheParameterGroups {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::DescribeCacheParameterGroups', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeCacheParameterGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeCacheParameters {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::DescribeCacheParameters', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeCacheParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeCacheSecurityGroups {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::DescribeCacheSecurityGroups', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeCacheSecurityGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeCacheSubnetGroups {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::DescribeCacheSubnetGroups', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeCacheSubnetGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeEngineDefaultParameters {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::DescribeEngineDefaultParameters', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeEngineDefaultParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeEvents {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::DescribeEvents', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeEventsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeReplicationGroups {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::DescribeReplicationGroups', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeReplicationGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeReservedCacheNodes {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::DescribeReservedCacheNodes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeReservedCacheNodesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeReservedCacheNodesOfferings {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::DescribeReservedCacheNodesOfferings', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeReservedCacheNodesOfferingsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ModifyCacheCluster {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::ModifyCacheCluster', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::ModifyCacheClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ModifyCacheParameterGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::ModifyCacheParameterGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::ModifyCacheParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ModifyCacheSubnetGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::ModifyCacheSubnetGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::ModifyCacheSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ModifyReplicationGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::ModifyReplicationGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::ModifyReplicationGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub PurchaseReservedCacheNodesOffering {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::PurchaseReservedCacheNodesOffering', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::PurchaseReservedCacheNodesOfferingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub RebootCacheCluster {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::RebootCacheCluster', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::RebootCacheClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ResetCacheParameterGroup {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::ResetCacheParameterGroup', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::ResetCacheParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub RevokeCacheSecurityGroupIngress {
    my $self = shift;
    my $call = new_with_coercions('Aws::ElastiCache::RevokeCacheSecurityGroupIngress', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::RevokeCacheSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
