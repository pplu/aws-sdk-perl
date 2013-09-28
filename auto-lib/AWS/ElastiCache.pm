use MooseX::Declare;
use AWS::API;
class AWS::ElastiCache::CacheCluster with AWS::API::ResultParser {
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Str');
  has CacheClusterCreateTime => (is => 'ro', isa => 'Str');
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has CacheClusterStatus => (is => 'ro', isa => 'Str');
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has CacheNodes => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::CacheNode]');
  has CacheParameterGroup => (is => 'ro', isa => 'AWS::ElastiCache::CacheParameterGroupStatus');
  has CacheSecurityGroups => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::CacheSecurityGroupMembership]');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has ClientDownloadLandingPage => (is => 'ro', isa => 'Str');
  has ConfigurationEndpoint => (is => 'ro', isa => 'AWS::ElastiCache::Endpoint');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NotificationConfiguration => (is => 'ro', isa => 'AWS::ElastiCache::NotificationConfiguration');
  has NumCacheNodes => (is => 'ro', isa => 'Int');
  has PendingModifiedValues => (is => 'ro', isa => 'AWS::ElastiCache::PendingModifiedValues');
  has PreferredAvailabilityZone => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::SecurityGroupMembership]');
}

class AWS::ElastiCache::CacheEngineVersion with AWS::API::ResultParser {
  has CacheEngineDescription => (is => 'ro', isa => 'Str');
  has CacheEngineVersionDescription => (is => 'ro', isa => 'Str');
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::CacheNode with AWS::API::ResultParser {
  has CacheNodeCreateTime => (is => 'ro', isa => 'Str');
  has CacheNodeId => (is => 'ro', isa => 'Str');
  has CacheNodeStatus => (is => 'ro', isa => 'Str');
  has Endpoint => (is => 'ro', isa => 'AWS::ElastiCache::Endpoint');
  has ParameterGroupStatus => (is => 'ro', isa => 'Str');
  has SourceCacheNodeId => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::CacheNodeTypeSpecificParameter with AWS::API::ResultParser {
  has AllowedValues => (is => 'ro', isa => 'Str');
  has CacheNodeTypeSpecificValues => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::CacheNodeTypeSpecificValue]');
  has DataType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Str');
  has MinimumEngineVersion => (is => 'ro', isa => 'Str');
  has ParameterName => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::CacheNodeTypeSpecificValue with AWS::API::ResultParser {
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::CacheParameterGroup with AWS::API::ResultParser {
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::CacheParameterGroupStatus with AWS::API::ResultParser {
  has CacheNodeIdsToReboot => (is => 'ro', isa => 'ArrayRef[Str]');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterApplyStatus => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::CacheSecurityGroup with AWS::API::ResultParser {
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EC2SecurityGroups => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::EC2SecurityGroup]');
  has OwnerId => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::CacheSecurityGroupMembership with AWS::API::ResultParser {
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::CacheSubnetGroup with AWS::API::ResultParser {
  has CacheSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has Subnets => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::Subnet]');
  has VpcId => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::EC2SecurityGroup with AWS::API::ResultParser {
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::Endpoint with AWS::API::ResultParser {
  has Address => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
}

class AWS::ElastiCache::EngineDefaults with AWS::API::ResultParser {
  has CacheNodeTypeSpecificParameters => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::CacheNodeTypeSpecificParameter]');
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::Parameter]');
}

class AWS::ElastiCache::Event with AWS::API::ResultParser {
  has Date => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::NodeGroup with AWS::API::ResultParser {
  has NodeGroupId => (is => 'ro', isa => 'Str');
  has NodeGroupMembers => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::NodeGroupMember]');
  has PrimaryEndpoint => (is => 'ro', isa => 'AWS::ElastiCache::Endpoint');
  has Status => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::NotificationConfiguration with AWS::API::ResultParser {
  has TopicArn => (is => 'ro', isa => 'Str');
  has TopicStatus => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::Parameter with AWS::API::ResultParser {
  has AllowedValues => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Str');
  has MinimumEngineVersion => (is => 'ro', isa => 'Str');
  has ParameterName => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::ParameterNameValue with AWS::API::ResultParser {
  has ParameterName => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::PendingModifiedValues with AWS::API::ResultParser {
  has CacheNodeIdsToRemove => (is => 'ro', isa => 'ArrayRef[Str]');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NumCacheNodes => (is => 'ro', isa => 'Int');
}

class AWS::ElastiCache::RecurringCharge with AWS::API::ResultParser {
  has RecurringChargeAmount => (is => 'ro', isa => 'Int');
  has RecurringChargeFrequency => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::ReplicationGroup with AWS::API::ResultParser {
  has Description => (is => 'ro', isa => 'Str');
  has MemberClusters => (is => 'ro', isa => 'ArrayRef[Str]');
  has NodeGroups => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::NodeGroup]');
  has PendingModifiedValues => (is => 'ro', isa => 'AWS::ElastiCache::ReplicationGroupPendingModifiedValues');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::ReplicationGroupPendingModifiedValues with AWS::API::ResultParser {
  has PrimaryClusterId => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::ReservedCacheNode with AWS::API::ResultParser {
  has CacheNodeCount => (is => 'ro', isa => 'Int');
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has FixedPrice => (is => 'ro', isa => 'Int');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::RecurringCharge]');
  has ReservedCacheNodeId => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferingId => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has UsagePrice => (is => 'ro', isa => 'Int');
}

class AWS::ElastiCache::ReservedCacheNodesOffering with AWS::API::ResultParser {
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has FixedPrice => (is => 'ro', isa => 'Int');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::RecurringCharge]');
  has ReservedCacheNodesOfferingId => (is => 'ro', isa => 'Str');
  has UsagePrice => (is => 'ro', isa => 'Int');
}

class AWS::ElastiCache::SecurityGroupMembership with AWS::API::ResultParser {
  has SecurityGroupId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::Subnet with AWS::API::ResultParser {
  has SubnetAvailabilityZone => (is => 'ro', isa => 'AWS::ElastiCache::AvailabilityZone');
  has SubnetIdentifier => (is => 'ro', isa => 'Str');
}

class AWS::ElastiCache::AuthorizeCacheSecurityGroupIngress {
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeCacheSecurityGroupIngress');
  has _returns => (isa => 'AWS::ElastiCache::AuthorizeCacheSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeCacheSecurityGroupIngressResult');
}
class AWS::ElastiCache::CreateCacheCluster {
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Str');
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);
  has CacheNodeType => (is => 'ro', isa => 'Str', required => 1);
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has CacheSecurityGroupNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NotificationTopicArn => (is => 'ro', isa => 'Str');
  has NumCacheNodes => (is => 'ro', isa => 'Int', required => 1);
  has Port => (is => 'ro', isa => 'Int');
  has PreferredAvailabilityZone => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has SnapshotArns => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheCluster');
  has _returns => (isa => 'AWS::ElastiCache::CreateCacheClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheClusterResult');
}
class AWS::ElastiCache::CreateCacheParameterGroup {
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheParameterGroup');
  has _returns => (isa => 'AWS::ElastiCache::CreateCacheParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheParameterGroupResult');
}
class AWS::ElastiCache::CreateCacheSecurityGroup {
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheSecurityGroup');
  has _returns => (isa => 'AWS::ElastiCache::CreateCacheSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheSecurityGroupResult');
}
class AWS::ElastiCache::CreateCacheSubnetGroup {
  has CacheSubnetGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheSubnetGroup');
  has _returns => (isa => 'AWS::ElastiCache::CreateCacheSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheSubnetGroupResult');
}
class AWS::ElastiCache::CreateReplicationGroup {
  has PrimaryClusterId => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReplicationGroup');
  has _returns => (isa => 'AWS::ElastiCache::CreateReplicationGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateReplicationGroupResult');
}
class AWS::ElastiCache::DeleteCacheCluster {
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheCluster');
  has _returns => (isa => 'AWS::ElastiCache::DeleteCacheClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteCacheClusterResult');
}
class AWS::ElastiCache::DeleteCacheParameterGroup {
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheParameterGroup');
  has _returns => (isa => 'AWS::ElastiCache::DeleteCacheParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteCacheParameterGroupResult');
}
class AWS::ElastiCache::DeleteCacheSecurityGroup {
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheSecurityGroup');
  has _returns => (isa => 'AWS::ElastiCache::DeleteCacheSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteCacheSecurityGroupResult');
}
class AWS::ElastiCache::DeleteCacheSubnetGroup {
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheSubnetGroup');
  has _returns => (isa => 'AWS::ElastiCache::DeleteCacheSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteCacheSubnetGroupResult');
}
class AWS::ElastiCache::DeleteReplicationGroup {
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteReplicationGroup');
  has _returns => (isa => 'AWS::ElastiCache::DeleteReplicationGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteReplicationGroupResult');
}
class AWS::ElastiCache::DescribeCacheClusters {
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ShowCacheNodeInfo => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheClusters');
  has _returns => (isa => 'AWS::ElastiCache::DescribeCacheClustersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheClustersResult');
}
class AWS::ElastiCache::DescribeCacheEngineVersions {
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DefaultOnly => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheEngineVersions');
  has _returns => (isa => 'AWS::ElastiCache::DescribeCacheEngineVersionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheEngineVersionsResult');
}
class AWS::ElastiCache::DescribeCacheParameterGroups {
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheParameterGroups');
  has _returns => (isa => 'AWS::ElastiCache::DescribeCacheParameterGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheParameterGroupsResult');
}
class AWS::ElastiCache::DescribeCacheParameters {
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has Source => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheParameters');
  has _returns => (isa => 'AWS::ElastiCache::DescribeCacheParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheParametersResult');
}
class AWS::ElastiCache::DescribeCacheSecurityGroups {
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheSecurityGroups');
  has _returns => (isa => 'AWS::ElastiCache::DescribeCacheSecurityGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheSecurityGroupsResult');
}
class AWS::ElastiCache::DescribeCacheSubnetGroups {
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheSubnetGroups');
  has _returns => (isa => 'AWS::ElastiCache::DescribeCacheSubnetGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheSubnetGroupsResult');
}
class AWS::ElastiCache::DescribeEngineDefaultParameters {
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParameters');
  has _returns => (isa => 'AWS::ElastiCache::DescribeEngineDefaultParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParametersResult');
}
class AWS::ElastiCache::DescribeEvents {
  has Duration => (is => 'ro', isa => 'Int');
  has EndTime => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEvents');
  has _returns => (isa => 'AWS::ElastiCache::DescribeEventsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventsResult');
}
class AWS::ElastiCache::DescribeReplicationGroups {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReplicationGroups');
  has _returns => (isa => 'AWS::ElastiCache::DescribeReplicationGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReplicationGroupsResult');
}
class AWS::ElastiCache::DescribeReservedCacheNodes {
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has ReservedCacheNodeId => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferingId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedCacheNodes');
  has _returns => (isa => 'AWS::ElastiCache::DescribeReservedCacheNodesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedCacheNodesResult');
}
class AWS::ElastiCache::DescribeReservedCacheNodesOfferings {
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferingId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedCacheNodesOfferings');
  has _returns => (isa => 'AWS::ElastiCache::DescribeReservedCacheNodesOfferingsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReservedCacheNodesOfferingsResult');
}
class AWS::ElastiCache::ModifyCacheCluster {
  has ApplyImmediately => (is => 'ro', isa => 'Str');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Str');
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);
  has CacheNodeIdsToRemove => (is => 'ro', isa => 'ArrayRef[Str]');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has CacheSecurityGroupNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NotificationTopicArn => (is => 'ro', isa => 'Str');
  has NotificationTopicStatus => (is => 'ro', isa => 'Str');
  has NumCacheNodes => (is => 'ro', isa => 'Int');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCacheCluster');
  has _returns => (isa => 'AWS::ElastiCache::ModifyCacheClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCacheClusterResult');
}
class AWS::ElastiCache::ModifyCacheParameterGroup {
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ParameterNameValues => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::ParameterNameValue]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCacheParameterGroup');
  has _returns => (isa => 'AWS::ElastiCache::ModifyCacheParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCacheParameterGroupResult');
}
class AWS::ElastiCache::ModifyCacheSubnetGroup {
  has CacheSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCacheSubnetGroup');
  has _returns => (isa => 'AWS::ElastiCache::ModifyCacheSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCacheSubnetGroupResult');
}
class AWS::ElastiCache::ModifyReplicationGroup {
  has ApplyImmediately => (is => 'ro', isa => 'Str');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Str');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has CacheSecurityGroupNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NotificationTopicArn => (is => 'ro', isa => 'Str');
  has NotificationTopicStatus => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PrimaryClusterId => (is => 'ro', isa => 'Str');
  has ReplicationGroupDescription => (is => 'ro', isa => 'Str');
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyReplicationGroup');
  has _returns => (isa => 'AWS::ElastiCache::ModifyReplicationGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyReplicationGroupResult');
}
class AWS::ElastiCache::PurchaseReservedCacheNodesOffering {
  has CacheNodeCount => (is => 'ro', isa => 'Int');
  has ReservedCacheNodeId => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferingId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedCacheNodesOffering');
  has _returns => (isa => 'AWS::ElastiCache::PurchaseReservedCacheNodesOfferingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PurchaseReservedCacheNodesOfferingResult');
}
class AWS::ElastiCache::RebootCacheCluster {
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);
  has CacheNodeIdsToReboot => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RebootCacheCluster');
  has _returns => (isa => 'AWS::ElastiCache::RebootCacheClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RebootCacheClusterResult');
}
class AWS::ElastiCache::ResetCacheParameterGroup {
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ParameterNameValues => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::ParameterNameValue]', required => 1);
  has ResetAllParameters => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResetCacheParameterGroup');
  has _returns => (isa => 'AWS::ElastiCache::ResetCacheParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResetCacheParameterGroupResult');
}
class AWS::ElastiCache::RevokeCacheSecurityGroupIngress {
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeCacheSecurityGroupIngress');
  has _returns => (isa => 'AWS::ElastiCache::RevokeCacheSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeCacheSecurityGroupIngressResult');
}
class AWS::ElastiCache::AuthorizeCacheSecurityGroupIngressResult with AWS::API::ResultParser {
  has CacheSecurityGroup => (is => 'ro', isa => 'AWS::ElastiCache::CacheSecurityGroup');
}
class AWS::ElastiCache::CreateCacheClusterResult with AWS::API::ResultParser {
  has CacheCluster => (is => 'ro', isa => 'AWS::ElastiCache::CacheCluster');
}
class AWS::ElastiCache::CreateCacheParameterGroupResult with AWS::API::ResultParser {
  has CacheParameterGroup => (is => 'ro', isa => 'AWS::ElastiCache::CacheParameterGroup');
}
class AWS::ElastiCache::CreateCacheSecurityGroupResult with AWS::API::ResultParser {
  has CacheSecurityGroup => (is => 'ro', isa => 'AWS::ElastiCache::CacheSecurityGroup');
}
class AWS::ElastiCache::CreateCacheSubnetGroupResult with AWS::API::ResultParser {
  has CacheSubnetGroup => (is => 'ro', isa => 'AWS::ElastiCache::CacheSubnetGroup');
}
class AWS::ElastiCache::CreateReplicationGroupResult with AWS::API::ResultParser {
  has ReplicationGroup => (is => 'ro', isa => 'AWS::ElastiCache::ReplicationGroup');
}
class AWS::ElastiCache::DeleteCacheClusterResult with AWS::API::ResultParser {
  has CacheCluster => (is => 'ro', isa => 'AWS::ElastiCache::CacheCluster');
}
class AWS::ElastiCache::DeleteReplicationGroupResult with AWS::API::ResultParser {
  has ReplicationGroup => (is => 'ro', isa => 'AWS::ElastiCache::ReplicationGroup');
}
class AWS::ElastiCache::DescribeCacheClustersResult with AWS::API::ResultParser {
  has CacheClusters => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::CacheCluster]');
  has Marker => (is => 'ro', isa => 'Str');
}
class AWS::ElastiCache::DescribeCacheEngineVersionsResult with AWS::API::ResultParser {
  has CacheEngineVersions => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::CacheEngineVersion]');
  has Marker => (is => 'ro', isa => 'Str');
}
class AWS::ElastiCache::DescribeCacheParameterGroupsResult with AWS::API::ResultParser {
  has CacheParameterGroups => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::CacheParameterGroup]');
  has Marker => (is => 'ro', isa => 'Str');
}
class AWS::ElastiCache::DescribeCacheParametersResult with AWS::API::ResultParser {
  has CacheNodeTypeSpecificParameters => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::CacheNodeTypeSpecificParameter]');
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::Parameter]');
}
class AWS::ElastiCache::DescribeCacheSecurityGroupsResult with AWS::API::ResultParser {
  has CacheSecurityGroups => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::CacheSecurityGroup]');
  has Marker => (is => 'ro', isa => 'Str');
}
class AWS::ElastiCache::DescribeCacheSubnetGroupsResult with AWS::API::ResultParser {
  has CacheSubnetGroups => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::CacheSubnetGroup]');
  has Marker => (is => 'ro', isa => 'Str');
}
class AWS::ElastiCache::DescribeEngineDefaultParametersResult with AWS::API::ResultParser {
  has EngineDefaults => (is => 'ro', isa => 'AWS::ElastiCache::EngineDefaults');
}
class AWS::ElastiCache::DescribeEventsResult with AWS::API::ResultParser {
  has Events => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::Event]');
  has Marker => (is => 'ro', isa => 'Str');
}
class AWS::ElastiCache::DescribeReplicationGroupsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has ReplicationGroups => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::ReplicationGroup]');
}
class AWS::ElastiCache::DescribeReservedCacheNodesResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedCacheNodes => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::ReservedCacheNode]');
}
class AWS::ElastiCache::DescribeReservedCacheNodesOfferingsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferings => (is => 'ro', isa => 'ArrayRef[AWS::ElastiCache::ReservedCacheNodesOffering]');
}
class AWS::ElastiCache::ModifyCacheClusterResult with AWS::API::ResultParser {
  has CacheCluster => (is => 'ro', isa => 'AWS::ElastiCache::CacheCluster');
}
class AWS::ElastiCache::ModifyCacheParameterGroupResult with AWS::API::ResultParser {
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
}
class AWS::ElastiCache::ModifyCacheSubnetGroupResult with AWS::API::ResultParser {
  has CacheSubnetGroup => (is => 'ro', isa => 'AWS::ElastiCache::CacheSubnetGroup');
}
class AWS::ElastiCache::ModifyReplicationGroupResult with AWS::API::ResultParser {
  has ReplicationGroup => (is => 'ro', isa => 'AWS::ElastiCache::ReplicationGroup');
}
class AWS::ElastiCache::PurchaseReservedCacheNodesOfferingResult with AWS::API::ResultParser {
  has ReservedCacheNode => (is => 'ro', isa => 'AWS::ElastiCache::ReservedCacheNode');
}
class AWS::ElastiCache::RebootCacheClusterResult with AWS::API::ResultParser {
  has CacheCluster => (is => 'ro', isa => 'AWS::ElastiCache::CacheCluster');
}
class AWS::ElastiCache::ResetCacheParameterGroupResult with AWS::API::ResultParser {
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
}
class AWS::ElastiCache::RevokeCacheSecurityGroupIngressResult with AWS::API::ResultParser {
  has CacheSecurityGroup => (is => 'ro', isa => 'AWS::ElastiCache::CacheSecurityGroup');
}
class AWS::ElastiCache with AWS::API::Caller with AWS::API::RegionalEndpointCaller {
  has service => (is => 'ro', isa => 'Str', default => 'elasticache');
  has version => (is => 'ro', isa => 'Str', default => '2013-06-15');

  method AuthorizeCacheSecurityGroupIngress (%args) {
    my $call = AWS::ElastiCache::AuthorizeCacheSecurityGroupIngress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::AuthorizeCacheSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateCacheCluster (%args) {
    my $call = AWS::ElastiCache::CreateCacheCluster->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::CreateCacheClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateCacheParameterGroup (%args) {
    my $call = AWS::ElastiCache::CreateCacheParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::CreateCacheParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateCacheSecurityGroup (%args) {
    my $call = AWS::ElastiCache::CreateCacheSecurityGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::CreateCacheSecurityGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateCacheSubnetGroup (%args) {
    my $call = AWS::ElastiCache::CreateCacheSubnetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::CreateCacheSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateReplicationGroup (%args) {
    my $call = AWS::ElastiCache::CreateReplicationGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::CreateReplicationGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteCacheCluster (%args) {
    my $call = AWS::ElastiCache::DeleteCacheCluster->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::DeleteCacheClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteCacheParameterGroup (%args) {
    my $call = AWS::ElastiCache::DeleteCacheParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::DeleteCacheParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteCacheSecurityGroup (%args) {
    my $call = AWS::ElastiCache::DeleteCacheSecurityGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::DeleteCacheSecurityGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteCacheSubnetGroup (%args) {
    my $call = AWS::ElastiCache::DeleteCacheSubnetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::DeleteCacheSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteReplicationGroup (%args) {
    my $call = AWS::ElastiCache::DeleteReplicationGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::DeleteReplicationGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeCacheClusters (%args) {
    my $call = AWS::ElastiCache::DescribeCacheClusters->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::DescribeCacheClustersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeCacheEngineVersions (%args) {
    my $call = AWS::ElastiCache::DescribeCacheEngineVersions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::DescribeCacheEngineVersionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeCacheParameterGroups (%args) {
    my $call = AWS::ElastiCache::DescribeCacheParameterGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::DescribeCacheParameterGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeCacheParameters (%args) {
    my $call = AWS::ElastiCache::DescribeCacheParameters->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::DescribeCacheParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeCacheSecurityGroups (%args) {
    my $call = AWS::ElastiCache::DescribeCacheSecurityGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::DescribeCacheSecurityGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeCacheSubnetGroups (%args) {
    my $call = AWS::ElastiCache::DescribeCacheSubnetGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::DescribeCacheSubnetGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeEngineDefaultParameters (%args) {
    my $call = AWS::ElastiCache::DescribeEngineDefaultParameters->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::DescribeEngineDefaultParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeEvents (%args) {
    my $call = AWS::ElastiCache::DescribeEvents->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::DescribeEventsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeReplicationGroups (%args) {
    my $call = AWS::ElastiCache::DescribeReplicationGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::DescribeReplicationGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeReservedCacheNodes (%args) {
    my $call = AWS::ElastiCache::DescribeReservedCacheNodes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::DescribeReservedCacheNodesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeReservedCacheNodesOfferings (%args) {
    my $call = AWS::ElastiCache::DescribeReservedCacheNodesOfferings->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::DescribeReservedCacheNodesOfferingsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ModifyCacheCluster (%args) {
    my $call = AWS::ElastiCache::ModifyCacheCluster->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::ModifyCacheClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ModifyCacheParameterGroup (%args) {
    my $call = AWS::ElastiCache::ModifyCacheParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::ModifyCacheParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ModifyCacheSubnetGroup (%args) {
    my $call = AWS::ElastiCache::ModifyCacheSubnetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::ModifyCacheSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ModifyReplicationGroup (%args) {
    my $call = AWS::ElastiCache::ModifyReplicationGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::ModifyReplicationGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method PurchaseReservedCacheNodesOffering (%args) {
    my $call = AWS::ElastiCache::PurchaseReservedCacheNodesOffering->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::PurchaseReservedCacheNodesOfferingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RebootCacheCluster (%args) {
    my $call = AWS::ElastiCache::RebootCacheCluster->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::RebootCacheClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ResetCacheParameterGroup (%args) {
    my $call = AWS::ElastiCache::ResetCacheParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::ResetCacheParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RevokeCacheSecurityGroupIngress (%args) {
    my $call = AWS::ElastiCache::RevokeCacheSecurityGroupIngress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ElastiCache::RevokeCacheSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

}

