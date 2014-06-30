
use AWS::API;


package Aws::EMR::Application {
  use Moose;
  with ('AWS::API::ResultParser');
  has AdditionalInfo => (is => 'ro', isa => 'Aws::EMR::StringMap');
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Name => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
}

package Aws::EMR::BootstrapActionConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ScriptBootstrapAction => (is => 'ro', isa => 'Aws::EMR::ScriptBootstrapActionConfig', required => 1);
}

package Aws::EMR::BootstrapActionDetail {
  use Moose;
  with ('AWS::API::ResultParser');
  has BootstrapActionConfig => (is => 'ro', isa => 'Aws::EMR::BootstrapActionConfig');
}

package Aws::EMR::Cluster {
  use Moose;
  with ('AWS::API::ResultParser');
  has Applications => (is => 'ro', isa => 'ArrayRef[Aws::EMR::Application]');
  has AutoTerminate => (is => 'ro', isa => 'Bool');
  has Ec2InstanceAttributes => (is => 'ro', isa => 'Aws::EMR::Ec2InstanceAttributes');
  has Id => (is => 'ro', isa => 'Str');
  has LogUri => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RequestedAmiVersion => (is => 'ro', isa => 'Str');
  has RunningAmiVersion => (is => 'ro', isa => 'Str');
  has ServiceRole => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Aws::EMR::ClusterStatus');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EMR::Tag]');
  has TerminationProtected => (is => 'ro', isa => 'Bool');
  has VisibleToAllUsers => (is => 'ro', isa => 'Bool');
}

package Aws::EMR::ClusterStateChangeReason {
  use Moose;
  with ('AWS::API::ResultParser');
  has Code => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
}

package Aws::EMR::ClusterStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has State => (is => 'ro', isa => 'Str');
  has StateChangeReason => (is => 'ro', isa => 'Aws::EMR::ClusterStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Aws::EMR::ClusterTimeline');
}

package Aws::EMR::ClusterSummary {
  use Moose;
  with ('AWS::API::ResultParser');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Aws::EMR::ClusterStatus');
}

package Aws::EMR::ClusterTimeline {
  use Moose;
  with ('AWS::API::ResultParser');
  has CreationDateTime => (is => 'ro', isa => 'Str');
  has EndDateTime => (is => 'ro', isa => 'Str');
  has ReadyDateTime => (is => 'ro', isa => 'Str');
}

package Aws::EMR::Command {
  use Moose;
  with ('AWS::API::ResultParser');
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Name => (is => 'ro', isa => 'Str');
  has ScriptPath => (is => 'ro', isa => 'Str');
}

package Aws::EMR::Ec2InstanceAttributes {
  use Moose;
  with ('AWS::API::ResultParser');
  has Ec2AvailabilityZone => (is => 'ro', isa => 'Str');
  has Ec2KeyName => (is => 'ro', isa => 'Str');
  has Ec2SubnetId => (is => 'ro', isa => 'Str');
  has IamInstanceProfile => (is => 'ro', isa => 'Str');
}

package Aws::EMR::HadoopJarStepConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Jar => (is => 'ro', isa => 'Str', required => 1);
  has MainClass => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'ArrayRef[Aws::EMR::KeyValue]');
}

package Aws::EMR::HadoopStepConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Jar => (is => 'ro', isa => 'Str');
  has MainClass => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'Aws::EMR::StringMap');
}

package Aws::EMR::Instance {
  use Moose;
  with ('AWS::API::ResultParser');
  has Ec2InstanceId => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has PrivateDnsName => (is => 'ro', isa => 'Str');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has PublicDnsName => (is => 'ro', isa => 'Str');
  has PublicIpAddress => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Aws::EMR::InstanceStatus');
}

package Aws::EMR::InstanceGroup {
  use Moose;
  with ('AWS::API::ResultParser');
  has BidPrice => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has InstanceGroupType => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has Market => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RequestedInstanceCount => (is => 'ro', isa => 'Int');
  has RunningInstanceCount => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Aws::EMR::InstanceGroupStatus');
}

package Aws::EMR::InstanceGroupConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has BidPrice => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceRole => (is => 'ro', isa => 'Str', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has Market => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
}

package Aws::EMR::InstanceGroupDetail {
  use Moose;
  with ('AWS::API::ResultParser');
  has BidPrice => (is => 'ro', isa => 'Str');
  has CreationDateTime => (is => 'ro', isa => 'Str', required => 1);
  has EndDateTime => (is => 'ro', isa => 'Str');
  has InstanceGroupId => (is => 'ro', isa => 'Str');
  has InstanceRequestCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceRole => (is => 'ro', isa => 'Str', required => 1);
  has InstanceRunningCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has LastStateChangeReason => (is => 'ro', isa => 'Str');
  has Market => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has ReadyDateTime => (is => 'ro', isa => 'Str');
  has StartDateTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::EMR::InstanceGroupModifyConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has EC2InstanceIdsToTerminate => (is => 'ro', isa => 'ArrayRef[Str]');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has InstanceGroupId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::EMR::InstanceGroupStateChangeReason {
  use Moose;
  with ('AWS::API::ResultParser');
  has Code => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
}

package Aws::EMR::InstanceGroupStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has State => (is => 'ro', isa => 'Str');
  has StateChangeReason => (is => 'ro', isa => 'Aws::EMR::InstanceGroupStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Aws::EMR::InstanceGroupTimeline');
}

package Aws::EMR::InstanceGroupTimeline {
  use Moose;
  with ('AWS::API::ResultParser');
  has CreationDateTime => (is => 'ro', isa => 'Str');
  has EndDateTime => (is => 'ro', isa => 'Str');
  has ReadyDateTime => (is => 'ro', isa => 'Str');
}

package Aws::EMR::InstanceStateChangeReason {
  use Moose;
  with ('AWS::API::ResultParser');
  has Code => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
}

package Aws::EMR::InstanceStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has State => (is => 'ro', isa => 'Str');
  has StateChangeReason => (is => 'ro', isa => 'Aws::EMR::InstanceStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Aws::EMR::InstanceTimeline');
}

package Aws::EMR::InstanceTimeline {
  use Moose;
  with ('AWS::API::ResultParser');
  has CreationDateTime => (is => 'ro', isa => 'Str');
  has EndDateTime => (is => 'ro', isa => 'Str');
  has ReadyDateTime => (is => 'ro', isa => 'Str');
}

package Aws::EMR::JobFlowDetail {
  use Moose;
  with ('AWS::API::ResultParser');
  has AmiVersion => (is => 'ro', isa => 'Str');
  has BootstrapActions => (is => 'ro', isa => 'ArrayRef[Aws::EMR::BootstrapActionDetail]');
  has ExecutionStatusDetail => (is => 'ro', isa => 'Aws::EMR::JobFlowExecutionStatusDetail', required => 1);
  has Instances => (is => 'ro', isa => 'Aws::EMR::JobFlowInstancesDetail', required => 1);
  has JobFlowId => (is => 'ro', isa => 'Str', required => 1);
  has JobFlowRole => (is => 'ro', isa => 'Str');
  has LogUri => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ServiceRole => (is => 'ro', isa => 'Str');
  has Steps => (is => 'ro', isa => 'ArrayRef[Aws::EMR::StepDetail]');
  has SupportedProducts => (is => 'ro', isa => 'ArrayRef[Str]');
  has VisibleToAllUsers => (is => 'ro', isa => 'Bool');
}

package Aws::EMR::JobFlowExecutionStatusDetail {
  use Moose;
  with ('AWS::API::ResultParser');
  has CreationDateTime => (is => 'ro', isa => 'Str', required => 1);
  has EndDateTime => (is => 'ro', isa => 'Str');
  has LastStateChangeReason => (is => 'ro', isa => 'Str');
  has ReadyDateTime => (is => 'ro', isa => 'Str');
  has StartDateTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::EMR::JobFlowInstancesConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has Ec2KeyName => (is => 'ro', isa => 'Str');
  has Ec2SubnetId => (is => 'ro', isa => 'Str');
  has HadoopVersion => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Aws::EMR::InstanceGroupConfig]');
  has KeepJobFlowAliveWhenNoSteps => (is => 'ro', isa => 'Bool');
  has MasterInstanceType => (is => 'ro', isa => 'Str');
  has Placement => (is => 'ro', isa => 'Aws::EMR::PlacementType');
  has SlaveInstanceType => (is => 'ro', isa => 'Str');
  has TerminationProtected => (is => 'ro', isa => 'Bool');
}

package Aws::EMR::JobFlowInstancesDetail {
  use Moose;
  with ('AWS::API::ResultParser');
  has Ec2KeyName => (is => 'ro', isa => 'Str');
  has Ec2SubnetId => (is => 'ro', isa => 'Str');
  has HadoopVersion => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Aws::EMR::InstanceGroupDetail]');
  has KeepJobFlowAliveWhenNoSteps => (is => 'ro', isa => 'Bool');
  has MasterInstanceId => (is => 'ro', isa => 'Str');
  has MasterInstanceType => (is => 'ro', isa => 'Str', required => 1);
  has MasterPublicDnsName => (is => 'ro', isa => 'Str');
  has NormalizedInstanceHours => (is => 'ro', isa => 'Int');
  has Placement => (is => 'ro', isa => 'Aws::EMR::PlacementType');
  has SlaveInstanceType => (is => 'ro', isa => 'Str', required => 1);
  has TerminationProtected => (is => 'ro', isa => 'Bool');
}

package Aws::EMR::KeyValue {
  use Moose;
  with ('AWS::API::ResultParser');
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

package Aws::EMR::PlacementType {
  use Moose;
  with ('AWS::API::ResultParser');
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::EMR::ScriptBootstrapActionConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Path => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::EMR::Step {
  use Moose;
  with ('AWS::API::ResultParser');
  has ActionOnFailure => (is => 'ro', isa => 'Str');
  has Config => (is => 'ro', isa => 'Aws::EMR::HadoopStepConfig');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Aws::EMR::StepStatus');
}

package Aws::EMR::StepConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has ActionOnFailure => (is => 'ro', isa => 'Str');
  has HadoopJarStep => (is => 'ro', isa => 'Aws::EMR::HadoopJarStepConfig', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::EMR::StepDetail {
  use Moose;
  with ('AWS::API::ResultParser');
  has ExecutionStatusDetail => (is => 'ro', isa => 'Aws::EMR::StepExecutionStatusDetail', required => 1);
  has StepConfig => (is => 'ro', isa => 'Aws::EMR::StepConfig', required => 1);
}

package Aws::EMR::StepExecutionStatusDetail {
  use Moose;
  with ('AWS::API::ResultParser');
  has CreationDateTime => (is => 'ro', isa => 'Str', required => 1);
  has EndDateTime => (is => 'ro', isa => 'Str');
  has LastStateChangeReason => (is => 'ro', isa => 'Str');
  has StartDateTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::EMR::StepStateChangeReason {
  use Moose;
  with ('AWS::API::ResultParser');
  has Code => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
}

package Aws::EMR::StepStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has State => (is => 'ro', isa => 'Str');
  has StateChangeReason => (is => 'ro', isa => 'Aws::EMR::StepStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Aws::EMR::StepTimeline');
}

package Aws::EMR::StepSummary {
  use Moose;
  with ('AWS::API::ResultParser');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Aws::EMR::StepStatus');
}

package Aws::EMR::StepTimeline {
  use Moose;
  with ('AWS::API::ResultParser');
  has CreationDateTime => (is => 'ro', isa => 'Str');
  has EndDateTime => (is => 'ro', isa => 'Str');
  has StartDateTime => (is => 'ro', isa => 'Str');
}

package Aws::EMR::StringMap {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::EMR::SupportedProductConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Name => (is => 'ro', isa => 'Str');
}

package Aws::EMR::Tag {
  use Moose;
  with ('AWS::API::ResultParser');
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}



package Aws::EMR::AddInstanceGroups {
  use Moose;
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Aws::EMR::InstanceGroupConfig]', required => 1);
  has JobFlowId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddInstanceGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::AddInstanceGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EMR::AddJobFlowSteps {
  use Moose;
  has JobFlowId => (is => 'ro', isa => 'Str', required => 1);
  has Steps => (is => 'ro', isa => 'ArrayRef[Aws::EMR::StepConfig]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddJobFlowSteps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::AddJobFlowStepsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EMR::AddTags {
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EMR::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::AddTagsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EMR::DescribeCluster {
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::DescribeClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EMR::DescribeJobFlows {
  use Moose;
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has JobFlowStates => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeJobFlows');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::DescribeJobFlowsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EMR::DescribeStep {
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has StepId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStep');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::DescribeStepResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EMR::ListBootstrapActions {
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBootstrapActions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::ListBootstrapActionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EMR::ListClusters {
  use Moose;
  has ClusterStates => (is => 'ro', isa => 'ArrayRef[Str]');
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListClusters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::ListClustersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EMR::ListInstanceGroups {
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstanceGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::ListInstanceGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EMR::ListInstances {
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceGroupId => (is => 'ro', isa => 'Str');
  has InstanceGroupTypes => (is => 'ro', isa => 'ArrayRef[Str]');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::ListInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EMR::ListSteps {
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has StepStates => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSteps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::ListStepsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EMR::ModifyInstanceGroups {
  use Moose;
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Aws::EMR::InstanceGroupModifyConfig]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceGroups');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EMR::RemoveTags {
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::RemoveTagsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EMR::RunJobFlow {
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has AmiVersion => (is => 'ro', isa => 'Str');
  has BootstrapActions => (is => 'ro', isa => 'ArrayRef[Aws::EMR::BootstrapActionConfig]');
  has Instances => (is => 'ro', isa => 'Aws::EMR::JobFlowInstancesConfig', required => 1);
  has JobFlowRole => (is => 'ro', isa => 'Str');
  has LogUri => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NewSupportedProducts => (is => 'ro', isa => 'ArrayRef[Aws::EMR::SupportedProductConfig]');
  has ServiceRole => (is => 'ro', isa => 'Str');
  has Steps => (is => 'ro', isa => 'ArrayRef[Aws::EMR::StepConfig]');
  has SupportedProducts => (is => 'ro', isa => 'ArrayRef[Str]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EMR::Tag]');
  has VisibleToAllUsers => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RunJobFlow');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EMR::RunJobFlowResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EMR::SetTerminationProtection {
  use Moose;
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has TerminationProtected => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetTerminationProtection');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EMR::SetVisibleToAllUsers {
  use Moose;
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has VisibleToAllUsers => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetVisibleToAllUsers');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::EMR::TerminateJobFlows {
  use Moose;
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateJobFlows');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

package Aws::EMR::AddInstanceGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has InstanceGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has JobFlowId => (is => 'ro', isa => 'Str');

}
package Aws::EMR::AddJobFlowStepsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has StepIds => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::EMR::AddTagsResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::EMR::DescribeClusterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Aws::EMR::Cluster');

}
package Aws::EMR::DescribeJobFlowsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has JobFlows => (is => 'ro', isa => 'ArrayRef[Aws::EMR::JobFlowDetail]');

}
package Aws::EMR::DescribeStepResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Step => (is => 'ro', isa => 'Aws::EMR::Step');

}
package Aws::EMR::ListBootstrapActionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has BootstrapActions => (is => 'ro', isa => 'ArrayRef[Aws::EMR::Command]');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::EMR::ListClustersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Clusters => (is => 'ro', isa => 'ArrayRef[Aws::EMR::ClusterSummary]');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::EMR::ListInstanceGroupsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Aws::EMR::InstanceGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::EMR::ListInstancesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::EMR::Instance]');
  has Marker => (is => 'ro', isa => 'Str');

}
package Aws::EMR::ListStepsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Steps => (is => 'ro', isa => 'ArrayRef[Aws::EMR::StepSummary]');

}
package Aws::EMR::RemoveTagsResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::EMR::RunJobFlowResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has JobFlowId => (is => 'ro', isa => 'Str');

}

package Aws::EMR {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'elasticmapreduce');
  has version => (is => 'ro', isa => 'Str', default => '2009-03-31');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'ElasticMapReduce');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub AddInstanceGroups {
    my $self = shift;
    return $self->do_call('Aws::EMR::AddInstanceGroups', @_);
  }
  sub AddJobFlowSteps {
    my $self = shift;
    return $self->do_call('Aws::EMR::AddJobFlowSteps', @_);
  }
  sub AddTags {
    my $self = shift;
    return $self->do_call('Aws::EMR::AddTags', @_);
  }
  sub DescribeCluster {
    my $self = shift;
    return $self->do_call('Aws::EMR::DescribeCluster', @_);
  }
  sub DescribeJobFlows {
    my $self = shift;
    return $self->do_call('Aws::EMR::DescribeJobFlows', @_);
  }
  sub DescribeStep {
    my $self = shift;
    return $self->do_call('Aws::EMR::DescribeStep', @_);
  }
  sub ListBootstrapActions {
    my $self = shift;
    return $self->do_call('Aws::EMR::ListBootstrapActions', @_);
  }
  sub ListClusters {
    my $self = shift;
    return $self->do_call('Aws::EMR::ListClusters', @_);
  }
  sub ListInstanceGroups {
    my $self = shift;
    return $self->do_call('Aws::EMR::ListInstanceGroups', @_);
  }
  sub ListInstances {
    my $self = shift;
    return $self->do_call('Aws::EMR::ListInstances', @_);
  }
  sub ListSteps {
    my $self = shift;
    return $self->do_call('Aws::EMR::ListSteps', @_);
  }
  sub ModifyInstanceGroups {
    my $self = shift;
    return $self->do_call('Aws::EMR::ModifyInstanceGroups', @_);
  }
  sub RemoveTags {
    my $self = shift;
    return $self->do_call('Aws::EMR::RemoveTags', @_);
  }
  sub RunJobFlow {
    my $self = shift;
    return $self->do_call('Aws::EMR::RunJobFlow', @_);
  }
  sub SetTerminationProtection {
    my $self = shift;
    return $self->do_call('Aws::EMR::SetTerminationProtection', @_);
  }
  sub SetVisibleToAllUsers {
    my $self = shift;
    return $self->do_call('Aws::EMR::SetVisibleToAllUsers', @_);
  }
  sub TerminateJobFlows {
    my $self = shift;
    return $self->do_call('Aws::EMR::TerminateJobFlows', @_);
  }
}
1;
