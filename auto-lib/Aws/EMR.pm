
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::EMR::ActionOnFailure', ['TERMINATE_JOB_FLOW','TERMINATE_CLUSTER','CANCEL_AND_WAIT','CONTINUE',];
enum 'Aws::EMR::ClusterState', ['STARTING','BOOTSTRAPPING','RUNNING','WAITING','TERMINATING','TERMINATED','TERMINATED_WITH_ERRORS',];
enum 'Aws::EMR::ClusterStateChangeReasonCode', ['INTERNAL_ERROR','VALIDATION_ERROR','INSTANCE_FAILURE','BOOTSTRAP_FAILURE','USER_REQUEST','STEP_FAILURE','ALL_STEPS_COMPLETED',];
enum 'Aws::EMR::InstanceGroupState', ['PROVISIONING','BOOTSTRAPPING','RUNNING','RESIZING','SUSPENDED','TERMINATING','TERMINATED','ARRESTED','SHUTTING_DOWN','ENDED',];
enum 'Aws::EMR::InstanceGroupStateChangeReasonCode', ['INTERNAL_ERROR','VALIDATION_ERROR','INSTANCE_FAILURE','CLUSTER_TERMINATED',];
enum 'Aws::EMR::InstanceGroupType', ['MASTER','CORE','TASK',];
enum 'Aws::EMR::InstanceRoleType', ['MASTER','CORE','TASK',];
enum 'Aws::EMR::InstanceState', ['AWAITING_FULFILLMENT','PROVISIONING','BOOTSTRAPPING','RUNNING','TERMINATED',];
enum 'Aws::EMR::InstanceStateChangeReasonCode', ['INTERNAL_ERROR','VALIDATION_ERROR','INSTANCE_FAILURE','BOOTSTRAP_FAILURE','CLUSTER_TERMINATED',];
enum 'Aws::EMR::JobFlowExecutionState', ['STARTING','BOOTSTRAPPING','RUNNING','WAITING','SHUTTING_DOWN','TERMINATED','COMPLETED','FAILED',];
enum 'Aws::EMR::MarketType', ['ON_DEMAND','SPOT',];
enum 'Aws::EMR::StepExecutionState', ['PENDING','RUNNING','CONTINUE','COMPLETED','CANCELLED','FAILED','INTERRUPTED',];
enum 'Aws::EMR::StepState', ['PENDING','RUNNING','COMPLETED','CANCELLED','FAILED','INTERRUPTED',];
enum 'Aws::EMR::StepStateChangeReasonCode', ['NONE',];


package Aws::EMR::Application {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AdditionalInfo => (is => 'ro', isa => 'Aws::EMR::StringMap');
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Name => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
}

package Aws::EMR::BootstrapActionConfig {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ScriptBootstrapAction => (is => 'ro', isa => 'Aws::EMR::ScriptBootstrapActionConfig', required => 1);
}

package Aws::EMR::BootstrapActionDetail {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has BootstrapActionConfig => (is => 'ro', isa => 'Aws::EMR::BootstrapActionConfig');
}

package Aws::EMR::Cluster {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Applications => (is => 'ro', isa => 'ArrayRef[Aws::EMR::Application]');
  has AutoTerminate => (is => 'ro', isa => 'Str');
  has Ec2InstanceAttributes => (is => 'ro', isa => 'Aws::EMR::Ec2InstanceAttributes');
  has Id => (is => 'ro', isa => 'Str');
  has LogUri => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RequestedAmiVersion => (is => 'ro', isa => 'Str');
  has RunningAmiVersion => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Aws::EMR::ClusterStatus');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EMR::Tag]');
  has TerminationProtected => (is => 'ro', isa => 'Str');
  has VisibleToAllUsers => (is => 'ro', isa => 'Str');
}

package Aws::EMR::ClusterStateChangeReason {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Code => (is => 'ro', isa => 'Aws::EMR::ClusterStateChangeReasonCode');
  has Message => (is => 'ro', isa => 'Str');
}

package Aws::EMR::ClusterStatus {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has State => (is => 'ro', isa => 'Aws::EMR::ClusterState');
  has StateChangeReason => (is => 'ro', isa => 'Aws::EMR::ClusterStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Aws::EMR::ClusterTimeline');
}

package Aws::EMR::ClusterSummary {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Aws::EMR::ClusterStatus');
}

package Aws::EMR::ClusterTimeline {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has CreationDateTime => (is => 'ro', isa => 'Str');
  has EndDateTime => (is => 'ro', isa => 'Str');
  has ReadyDateTime => (is => 'ro', isa => 'Str');
}

package Aws::EMR::Command {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Name => (is => 'ro', isa => 'Str');
  has ScriptPath => (is => 'ro', isa => 'Str');
}

package Aws::EMR::Ec2InstanceAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Ec2AvailabilityZone => (is => 'ro', isa => 'Str');
  has Ec2KeyName => (is => 'ro', isa => 'Str');
  has Ec2SubnetId => (is => 'ro', isa => 'Str');
  has IamInstanceProfile => (is => 'ro', isa => 'Str');
}

package Aws::EMR::HadoopJarStepConfig {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Jar => (is => 'ro', isa => 'Str', required => 1);
  has MainClass => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'ArrayRef[Aws::EMR::KeyValue]');
}

package Aws::EMR::HadoopStepConfig {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Jar => (is => 'ro', isa => 'Str');
  has MainClass => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'Aws::EMR::StringMap');
}

package Aws::EMR::Instance {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has BidPrice => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has InstanceGroupType => (is => 'ro', isa => 'Aws::EMR::InstanceGroupType');
  has InstanceType => (is => 'ro', isa => 'Str');
  has Market => (is => 'ro', isa => 'Aws::EMR::MarketType');
  has Name => (is => 'ro', isa => 'Str');
  has RequestedInstanceCount => (is => 'ro', isa => 'Int');
  has RunningInstanceCount => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Aws::EMR::InstanceGroupStatus');
}

package Aws::EMR::InstanceGroupConfig {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has BidPrice => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceRole => (is => 'ro', isa => 'Aws::EMR::InstanceRoleType', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has Market => (is => 'ro', isa => 'Aws::EMR::MarketType');
  has Name => (is => 'ro', isa => 'Str');
}

package Aws::EMR::InstanceGroupDetail {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has BidPrice => (is => 'ro', isa => 'Str');
  has CreationDateTime => (is => 'ro', isa => 'Str', required => 1);
  has EndDateTime => (is => 'ro', isa => 'Str');
  has InstanceGroupId => (is => 'ro', isa => 'Str');
  has InstanceRequestCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceRole => (is => 'ro', isa => 'Aws::EMR::InstanceRoleType', required => 1);
  has InstanceRunningCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has LastStateChangeReason => (is => 'ro', isa => 'Str');
  has Market => (is => 'ro', isa => 'Aws::EMR::MarketType', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has ReadyDateTime => (is => 'ro', isa => 'Str');
  has StartDateTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Aws::EMR::InstanceGroupState', required => 1);
}

package Aws::EMR::InstanceGroupModifyConfig {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has EC2InstanceIdsToTerminate => (is => 'ro', isa => 'ArrayRef[Str]');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has InstanceGroupId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::EMR::InstanceGroupStateChangeReason {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Code => (is => 'ro', isa => 'Aws::EMR::InstanceGroupStateChangeReasonCode');
  has Message => (is => 'ro', isa => 'Str');
}

package Aws::EMR::InstanceGroupStatus {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has State => (is => 'ro', isa => 'Aws::EMR::InstanceGroupState');
  has StateChangeReason => (is => 'ro', isa => 'Aws::EMR::InstanceGroupStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Aws::EMR::InstanceGroupTimeline');
}

package Aws::EMR::InstanceGroupTimeline {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has CreationDateTime => (is => 'ro', isa => 'Str');
  has EndDateTime => (is => 'ro', isa => 'Str');
  has ReadyDateTime => (is => 'ro', isa => 'Str');
}

package Aws::EMR::InstanceStateChangeReason {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Code => (is => 'ro', isa => 'Aws::EMR::InstanceStateChangeReasonCode');
  has Message => (is => 'ro', isa => 'Str');
}

package Aws::EMR::InstanceStatus {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has State => (is => 'ro', isa => 'Aws::EMR::InstanceState');
  has StateChangeReason => (is => 'ro', isa => 'Aws::EMR::InstanceStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Aws::EMR::InstanceTimeline');
}

package Aws::EMR::InstanceTimeline {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has CreationDateTime => (is => 'ro', isa => 'Str');
  has EndDateTime => (is => 'ro', isa => 'Str');
  has ReadyDateTime => (is => 'ro', isa => 'Str');
}

package Aws::EMR::JobFlowDetail {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AmiVersion => (is => 'ro', isa => 'Str');
  has BootstrapActions => (is => 'ro', isa => 'ArrayRef[Aws::EMR::BootstrapActionDetail]');
  has ExecutionStatusDetail => (is => 'ro', isa => 'Aws::EMR::JobFlowExecutionStatusDetail', required => 1);
  has Instances => (is => 'ro', isa => 'Aws::EMR::JobFlowInstancesDetail', required => 1);
  has JobFlowId => (is => 'ro', isa => 'Str', required => 1);
  has JobFlowRole => (is => 'ro', isa => 'Str');
  has LogUri => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Steps => (is => 'ro', isa => 'ArrayRef[Aws::EMR::StepDetail]');
  has SupportedProducts => (is => 'ro', isa => 'ArrayRef[Str]');
  has VisibleToAllUsers => (is => 'ro', isa => 'Str');
}

package Aws::EMR::JobFlowExecutionStatusDetail {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has CreationDateTime => (is => 'ro', isa => 'Str', required => 1);
  has EndDateTime => (is => 'ro', isa => 'Str');
  has LastStateChangeReason => (is => 'ro', isa => 'Str');
  has ReadyDateTime => (is => 'ro', isa => 'Str');
  has StartDateTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Aws::EMR::JobFlowExecutionState', required => 1);
}

package Aws::EMR::JobFlowInstancesConfig {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Ec2KeyName => (is => 'ro', isa => 'Str');
  has Ec2SubnetId => (is => 'ro', isa => 'Str');
  has HadoopVersion => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Aws::EMR::InstanceGroupConfig]');
  has KeepJobFlowAliveWhenNoSteps => (is => 'ro', isa => 'Str');
  has MasterInstanceType => (is => 'ro', isa => 'Str');
  has Placement => (is => 'ro', isa => 'Aws::EMR::PlacementType');
  has SlaveInstanceType => (is => 'ro', isa => 'Str');
  has TerminationProtected => (is => 'ro', isa => 'Str');
}

package Aws::EMR::JobFlowInstancesDetail {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Ec2KeyName => (is => 'ro', isa => 'Str');
  has Ec2SubnetId => (is => 'ro', isa => 'Str');
  has HadoopVersion => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Aws::EMR::InstanceGroupDetail]');
  has KeepJobFlowAliveWhenNoSteps => (is => 'ro', isa => 'Str');
  has MasterInstanceId => (is => 'ro', isa => 'Str');
  has MasterInstanceType => (is => 'ro', isa => 'Str', required => 1);
  has MasterPublicDnsName => (is => 'ro', isa => 'Str');
  has NormalizedInstanceHours => (is => 'ro', isa => 'Int');
  has Placement => (is => 'ro', isa => 'Aws::EMR::PlacementType');
  has SlaveInstanceType => (is => 'ro', isa => 'Str', required => 1);
  has TerminationProtected => (is => 'ro', isa => 'Str');
}

package Aws::EMR::KeyValue {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

package Aws::EMR::PlacementType {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::EMR::ScriptBootstrapActionConfig {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Path => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::EMR::Step {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has ActionOnFailure => (is => 'ro', isa => 'Aws::EMR::ActionOnFailure');
  has Config => (is => 'ro', isa => 'Aws::EMR::HadoopStepConfig');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Aws::EMR::StepStatus');
}

package Aws::EMR::StepConfig {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has ActionOnFailure => (is => 'ro', isa => 'Aws::EMR::ActionOnFailure');
  has HadoopJarStep => (is => 'ro', isa => 'Aws::EMR::HadoopJarStepConfig', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::EMR::StepDetail {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has ExecutionStatusDetail => (is => 'ro', isa => 'Aws::EMR::StepExecutionStatusDetail', required => 1);
  has StepConfig => (is => 'ro', isa => 'Aws::EMR::StepConfig', required => 1);
}

package Aws::EMR::StepExecutionStatusDetail {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has CreationDateTime => (is => 'ro', isa => 'Str', required => 1);
  has EndDateTime => (is => 'ro', isa => 'Str');
  has LastStateChangeReason => (is => 'ro', isa => 'Str');
  has StartDateTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Aws::EMR::StepExecutionState', required => 1);
}

package Aws::EMR::StepStateChangeReason {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Code => (is => 'ro', isa => 'Aws::EMR::StepStateChangeReasonCode');
  has Message => (is => 'ro', isa => 'Str');
}

package Aws::EMR::StepStatus {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has State => (is => 'ro', isa => 'Aws::EMR::StepState');
  has StateChangeReason => (is => 'ro', isa => 'Aws::EMR::StepStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Aws::EMR::StepTimeline');
}

package Aws::EMR::StepSummary {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Aws::EMR::StepStatus');
}

package Aws::EMR::StepTimeline {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Name => (is => 'ro', isa => 'Str');
}

package Aws::EMR::Tag {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}



package Aws::EMR::AddInstanceGroups {
  use Moose;
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Aws::EMR::InstanceGroupConfig]', required => 1);
  has JobFlowId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddInstanceGroups');
  has _returns => (isa => 'Aws::EMR::AddInstanceGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddInstanceGroupsResult');  
}
package Aws::EMR::AddJobFlowSteps {
  use Moose;
  has JobFlowId => (is => 'ro', isa => 'Str', required => 1);
  has Steps => (is => 'ro', isa => 'ArrayRef[Aws::EMR::StepConfig]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddJobFlowSteps');
  has _returns => (isa => 'Aws::EMR::AddJobFlowStepsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddJobFlowStepsResult');  
}
package Aws::EMR::AddTags {
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EMR::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddTags');
  has _returns => (isa => 'Aws::EMR::AddTagsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddTagsResult');  
}
package Aws::EMR::DescribeCluster {
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCluster');
  has _returns => (isa => 'Aws::EMR::DescribeClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterResult');  
}
package Aws::EMR::DescribeJobFlows {
  use Moose;
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has JobFlowStates => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeJobFlows');
  has _returns => (isa => 'Aws::EMR::DescribeJobFlowsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeJobFlowsResult');  
}
package Aws::EMR::DescribeStep {
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str');
  has StepId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStep');
  has _returns => (isa => 'Aws::EMR::DescribeStepResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStepResult');  
}
package Aws::EMR::ListBootstrapActions {
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListBootstrapActions');
  has _returns => (isa => 'Aws::EMR::ListBootstrapActionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListBootstrapActionsResult');  
}
package Aws::EMR::ListClusters {
  use Moose;
  has ClusterStates => (is => 'ro', isa => 'ArrayRef[Str]');
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListClusters');
  has _returns => (isa => 'Aws::EMR::ListClustersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListClustersResult');  
}
package Aws::EMR::ListInstanceGroups {
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstanceGroups');
  has _returns => (isa => 'Aws::EMR::ListInstanceGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListInstanceGroupsResult');  
}
package Aws::EMR::ListInstances {
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str');
  has InstanceGroupId => (is => 'ro', isa => 'Str');
  has InstanceGroupTypes => (is => 'ro', isa => 'ArrayRef[Str]');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstances');
  has _returns => (isa => 'Aws::EMR::ListInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListInstancesResult');  
}
package Aws::EMR::ListSteps {
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has StepStates => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListSteps');
  has _returns => (isa => 'Aws::EMR::ListStepsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListStepsResult');  
}
package Aws::EMR::ModifyInstanceGroups {
  use Moose;
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Aws::EMR::InstanceGroupModifyConfig]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceGroups');
  has _returns => (isa => 'Aws::EMR::ModifyInstanceGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyInstanceGroupsResult');  
}
package Aws::EMR::RemoveTags {
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str');
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTags');
  has _returns => (isa => 'Aws::EMR::RemoveTagsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveTagsResult');  
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
  has Steps => (is => 'ro', isa => 'ArrayRef[Aws::EMR::StepConfig]');
  has SupportedProducts => (is => 'ro', isa => 'ArrayRef[Str]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EMR::Tag]');
  has VisibleToAllUsers => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RunJobFlow');
  has _returns => (isa => 'Aws::EMR::RunJobFlowResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RunJobFlowResult');  
}
package Aws::EMR::SetTerminationProtection {
  use Moose;
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has TerminationProtected => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetTerminationProtection');
  has _returns => (isa => 'Aws::EMR::SetTerminationProtectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetTerminationProtectionResult');  
}
package Aws::EMR::SetVisibleToAllUsers {
  use Moose;
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has VisibleToAllUsers => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetVisibleToAllUsers');
  has _returns => (isa => 'Aws::EMR::SetVisibleToAllUsersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetVisibleToAllUsersResult');  
}
package Aws::EMR::TerminateJobFlows {
  use Moose;
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateJobFlows');
  has _returns => (isa => 'Aws::EMR::TerminateJobFlowsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'TerminateJobFlowsResult');  
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
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::JsonCaller', 'Net::AWS::JsonResponse');
  
  sub AddInstanceGroups {
    my $self = shift;
    my $call = new_with_coercions('Aws::EMR::AddInstanceGroups', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::AddInstanceGroupsResult->from_result($result);return $o_result;
  }
  sub AddJobFlowSteps {
    my $self = shift;
    my $call = new_with_coercions('Aws::EMR::AddJobFlowSteps', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::AddJobFlowStepsResult->from_result($result);return $o_result;
  }
  sub AddTags {
    my $self = shift;
    my $call = new_with_coercions('Aws::EMR::AddTags', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::AddTagsResult->from_result($result);return $o_result;
  }
  sub DescribeCluster {
    my $self = shift;
    my $call = new_with_coercions('Aws::EMR::DescribeCluster', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::DescribeClusterResult->from_result($result);return $o_result;
  }
  sub DescribeJobFlows {
    my $self = shift;
    my $call = new_with_coercions('Aws::EMR::DescribeJobFlows', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::DescribeJobFlowsResult->from_result($result);return $o_result;
  }
  sub DescribeStep {
    my $self = shift;
    my $call = new_with_coercions('Aws::EMR::DescribeStep', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::DescribeStepResult->from_result($result);return $o_result;
  }
  sub ListBootstrapActions {
    my $self = shift;
    my $call = new_with_coercions('Aws::EMR::ListBootstrapActions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::ListBootstrapActionsResult->from_result($result);return $o_result;
  }
  sub ListClusters {
    my $self = shift;
    my $call = new_with_coercions('Aws::EMR::ListClusters', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::ListClustersResult->from_result($result);return $o_result;
  }
  sub ListInstanceGroups {
    my $self = shift;
    my $call = new_with_coercions('Aws::EMR::ListInstanceGroups', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::ListInstanceGroupsResult->from_result($result);return $o_result;
  }
  sub ListInstances {
    my $self = shift;
    my $call = new_with_coercions('Aws::EMR::ListInstances', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::ListInstancesResult->from_result($result);return $o_result;
  }
  sub ListSteps {
    my $self = shift;
    my $call = new_with_coercions('Aws::EMR::ListSteps', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::ListStepsResult->from_result($result);return $o_result;
  }
  sub ModifyInstanceGroups {
    my $self = shift;
    my $call = new_with_coercions('Aws::EMR::ModifyInstanceGroups', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub RemoveTags {
    my $self = shift;
    my $call = new_with_coercions('Aws::EMR::RemoveTags', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::RemoveTagsResult->from_result($result);return $o_result;
  }
  sub RunJobFlow {
    my $self = shift;
    my $call = new_with_coercions('Aws::EMR::RunJobFlow', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::RunJobFlowResult->from_result($result);return $o_result;
  }
  sub SetTerminationProtection {
    my $self = shift;
    my $call = new_with_coercions('Aws::EMR::SetTerminationProtection', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub SetVisibleToAllUsers {
    my $self = shift;
    my $call = new_with_coercions('Aws::EMR::SetVisibleToAllUsers', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub TerminateJobFlows {
    my $self = shift;
    my $call = new_with_coercions('Aws::EMR::TerminateJobFlows', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
}
