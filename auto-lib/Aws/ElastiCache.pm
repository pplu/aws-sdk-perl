
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::ElastiCache::SourceType', ['cache-cluster','cache-parameter-group','cache-security-group','cache-subnet-group',];


class Aws::ElastiCache::AvailabilityZone with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str');
}

class Aws::ElastiCache::CacheCluster with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Str');
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

class Aws::ElastiCache::CacheEngineVersion with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CacheEngineDescription => (is => 'ro', isa => 'Str');
  has CacheEngineVersionDescription => (is => 'ro', isa => 'Str');
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
}

class Aws::ElastiCache::CacheNode with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CacheNodeCreateTime => (is => 'ro', isa => 'Str');
  has CacheNodeId => (is => 'ro', isa => 'Str');
  has CacheNodeStatus => (is => 'ro', isa => 'Str');
  has Endpoint => (is => 'ro', isa => 'Aws::ElastiCache::Endpoint');
  has ParameterGroupStatus => (is => 'ro', isa => 'Str');
  has SourceCacheNodeId => (is => 'ro', isa => 'Str');
}

class Aws::ElastiCache::CacheNodeTypeSpecificParameter with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AllowedValues => (is => 'ro', isa => 'Str');
  has CacheNodeTypeSpecificValues => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheNodeTypeSpecificValue]');
  has DataType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Str');
  has MinimumEngineVersion => (is => 'ro', isa => 'Str');
  has ParameterName => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
}

class Aws::ElastiCache::CacheNodeTypeSpecificValue with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

class Aws::ElastiCache::CacheParameterGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
}

class Aws::ElastiCache::CacheParameterGroupStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CacheNodeIdsToReboot => (is => 'ro', isa => 'ArrayRef[Str]');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterApplyStatus => (is => 'ro', isa => 'Str');
}

class Aws::ElastiCache::CacheSecurityGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EC2SecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::EC2SecurityGroup]');
  has OwnerId => (is => 'ro', isa => 'Str');
}

class Aws::ElastiCache::CacheSecurityGroupMembership with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class Aws::ElastiCache::CacheSubnetGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CacheSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::Subnet]');
  has VpcId => (is => 'ro', isa => 'Str');
}

class Aws::ElastiCache::EC2SecurityGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str');
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class Aws::ElastiCache::Endpoint with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Address => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
}

class Aws::ElastiCache::EngineDefaults with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CacheNodeTypeSpecificParameters => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheNodeTypeSpecificParameter]');
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::Parameter]');
}

class Aws::ElastiCache::Event with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Date => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Aws::ElastiCache::SourceType');
}

class Aws::ElastiCache::NodeGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has NodeGroupId => (is => 'ro', isa => 'Str');
  has NodeGroupMembers => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::NodeGroupMember]');
  has PrimaryEndpoint => (is => 'ro', isa => 'Aws::ElastiCache::Endpoint');
  has Status => (is => 'ro', isa => 'Str');
}

class Aws::ElastiCache::NodeGroupMember with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has CacheNodeId => (is => 'ro', isa => 'Str');
  has CurrentRole => (is => 'ro', isa => 'Str');
  has PreferredAvailabilityZone => (is => 'ro', isa => 'Str');
  has ReadEndpoint => (is => 'ro', isa => 'Aws::ElastiCache::Endpoint');
}

class Aws::ElastiCache::NotificationConfiguration with (AWS::API::ResultParser, AWS::API::ToParams) {
  has TopicArn => (is => 'ro', isa => 'Str');
  has TopicStatus => (is => 'ro', isa => 'Str');
}

class Aws::ElastiCache::Parameter with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AllowedValues => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Str');
  has MinimumEngineVersion => (is => 'ro', isa => 'Str');
  has ParameterName => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
}

class Aws::ElastiCache::ParameterNameValue with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ParameterName => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
}

class Aws::ElastiCache::PendingModifiedValues with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CacheNodeIdsToRemove => (is => 'ro', isa => 'ArrayRef[Str]');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NumCacheNodes => (is => 'ro', isa => 'Int');
}

class Aws::ElastiCache::RecurringCharge with (AWS::API::ResultParser, AWS::API::ToParams) {
  has RecurringChargeAmount => (is => 'ro', isa => 'Num');
  has RecurringChargeFrequency => (is => 'ro', isa => 'Str');
}

class Aws::ElastiCache::ReplicationGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Description => (is => 'ro', isa => 'Str');
  has MemberClusters => (is => 'ro', isa => 'ArrayRef[Str]');
  has NodeGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::NodeGroup]');
  has PendingModifiedValues => (is => 'ro', isa => 'Aws::ElastiCache::ReplicationGroupPendingModifiedValues');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class Aws::ElastiCache::ReplicationGroupPendingModifiedValues with (AWS::API::ResultParser, AWS::API::ToParams) {
  has PrimaryClusterId => (is => 'ro', isa => 'Str');
}

class Aws::ElastiCache::ReservedCacheNode with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::ElastiCache::ReservedCacheNodesOffering with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has FixedPrice => (is => 'ro', isa => 'Num');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::RecurringCharge]');
  has ReservedCacheNodesOfferingId => (is => 'ro', isa => 'Str');
  has UsagePrice => (is => 'ro', isa => 'Num');
}

class Aws::ElastiCache::SecurityGroupMembership with (AWS::API::ResultParser, AWS::API::ToParams) {
  has SecurityGroupId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}

class Aws::ElastiCache::Subnet with (AWS::API::ResultParser, AWS::API::ToParams) {
  has SubnetAvailabilityZone => (is => 'ro', isa => 'Aws::ElastiCache::AvailabilityZone');
  has SubnetIdentifier => (is => 'ro', isa => 'Str');
}



class Aws::ElastiCache::AuthorizeCacheSecurityGroupIngress {
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeCacheSecurityGroupIngress');
  has _returns => (isa => 'Aws::ElastiCache::AuthorizeCacheSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeCacheSecurityGroupIngressResult');  
}
class Aws::ElastiCache::CreateCacheCluster {
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Str');
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
class Aws::ElastiCache::CreateCacheParameterGroup {
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheParameterGroup');
  has _returns => (isa => 'Aws::ElastiCache::CreateCacheParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheParameterGroupResult');  
}
class Aws::ElastiCache::CreateCacheSecurityGroup {
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheSecurityGroup');
  has _returns => (isa => 'Aws::ElastiCache::CreateCacheSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheSecurityGroupResult');  
}
class Aws::ElastiCache::CreateCacheSubnetGroup {
  has CacheSubnetGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SubnetIdentifier' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheSubnetGroup');
  has _returns => (isa => 'Aws::ElastiCache::CreateCacheSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheSubnetGroupResult');  
}
class Aws::ElastiCache::CreateReplicationGroup {
  has PrimaryClusterId => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReplicationGroup');
  has _returns => (isa => 'Aws::ElastiCache::CreateReplicationGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateReplicationGroupResult');  
}
class Aws::ElastiCache::DeleteCacheCluster {
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheCluster');
  has _returns => (isa => 'Aws::ElastiCache::DeleteCacheClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteCacheClusterResult');  
}
class Aws::ElastiCache::DeleteCacheParameterGroup {
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheParameterGroup');
  has _returns => (isa => 'Aws::ElastiCache::DeleteCacheParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteCacheParameterGroupResult');  
}
class Aws::ElastiCache::DeleteCacheSecurityGroup {
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheSecurityGroup');
  has _returns => (isa => 'Aws::ElastiCache::DeleteCacheSecurityGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteCacheSecurityGroupResult');  
}
class Aws::ElastiCache::DeleteCacheSubnetGroup {
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCacheSubnetGroup');
  has _returns => (isa => 'Aws::ElastiCache::DeleteCacheSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteCacheSubnetGroupResult');  
}
class Aws::ElastiCache::DeleteReplicationGroup {
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);
  has RetainPrimaryCluster => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteReplicationGroup');
  has _returns => (isa => 'Aws::ElastiCache::DeleteReplicationGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteReplicationGroupResult');  
}
class Aws::ElastiCache::DescribeCacheClusters {
  has CacheClusterId => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ShowCacheNodeInfo => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheClusters');
  has _returns => (isa => 'Aws::ElastiCache::DescribeCacheClustersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheClustersResult');  
}
class Aws::ElastiCache::DescribeCacheEngineVersions {
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str');
  has DefaultOnly => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheEngineVersions');
  has _returns => (isa => 'Aws::ElastiCache::DescribeCacheEngineVersionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheEngineVersionsResult');  
}
class Aws::ElastiCache::DescribeCacheParameterGroups {
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheParameterGroups');
  has _returns => (isa => 'Aws::ElastiCache::DescribeCacheParameterGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheParameterGroupsResult');  
}
class Aws::ElastiCache::DescribeCacheParameters {
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has Source => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheParameters');
  has _returns => (isa => 'Aws::ElastiCache::DescribeCacheParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheParametersResult');  
}
class Aws::ElastiCache::DescribeCacheSecurityGroups {
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheSecurityGroups');
  has _returns => (isa => 'Aws::ElastiCache::DescribeCacheSecurityGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheSecurityGroupsResult');  
}
class Aws::ElastiCache::DescribeCacheSubnetGroups {
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheSubnetGroups');
  has _returns => (isa => 'Aws::ElastiCache::DescribeCacheSubnetGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheSubnetGroupsResult');  
}
class Aws::ElastiCache::DescribeEngineDefaultParameters {
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParameters');
  has _returns => (isa => 'Aws::ElastiCache::DescribeEngineDefaultParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParametersResult');  
}
class Aws::ElastiCache::DescribeEvents {
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
class Aws::ElastiCache::DescribeReplicationGroups {
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReplicationGroups');
  has _returns => (isa => 'Aws::ElastiCache::DescribeReplicationGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReplicationGroupsResult');  
}
class Aws::ElastiCache::DescribeReservedCacheNodes {
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
class Aws::ElastiCache::DescribeReservedCacheNodesOfferings {
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
class Aws::ElastiCache::ModifyCacheCluster {
  has ApplyImmediately => (is => 'ro', isa => 'Str');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Str');
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
class Aws::ElastiCache::ModifyCacheParameterGroup {
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ParameterNameValues => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ParameterNameValue]', traits => ['NameInRequest'], request_name => 'ParameterNameValue' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCacheParameterGroup');
  has _returns => (isa => 'Aws::ElastiCache::ModifyCacheParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCacheParameterGroupResult');  
}
class Aws::ElastiCache::ModifyCacheSubnetGroup {
  has CacheSubnetGroupDescription => (is => 'ro', isa => 'Str');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SubnetIdentifier' );

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCacheSubnetGroup');
  has _returns => (isa => 'Aws::ElastiCache::ModifyCacheSubnetGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCacheSubnetGroupResult');  
}
class Aws::ElastiCache::ModifyReplicationGroup {
  has ApplyImmediately => (is => 'ro', isa => 'Str');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Str');
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
class Aws::ElastiCache::PurchaseReservedCacheNodesOffering {
  has CacheNodeCount => (is => 'ro', isa => 'Int');
  has ReservedCacheNodeId => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferingId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedCacheNodesOffering');
  has _returns => (isa => 'Aws::ElastiCache::PurchaseReservedCacheNodesOfferingResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PurchaseReservedCacheNodesOfferingResult');  
}
class Aws::ElastiCache::RebootCacheCluster {
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);
  has CacheNodeIdsToReboot => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'CacheNodeId' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RebootCacheCluster');
  has _returns => (isa => 'Aws::ElastiCache::RebootCacheClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RebootCacheClusterResult');  
}
class Aws::ElastiCache::ResetCacheParameterGroup {
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ParameterNameValues => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ParameterNameValue]', traits => ['NameInRequest'], request_name => 'ParameterNameValue' , required => 1);
  has ResetAllParameters => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResetCacheParameterGroup');
  has _returns => (isa => 'Aws::ElastiCache::ResetCacheParameterGroupResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResetCacheParameterGroupResult');  
}
class Aws::ElastiCache::RevokeCacheSecurityGroupIngress {
  has CacheSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has EC2SecurityGroupOwnerId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeCacheSecurityGroupIngress');
  has _returns => (isa => 'Aws::ElastiCache::RevokeCacheSecurityGroupIngressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RevokeCacheSecurityGroupIngressResult');  
}

class Aws::ElastiCache::AuthorizeCacheSecurityGroupIngressResult with AWS::API::ResultParser {
  has CacheSecurityGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheSecurityGroup');

}
class Aws::ElastiCache::CreateCacheClusterResult with AWS::API::ResultParser {
  has CacheCluster => (is => 'ro', isa => 'Aws::ElastiCache::CacheCluster');

}
class Aws::ElastiCache::CreateCacheParameterGroupResult with AWS::API::ResultParser {
  has CacheParameterGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheParameterGroup');

}
class Aws::ElastiCache::CreateCacheSecurityGroupResult with AWS::API::ResultParser {
  has CacheSecurityGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheSecurityGroup');

}
class Aws::ElastiCache::CreateCacheSubnetGroupResult with AWS::API::ResultParser {
  has CacheSubnetGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheSubnetGroup');

}
class Aws::ElastiCache::CreateReplicationGroupResult with AWS::API::ResultParser {
  has ReplicationGroup => (is => 'ro', isa => 'Aws::ElastiCache::ReplicationGroup');

}
class Aws::ElastiCache::DeleteCacheClusterResult with AWS::API::ResultParser {
  has CacheCluster => (is => 'ro', isa => 'Aws::ElastiCache::CacheCluster');

}
class Aws::ElastiCache::DeleteReplicationGroupResult with AWS::API::ResultParser {
  has ReplicationGroup => (is => 'ro', isa => 'Aws::ElastiCache::ReplicationGroup');

}
class Aws::ElastiCache::DescribeCacheClustersResult with AWS::API::ResultParser {
  has CacheClusters => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheCluster]', traits => ['Unwrapped'], xmlname => 'CacheCluster');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::ElastiCache::DescribeCacheEngineVersionsResult with AWS::API::ResultParser {
  has CacheEngineVersions => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheEngineVersion]', traits => ['Unwrapped'], xmlname => 'CacheEngineVersion');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::ElastiCache::DescribeCacheParameterGroupsResult with AWS::API::ResultParser {
  has CacheParameterGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheParameterGroup]', traits => ['Unwrapped'], xmlname => 'CacheParameterGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::ElastiCache::DescribeCacheParametersResult with AWS::API::ResultParser {
  has CacheNodeTypeSpecificParameters => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheNodeTypeSpecificParameter]', traits => ['Unwrapped'], xmlname => 'CacheNodeTypeSpecificParameter');
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::Parameter]', traits => ['Unwrapped'], xmlname => 'Parameter');

}
class Aws::ElastiCache::DescribeCacheSecurityGroupsResult with AWS::API::ResultParser {
  has CacheSecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheSecurityGroup]', traits => ['Unwrapped'], xmlname => 'CacheSecurityGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::ElastiCache::DescribeCacheSubnetGroupsResult with AWS::API::ResultParser {
  has CacheSubnetGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::CacheSubnetGroup]', traits => ['Unwrapped'], xmlname => 'CacheSubnetGroup');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::ElastiCache::DescribeEngineDefaultParametersResult with AWS::API::ResultParser {
  has EngineDefaults => (is => 'ro', isa => 'Aws::ElastiCache::EngineDefaults');

}
class Aws::ElastiCache::DescribeEventsResult with AWS::API::ResultParser {
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::Event]', traits => ['Unwrapped'], xmlname => 'Event');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::ElastiCache::DescribeReplicationGroupsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has ReplicationGroups => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ReplicationGroup]', traits => ['Unwrapped'], xmlname => 'ReplicationGroup');

}
class Aws::ElastiCache::DescribeReservedCacheNodesResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedCacheNodes => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ReservedCacheNode]', traits => ['Unwrapped'], xmlname => 'ReservedCacheNode');

}
class Aws::ElastiCache::DescribeReservedCacheNodesOfferingsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has ReservedCacheNodesOfferings => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::ReservedCacheNodesOffering]', traits => ['Unwrapped'], xmlname => 'ReservedCacheNodesOffering');

}
class Aws::ElastiCache::ModifyCacheClusterResult with AWS::API::ResultParser {
  has CacheCluster => (is => 'ro', isa => 'Aws::ElastiCache::CacheCluster');

}
class Aws::ElastiCache::ModifyCacheParameterGroupResult with AWS::API::ResultParser {
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');

}
class Aws::ElastiCache::ModifyCacheSubnetGroupResult with AWS::API::ResultParser {
  has CacheSubnetGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheSubnetGroup');

}
class Aws::ElastiCache::ModifyReplicationGroupResult with AWS::API::ResultParser {
  has ReplicationGroup => (is => 'ro', isa => 'Aws::ElastiCache::ReplicationGroup');

}
class Aws::ElastiCache::PurchaseReservedCacheNodesOfferingResult with AWS::API::ResultParser {
  has ReservedCacheNode => (is => 'ro', isa => 'Aws::ElastiCache::ReservedCacheNode');

}
class Aws::ElastiCache::RebootCacheClusterResult with AWS::API::ResultParser {
  has CacheCluster => (is => 'ro', isa => 'Aws::ElastiCache::CacheCluster');

}
class Aws::ElastiCache::ResetCacheParameterGroupResult with AWS::API::ResultParser {
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');

}
class Aws::ElastiCache::RevokeCacheSecurityGroupIngressResult with AWS::API::ResultParser {
  has CacheSecurityGroup => (is => 'ro', isa => 'Aws::ElastiCache::CacheSecurityGroup');

}

class Aws::ElastiCache with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'elasticache');
  has version => (is => 'ro', isa => 'Str', default => '2013-06-15');
  
  method AuthorizeCacheSecurityGroupIngress (%args) {
    my $call = Aws::ElastiCache::AuthorizeCacheSecurityGroupIngress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::AuthorizeCacheSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateCacheCluster (%args) {
    my $call = Aws::ElastiCache::CreateCacheCluster->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::CreateCacheClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateCacheParameterGroup (%args) {
    my $call = Aws::ElastiCache::CreateCacheParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::CreateCacheParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateCacheSecurityGroup (%args) {
    my $call = Aws::ElastiCache::CreateCacheSecurityGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::CreateCacheSecurityGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateCacheSubnetGroup (%args) {
    my $call = Aws::ElastiCache::CreateCacheSubnetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::CreateCacheSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateReplicationGroup (%args) {
    my $call = Aws::ElastiCache::CreateReplicationGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::CreateReplicationGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteCacheCluster (%args) {
    my $call = Aws::ElastiCache::DeleteCacheCluster->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DeleteCacheClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteCacheParameterGroup (%args) {
    my $call = Aws::ElastiCache::DeleteCacheParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteCacheSecurityGroup (%args) {
    my $call = Aws::ElastiCache::DeleteCacheSecurityGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteCacheSubnetGroup (%args) {
    my $call = Aws::ElastiCache::DeleteCacheSubnetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteReplicationGroup (%args) {
    my $call = Aws::ElastiCache::DeleteReplicationGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DeleteReplicationGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeCacheClusters (%args) {
    my $call = Aws::ElastiCache::DescribeCacheClusters->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeCacheClustersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeCacheEngineVersions (%args) {
    my $call = Aws::ElastiCache::DescribeCacheEngineVersions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeCacheEngineVersionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeCacheParameterGroups (%args) {
    my $call = Aws::ElastiCache::DescribeCacheParameterGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeCacheParameterGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeCacheParameters (%args) {
    my $call = Aws::ElastiCache::DescribeCacheParameters->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeCacheParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeCacheSecurityGroups (%args) {
    my $call = Aws::ElastiCache::DescribeCacheSecurityGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeCacheSecurityGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeCacheSubnetGroups (%args) {
    my $call = Aws::ElastiCache::DescribeCacheSubnetGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeCacheSubnetGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeEngineDefaultParameters (%args) {
    my $call = Aws::ElastiCache::DescribeEngineDefaultParameters->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeEngineDefaultParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeEvents (%args) {
    my $call = Aws::ElastiCache::DescribeEvents->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeEventsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeReplicationGroups (%args) {
    my $call = Aws::ElastiCache::DescribeReplicationGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeReplicationGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeReservedCacheNodes (%args) {
    my $call = Aws::ElastiCache::DescribeReservedCacheNodes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeReservedCacheNodesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeReservedCacheNodesOfferings (%args) {
    my $call = Aws::ElastiCache::DescribeReservedCacheNodesOfferings->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::DescribeReservedCacheNodesOfferingsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifyCacheCluster (%args) {
    my $call = Aws::ElastiCache::ModifyCacheCluster->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::ModifyCacheClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifyCacheParameterGroup (%args) {
    my $call = Aws::ElastiCache::ModifyCacheParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::ModifyCacheParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifyCacheSubnetGroup (%args) {
    my $call = Aws::ElastiCache::ModifyCacheSubnetGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::ModifyCacheSubnetGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifyReplicationGroup (%args) {
    my $call = Aws::ElastiCache::ModifyReplicationGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::ModifyReplicationGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method PurchaseReservedCacheNodesOffering (%args) {
    my $call = Aws::ElastiCache::PurchaseReservedCacheNodesOffering->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::PurchaseReservedCacheNodesOfferingResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RebootCacheCluster (%args) {
    my $call = Aws::ElastiCache::RebootCacheCluster->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::RebootCacheClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ResetCacheParameterGroup (%args) {
    my $call = Aws::ElastiCache::ResetCacheParameterGroup->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::ResetCacheParameterGroupResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RevokeCacheSecurityGroupIngress (%args) {
    my $call = Aws::ElastiCache::RevokeCacheSecurityGroupIngress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ElastiCache::RevokeCacheSecurityGroupIngressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
