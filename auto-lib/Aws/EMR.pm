
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::EMR::ActionOnFailure', [qw(TERMINATE_JOB_FLOW TERMINATE_CLUSTER CANCEL_AND_WAIT CONTINUE )];
enum 'Aws::EMR::ClusterState', [qw(STARTING BOOTSTRAPPING RUNNING WAITING TERMINATING TERMINATED TERMINATED_WITH_ERRORS )];
enum 'Aws::EMR::InstanceGroupState', [qw(PROVISIONING BOOTSTRAPPING RUNNING RESIZING SUSPENDED TERMINATING TERMINATED ARRESTED SHUTTING_DOWN ENDED )];
enum 'Aws::EMR::InstanceGroupType', [qw(MASTER CORE TASK )];
enum 'Aws::EMR::InstanceRoleType', [qw(MASTER CORE TASK )];
enum 'Aws::EMR::InstanceState', [qw(AWAITING_FULFILLMENT PROVISIONING BOOTSTRAPPING RUNNING TERMINATED )];
enum 'Aws::EMR::JobFlowExecutionState', [qw(STARTING BOOTSTRAPPING RUNNING WAITING SHUTTING_DOWN TERMINATED COMPLETED FAILED )];
enum 'Aws::EMR::MarketType', [qw(ON_DEMAND SPOT )];
enum 'Aws::EMR::StepState', [qw(PENDING RUNNING COMPLETED CANCELLED FAILED INTERRUPTED )];


class Aws::EMR::Application with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AdditionalInfo => (is => 'ro', isa => 'Aws::EMR::StringMap');
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Name => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
}

class Aws::EMR::BootstrapActionConfig with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ScriptBootstrapAction => (is => 'ro', isa => 'Aws::EMR::ScriptBootstrapActionConfig', required => 1);
}

class Aws::EMR::BootstrapActionDetail with (AWS::API::ResultParser, AWS::API::ToParams) {
  has BootstrapActionConfig => (is => 'ro', isa => 'Aws::EMR::BootstrapActionConfig');
}

class Aws::EMR::Cluster with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::EMR::ClusterStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has State => (is => 'ro', isa => 'Aws::EMR::ClusterState');
  has StateChangeReason => (is => 'ro', isa => 'Aws::EMR::ClusterStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Aws::EMR::ClusterTimeline');
}

class Aws::EMR::ClusterSummary with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Aws::EMR::ClusterStatus');
}

class Aws::EMR::Command with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Name => (is => 'ro', isa => 'Str');
  has ScriptPath => (is => 'ro', isa => 'Str');
}

class Aws::EMR::Ec2InstanceAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Ec2AvailabilityZone => (is => 'ro', isa => 'Str');
  has Ec2KeyName => (is => 'ro', isa => 'Str');
  has Ec2SubnetId => (is => 'ro', isa => 'Str');
  has IamInstanceProfile => (is => 'ro', isa => 'Str');
}

class Aws::EMR::HadoopJarStepConfig with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Jar => (is => 'ro', isa => 'Str', required => 1);
  has MainClass => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'ArrayRef[Aws::EMR::KeyValue]');
}

class Aws::EMR::HadoopStepConfig with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Jar => (is => 'ro', isa => 'Str');
  has MainClass => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'Aws::EMR::StringMap');
}

class Aws::EMR::Instance with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Ec2InstanceId => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has PrivateDnsName => (is => 'ro', isa => 'Str');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has PublicDnsName => (is => 'ro', isa => 'Str');
  has PublicIpAddress => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Aws::EMR::InstanceStatus');
}

class Aws::EMR::InstanceGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::EMR::InstanceGroupConfig with (AWS::API::ResultParser, AWS::API::ToParams) {
  has BidPrice => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceRole => (is => 'ro', isa => 'Aws::EMR::InstanceRoleType', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has Market => (is => 'ro', isa => 'Aws::EMR::MarketType');
  has Name => (is => 'ro', isa => 'Str');
}

class Aws::EMR::InstanceGroupModifyConfig with (AWS::API::ResultParser, AWS::API::ToParams) {
  has EC2InstanceIdsToTerminate => (is => 'ro', isa => 'ArrayRef[Str]');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has InstanceGroupId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::EMR::InstanceGroupStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has State => (is => 'ro', isa => 'Aws::EMR::InstanceGroupState');
  has StateChangeReason => (is => 'ro', isa => 'Aws::EMR::InstanceGroupStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Aws::EMR::InstanceGroupTimeline');
}

class Aws::EMR::InstanceStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has State => (is => 'ro', isa => 'Aws::EMR::InstanceState');
  has StateChangeReason => (is => 'ro', isa => 'Aws::EMR::InstanceStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Aws::EMR::InstanceTimeline');
}

class Aws::EMR::JobFlowDetail with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::EMR::JobFlowExecutionStatusDetail with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CreationDateTime => (is => 'ro', isa => 'Str', required => 1);
  has EndDateTime => (is => 'ro', isa => 'Str');
  has LastStateChangeReason => (is => 'ro', isa => 'Str');
  has ReadyDateTime => (is => 'ro', isa => 'Str');
  has StartDateTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Aws::EMR::JobFlowExecutionState', required => 1);
}

class Aws::EMR::JobFlowInstancesConfig with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::EMR::JobFlowInstancesDetail with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::EMR::PlacementType with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::EMR::ScriptBootstrapActionConfig with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Path => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::EMR::Step with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ActionOnFailure => (is => 'ro', isa => 'Aws::EMR::ActionOnFailure');
  has Config => (is => 'ro', isa => 'Aws::EMR::HadoopStepConfig');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Aws::EMR::StepStatus');
}

class Aws::EMR::StepConfig with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ActionOnFailure => (is => 'ro', isa => 'Aws::EMR::ActionOnFailure');
  has HadoopJarStep => (is => 'ro', isa => 'Aws::EMR::HadoopJarStepConfig', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::EMR::StepDetail with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ExecutionStatusDetail => (is => 'ro', isa => 'Aws::EMR::StepExecutionStatusDetail', required => 1);
  has StepConfig => (is => 'ro', isa => 'Aws::EMR::StepConfig', required => 1);
}

class Aws::EMR::StepStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has State => (is => 'ro', isa => 'Aws::EMR::StepState');
  has StateChangeReason => (is => 'ro', isa => 'Aws::EMR::StepStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Aws::EMR::StepTimeline');
}

class Aws::EMR::StepSummary with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Aws::EMR::StepStatus');
}

class Aws::EMR::SupportedProductConfig with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Name => (is => 'ro', isa => 'Str');
}

class Aws::EMR::Tag with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}



class Aws::EMR::AddInstanceGroups {
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Aws::EMR::InstanceGroupConfig]', required => 1);
  has JobFlowId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddInstanceGroups');
  has _returns => (isa => 'Aws::EMR::AddInstanceGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddInstanceGroupsResult');  
}
class Aws::EMR::AddJobFlowSteps {
  has JobFlowId => (is => 'ro', isa => 'Str', required => 1);
  has Steps => (is => 'ro', isa => 'ArrayRef[Aws::EMR::StepConfig]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddJobFlowSteps');
  has _returns => (isa => 'Aws::EMR::AddJobFlowStepsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddJobFlowStepsResult');  
}
class Aws::EMR::AddTags {
  has ResourceId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EMR::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddTags');
  has _returns => (isa => 'Aws::EMR::AddTagsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddTagsResult');  
}
class Aws::EMR::DescribeCluster {
  has ClusterId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCluster');
  has _returns => (isa => 'Aws::EMR::DescribeClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterResult');  
}
class Aws::EMR::DescribeJobFlows {
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has JobFlowStates => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeJobFlows');
  has _returns => (isa => 'Aws::EMR::DescribeJobFlowsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeJobFlowsResult');  
}
class Aws::EMR::DescribeStep {
  has ClusterId => (is => 'ro', isa => 'Str');
  has StepId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStep');
  has _returns => (isa => 'Aws::EMR::DescribeStepResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStepResult');  
}
class Aws::EMR::ListBootstrapActions {
  has ClusterId => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListBootstrapActions');
  has _returns => (isa => 'Aws::EMR::ListBootstrapActionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListBootstrapActionsResult');  
}
class Aws::EMR::ListClusters {
  has ClusterStates => (is => 'ro', isa => 'ArrayRef[Str]');
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListClusters');
  has _returns => (isa => 'Aws::EMR::ListClustersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListClustersResult');  
}
class Aws::EMR::ListInstanceGroups {
  has ClusterId => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstanceGroups');
  has _returns => (isa => 'Aws::EMR::ListInstanceGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListInstanceGroupsResult');  
}
class Aws::EMR::ListInstances {
  has ClusterId => (is => 'ro', isa => 'Str');
  has InstanceGroupId => (is => 'ro', isa => 'Str');
  has InstanceGroupTypes => (is => 'ro', isa => 'ArrayRef[Str]');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstances');
  has _returns => (isa => 'Aws::EMR::ListInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListInstancesResult');  
}
class Aws::EMR::ListSteps {
  has ClusterId => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has StepStates => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListSteps');
  has _returns => (isa => 'Aws::EMR::ListStepsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListStepsResult');  
}
class Aws::EMR::ModifyInstanceGroups {
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Aws::EMR::InstanceGroupModifyConfig]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceGroups');
  has _returns => (isa => 'Aws::EMR::ModifyInstanceGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyInstanceGroupsResult');  
}
class Aws::EMR::RemoveTags {
  has ResourceId => (is => 'ro', isa => 'Str');
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTags');
  has _returns => (isa => 'Aws::EMR::RemoveTagsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveTagsResult');  
}
class Aws::EMR::RunJobFlow {
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
class Aws::EMR::SetTerminationProtection {
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has TerminationProtected => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetTerminationProtection');
  has _returns => (isa => 'Aws::EMR::SetTerminationProtectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetTerminationProtectionResult');  
}
class Aws::EMR::SetVisibleToAllUsers {
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has VisibleToAllUsers => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetVisibleToAllUsers');
  has _returns => (isa => 'Aws::EMR::SetVisibleToAllUsersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetVisibleToAllUsersResult');  
}
class Aws::EMR::TerminateJobFlows {
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateJobFlows');
  has _returns => (isa => 'Aws::EMR::TerminateJobFlowsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'TerminateJobFlowsResult');  
}

class Aws::EMR::AddInstanceGroupsResult with AWS::API::ResultParser {
  has InstanceGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has JobFlowId => (is => 'ro', isa => 'Str');

}
class Aws::EMR::AddJobFlowStepsResult with AWS::API::ResultParser {
  has StepIds => (is => 'ro', isa => 'ArrayRef[Str]');

}
class Aws::EMR::AddTagsResult with AWS::API::ResultParser {

}
class Aws::EMR::DescribeClusterResult with AWS::API::ResultParser {
  has Cluster => (is => 'ro', isa => 'Aws::EMR::Cluster');

}
class Aws::EMR::DescribeJobFlowsResult with AWS::API::ResultParser {
  has JobFlows => (is => 'ro', isa => 'ArrayRef[Aws::EMR::JobFlowDetail]');

}
class Aws::EMR::DescribeStepResult with AWS::API::ResultParser {
  has Step => (is => 'ro', isa => 'Aws::EMR::Step');

}
class Aws::EMR::ListBootstrapActionsResult with AWS::API::ResultParser {
  has BootstrapActions => (is => 'ro', isa => 'ArrayRef[Aws::EMR::Command]');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::EMR::ListClustersResult with AWS::API::ResultParser {
  has Clusters => (is => 'ro', isa => 'ArrayRef[Aws::EMR::ClusterSummary]');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::EMR::ListInstanceGroupsResult with AWS::API::ResultParser {
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Aws::EMR::InstanceGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::EMR::ListInstancesResult with AWS::API::ResultParser {
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::EMR::Instance]');
  has Marker => (is => 'ro', isa => 'Str');

}
class Aws::EMR::ListStepsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has Steps => (is => 'ro', isa => 'ArrayRef[Aws::EMR::StepSummary]');

}
class Aws::EMR::RemoveTagsResult with AWS::API::ResultParser {

}
class Aws::EMR::RunJobFlowResult with AWS::API::ResultParser {
  has JobFlowId => (is => 'ro', isa => 'Str');

}

class Aws::EMR with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::JsonCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'elasticmapreduce');
  has version => (is => 'ro', isa => 'Str', default => '2009-03-31');
  
  method AddInstanceGroups (%args) {
    my $call = Aws::EMR::AddInstanceGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::AddInstanceGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method AddJobFlowSteps (%args) {
    my $call = Aws::EMR::AddJobFlowSteps->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::AddJobFlowStepsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method AddTags (%args) {
    my $call = Aws::EMR::AddTags->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::AddTagsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeCluster (%args) {
    my $call = Aws::EMR::DescribeCluster->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::DescribeClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeJobFlows (%args) {
    my $call = Aws::EMR::DescribeJobFlows->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::DescribeJobFlowsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeStep (%args) {
    my $call = Aws::EMR::DescribeStep->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::DescribeStepResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListBootstrapActions (%args) {
    my $call = Aws::EMR::ListBootstrapActions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::ListBootstrapActionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListClusters (%args) {
    my $call = Aws::EMR::ListClusters->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::ListClustersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListInstanceGroups (%args) {
    my $call = Aws::EMR::ListInstanceGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::ListInstanceGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListInstances (%args) {
    my $call = Aws::EMR::ListInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::ListInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListSteps (%args) {
    my $call = Aws::EMR::ListSteps->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::ListStepsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifyInstanceGroups (%args) {
    my $call = Aws::EMR::ModifyInstanceGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RemoveTags (%args) {
    my $call = Aws::EMR::RemoveTags->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::RemoveTagsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RunJobFlow (%args) {
    my $call = Aws::EMR::RunJobFlow->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::EMR::RunJobFlowResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SetTerminationProtection (%args) {
    my $call = Aws::EMR::SetTerminationProtection->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SetVisibleToAllUsers (%args) {
    my $call = Aws::EMR::SetVisibleToAllUsers->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method TerminateJobFlows (%args) {
    my $call = Aws::EMR::TerminateJobFlows->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
}
