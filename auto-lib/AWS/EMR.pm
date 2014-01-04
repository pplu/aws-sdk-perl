
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'AWS::EMR::ActionOnFailure', [qw(TERMINATE_JOB_FLOW TERMINATE_CLUSTER CANCEL_AND_WAIT CONTINUE )];
enum 'AWS::EMR::ClusterState', [qw(STARTING BOOTSTRAPPING RUNNING WAITING TERMINATING TERMINATED TERMINATED_WITH_ERRORS )];
enum 'AWS::EMR::InstanceGroupState', [qw(PROVISIONING BOOTSTRAPPING RUNNING RESIZING SUSPENDED TERMINATING TERMINATED ARRESTED SHUTTING_DOWN ENDED )];
enum 'AWS::EMR::InstanceGroupType', [qw(MASTER CORE TASK )];
enum 'AWS::EMR::InstanceRoleType', [qw(MASTER CORE TASK )];
enum 'AWS::EMR::InstanceState', [qw(AWAITING_FULFILLMENT PROVISIONING BOOTSTRAPPING RUNNING TERMINATED )];
enum 'AWS::EMR::JobFlowExecutionState', [qw(STARTING BOOTSTRAPPING RUNNING WAITING SHUTTING_DOWN TERMINATED COMPLETED FAILED )];
enum 'AWS::EMR::MarketType', [qw(ON_DEMAND SPOT )];
enum 'AWS::EMR::StepState', [qw(PENDING RUNNING COMPLETED CANCELLED FAILED INTERRUPTED )];


class AWS::EMR::Application with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AdditionalInfo => (is => 'ro', isa => 'AWS::EMR::StringMap');
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Name => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
}

class AWS::EMR::BootstrapActionConfig with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ScriptBootstrapAction => (is => 'ro', isa => 'AWS::EMR::ScriptBootstrapActionConfig', required => 1);
}

class AWS::EMR::BootstrapActionDetail with (AWS::API::ResultParser, AWS::API::ToParams) {
  has BootstrapActionConfig => (is => 'ro', isa => 'AWS::EMR::BootstrapActionConfig');
}

class AWS::EMR::Cluster with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Applications => (is => 'ro', isa => 'ArrayRef[AWS::EMR::Application]');
  has AutoTerminate => (is => 'ro', isa => 'Str');
  has Ec2InstanceAttributes => (is => 'ro', isa => 'AWS::EMR::Ec2InstanceAttributes');
  has Id => (is => 'ro', isa => 'Str');
  has LogUri => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RequestedAmiVersion => (is => 'ro', isa => 'Str');
  has RunningAmiVersion => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'AWS::EMR::ClusterStatus');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EMR::Tag]');
  has TerminationProtected => (is => 'ro', isa => 'Str');
  has VisibleToAllUsers => (is => 'ro', isa => 'Str');
}

class AWS::EMR::ClusterStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has State => (is => 'ro', isa => 'AWS::EMR::ClusterState');
  has StateChangeReason => (is => 'ro', isa => 'AWS::EMR::ClusterStateChangeReason');
  has Timeline => (is => 'ro', isa => 'AWS::EMR::ClusterTimeline');
}

class AWS::EMR::ClusterSummary with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'AWS::EMR::ClusterStatus');
}

class AWS::EMR::Command with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Name => (is => 'ro', isa => 'Str');
  has ScriptPath => (is => 'ro', isa => 'Str');
}

class AWS::EMR::Ec2InstanceAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Ec2AvailabilityZone => (is => 'ro', isa => 'Str');
  has Ec2KeyName => (is => 'ro', isa => 'Str');
  has Ec2SubnetId => (is => 'ro', isa => 'Str');
  has IamInstanceProfile => (is => 'ro', isa => 'Str');
}

class AWS::EMR::HadoopJarStepConfig with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Jar => (is => 'ro', isa => 'Str', required => 1);
  has MainClass => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'ArrayRef[AWS::EMR::KeyValue]');
}

class AWS::EMR::HadoopStepConfig with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Jar => (is => 'ro', isa => 'Str');
  has MainClass => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'AWS::EMR::StringMap');
}

class AWS::EMR::Instance with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Ec2InstanceId => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has PrivateDnsName => (is => 'ro', isa => 'Str');
  has PrivateIpAddress => (is => 'ro', isa => 'Str');
  has PublicDnsName => (is => 'ro', isa => 'Str');
  has PublicIpAddress => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'AWS::EMR::InstanceStatus');
}

class AWS::EMR::InstanceGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has BidPrice => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has InstanceGroupType => (is => 'ro', isa => 'AWS::EMR::InstanceGroupType');
  has InstanceType => (is => 'ro', isa => 'Str');
  has Market => (is => 'ro', isa => 'AWS::EMR::MarketType');
  has Name => (is => 'ro', isa => 'Str');
  has RequestedInstanceCount => (is => 'ro', isa => 'Int');
  has RunningInstanceCount => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'AWS::EMR::InstanceGroupStatus');
}

class AWS::EMR::InstanceGroupConfig with (AWS::API::ResultParser, AWS::API::ToParams) {
  has BidPrice => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceRole => (is => 'ro', isa => 'AWS::EMR::InstanceRoleType', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has Market => (is => 'ro', isa => 'AWS::EMR::MarketType');
  has Name => (is => 'ro', isa => 'Str');
}

class AWS::EMR::InstanceGroupModifyConfig with (AWS::API::ResultParser, AWS::API::ToParams) {
  has EC2InstanceIdsToTerminate => (is => 'ro', isa => 'ArrayRef[Str]');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has InstanceGroupId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::EMR::InstanceGroupStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has State => (is => 'ro', isa => 'AWS::EMR::InstanceGroupState');
  has StateChangeReason => (is => 'ro', isa => 'AWS::EMR::InstanceGroupStateChangeReason');
  has Timeline => (is => 'ro', isa => 'AWS::EMR::InstanceGroupTimeline');
}

class AWS::EMR::InstanceStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has State => (is => 'ro', isa => 'AWS::EMR::InstanceState');
  has StateChangeReason => (is => 'ro', isa => 'AWS::EMR::InstanceStateChangeReason');
  has Timeline => (is => 'ro', isa => 'AWS::EMR::InstanceTimeline');
}

class AWS::EMR::JobFlowDetail with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AmiVersion => (is => 'ro', isa => 'Str');
  has BootstrapActions => (is => 'ro', isa => 'ArrayRef[AWS::EMR::BootstrapActionDetail]');
  has ExecutionStatusDetail => (is => 'ro', isa => 'AWS::EMR::JobFlowExecutionStatusDetail', required => 1);
  has Instances => (is => 'ro', isa => 'AWS::EMR::JobFlowInstancesDetail', required => 1);
  has JobFlowId => (is => 'ro', isa => 'Str', required => 1);
  has JobFlowRole => (is => 'ro', isa => 'Str');
  has LogUri => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Steps => (is => 'ro', isa => 'ArrayRef[AWS::EMR::StepDetail]');
  has SupportedProducts => (is => 'ro', isa => 'ArrayRef[Str]');
  has VisibleToAllUsers => (is => 'ro', isa => 'Str');
}

class AWS::EMR::JobFlowExecutionStatusDetail with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CreationDateTime => (is => 'ro', isa => 'Str', required => 1);
  has EndDateTime => (is => 'ro', isa => 'Str');
  has LastStateChangeReason => (is => 'ro', isa => 'Str');
  has ReadyDateTime => (is => 'ro', isa => 'Str');
  has StartDateTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'AWS::EMR::JobFlowExecutionState', required => 1);
}

class AWS::EMR::JobFlowInstancesConfig with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Ec2KeyName => (is => 'ro', isa => 'Str');
  has Ec2SubnetId => (is => 'ro', isa => 'Str');
  has HadoopVersion => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[AWS::EMR::InstanceGroupConfig]');
  has KeepJobFlowAliveWhenNoSteps => (is => 'ro', isa => 'Str');
  has MasterInstanceType => (is => 'ro', isa => 'Str');
  has Placement => (is => 'ro', isa => 'AWS::EMR::PlacementType');
  has SlaveInstanceType => (is => 'ro', isa => 'Str');
  has TerminationProtected => (is => 'ro', isa => 'Str');
}

class AWS::EMR::JobFlowInstancesDetail with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Ec2KeyName => (is => 'ro', isa => 'Str');
  has Ec2SubnetId => (is => 'ro', isa => 'Str');
  has HadoopVersion => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[AWS::EMR::InstanceGroupDetail]');
  has KeepJobFlowAliveWhenNoSteps => (is => 'ro', isa => 'Str');
  has MasterInstanceId => (is => 'ro', isa => 'Str');
  has MasterInstanceType => (is => 'ro', isa => 'Str', required => 1);
  has MasterPublicDnsName => (is => 'ro', isa => 'Str');
  has NormalizedInstanceHours => (is => 'ro', isa => 'Int');
  has Placement => (is => 'ro', isa => 'AWS::EMR::PlacementType');
  has SlaveInstanceType => (is => 'ro', isa => 'Str', required => 1);
  has TerminationProtected => (is => 'ro', isa => 'Str');
}

class AWS::EMR::PlacementType with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::EMR::ScriptBootstrapActionConfig with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Path => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::EMR::Step with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ActionOnFailure => (is => 'ro', isa => 'AWS::EMR::ActionOnFailure');
  has Config => (is => 'ro', isa => 'AWS::EMR::HadoopStepConfig');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'AWS::EMR::StepStatus');
}

class AWS::EMR::StepConfig with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ActionOnFailure => (is => 'ro', isa => 'AWS::EMR::ActionOnFailure');
  has HadoopJarStep => (is => 'ro', isa => 'AWS::EMR::HadoopJarStepConfig', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::EMR::StepDetail with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ExecutionStatusDetail => (is => 'ro', isa => 'AWS::EMR::StepExecutionStatusDetail', required => 1);
  has StepConfig => (is => 'ro', isa => 'AWS::EMR::StepConfig', required => 1);
}

class AWS::EMR::StepStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has State => (is => 'ro', isa => 'AWS::EMR::StepState');
  has StateChangeReason => (is => 'ro', isa => 'AWS::EMR::StepStateChangeReason');
  has Timeline => (is => 'ro', isa => 'AWS::EMR::StepTimeline');
}

class AWS::EMR::StepSummary with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'AWS::EMR::StepStatus');
}

class AWS::EMR::SupportedProductConfig with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Name => (is => 'ro', isa => 'Str');
}

class AWS::EMR::Tag with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}



class AWS::EMR::AddInstanceGroups {
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[AWS::EMR::InstanceGroupConfig]', required => 1);
  has JobFlowId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddInstanceGroups');
  has _returns => (isa => 'AWS::EMR::AddInstanceGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddInstanceGroupsResult');  
}
class AWS::EMR::AddJobFlowSteps {
  has JobFlowId => (is => 'ro', isa => 'Str', required => 1);
  has Steps => (is => 'ro', isa => 'ArrayRef[AWS::EMR::StepConfig]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddJobFlowSteps');
  has _returns => (isa => 'AWS::EMR::AddJobFlowStepsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddJobFlowStepsResult');  
}
class AWS::EMR::AddTags {
  has ResourceId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EMR::Tag]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddTags');
  has _returns => (isa => 'AWS::EMR::AddTagsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddTagsResult');  
}
class AWS::EMR::DescribeCluster {
  has ClusterId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCluster');
  has _returns => (isa => 'AWS::EMR::DescribeClusterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeClusterResult');  
}
class AWS::EMR::DescribeJobFlows {
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has JobFlowStates => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeJobFlows');
  has _returns => (isa => 'AWS::EMR::DescribeJobFlowsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeJobFlowsResult');  
}
class AWS::EMR::DescribeStep {
  has ClusterId => (is => 'ro', isa => 'Str');
  has StepId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStep');
  has _returns => (isa => 'AWS::EMR::DescribeStepResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStepResult');  
}
class AWS::EMR::ListBootstrapActions {
  has ClusterId => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListBootstrapActions');
  has _returns => (isa => 'AWS::EMR::ListBootstrapActionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListBootstrapActionsResult');  
}
class AWS::EMR::ListClusters {
  has ClusterStates => (is => 'ro', isa => 'ArrayRef[Str]');
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListClusters');
  has _returns => (isa => 'AWS::EMR::ListClustersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListClustersResult');  
}
class AWS::EMR::ListInstanceGroups {
  has ClusterId => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstanceGroups');
  has _returns => (isa => 'AWS::EMR::ListInstanceGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListInstanceGroupsResult');  
}
class AWS::EMR::ListInstances {
  has ClusterId => (is => 'ro', isa => 'Str');
  has InstanceGroupId => (is => 'ro', isa => 'Str');
  has InstanceGroupTypes => (is => 'ro', isa => 'ArrayRef[Str]');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstances');
  has _returns => (isa => 'AWS::EMR::ListInstancesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListInstancesResult');  
}
class AWS::EMR::ListSteps {
  has ClusterId => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has StepStates => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListSteps');
  has _returns => (isa => 'AWS::EMR::ListStepsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListStepsResult');  
}
class AWS::EMR::ModifyInstanceGroups {
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[AWS::EMR::InstanceGroupModifyConfig]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceGroups');
  has _returns => (isa => 'AWS::EMR::ModifyInstanceGroupsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyInstanceGroupsResult');  
}
class AWS::EMR::RemoveTags {
  has ResourceId => (is => 'ro', isa => 'Str');
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTags');
  has _returns => (isa => 'AWS::EMR::RemoveTagsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveTagsResult');  
}
class AWS::EMR::RunJobFlow {
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has AmiVersion => (is => 'ro', isa => 'Str');
  has BootstrapActions => (is => 'ro', isa => 'ArrayRef[AWS::EMR::BootstrapActionConfig]');
  has Instances => (is => 'ro', isa => 'AWS::EMR::JobFlowInstancesConfig', required => 1);
  has JobFlowRole => (is => 'ro', isa => 'Str');
  has LogUri => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NewSupportedProducts => (is => 'ro', isa => 'ArrayRef[AWS::EMR::SupportedProductConfig]');
  has Steps => (is => 'ro', isa => 'ArrayRef[AWS::EMR::StepConfig]');
  has SupportedProducts => (is => 'ro', isa => 'ArrayRef[Str]');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::EMR::Tag]');
  has VisibleToAllUsers => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'RunJobFlow');
  has _returns => (isa => 'AWS::EMR::RunJobFlowResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RunJobFlowResult');  
}
class AWS::EMR::SetTerminationProtection {
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has TerminationProtected => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetTerminationProtection');
  has _returns => (isa => 'AWS::EMR::SetTerminationProtectionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetTerminationProtectionResult');  
}
class AWS::EMR::SetVisibleToAllUsers {
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has VisibleToAllUsers => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetVisibleToAllUsers');
  has _returns => (isa => 'AWS::EMR::SetVisibleToAllUsersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetVisibleToAllUsersResult');  
}
class AWS::EMR::TerminateJobFlows {
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateJobFlows');
  has _returns => (isa => 'AWS::EMR::TerminateJobFlowsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'TerminateJobFlowsResult');  
}

class AWS::EMR::AddInstanceGroupsResult with AWS::API::ResultParser {
  has InstanceGroupIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has JobFlowId => (is => 'ro', isa => 'Str');

}
class AWS::EMR::AddJobFlowStepsResult with AWS::API::ResultParser {
  has StepIds => (is => 'ro', isa => 'ArrayRef[Str]');

}
class AWS::EMR::AddTagsResult with AWS::API::ResultParser {

}
class AWS::EMR::DescribeClusterResult with AWS::API::ResultParser {
  has Cluster => (is => 'ro', isa => 'AWS::EMR::Cluster');

}
class AWS::EMR::DescribeJobFlowsResult with AWS::API::ResultParser {
  has JobFlows => (is => 'ro', isa => 'ArrayRef[AWS::EMR::JobFlowDetail]');

}
class AWS::EMR::DescribeStepResult with AWS::API::ResultParser {
  has Step => (is => 'ro', isa => 'AWS::EMR::Step');

}
class AWS::EMR::ListBootstrapActionsResult with AWS::API::ResultParser {
  has BootstrapActions => (is => 'ro', isa => 'ArrayRef[AWS::EMR::Command]');
  has Marker => (is => 'ro', isa => 'Str');

}
class AWS::EMR::ListClustersResult with AWS::API::ResultParser {
  has Clusters => (is => 'ro', isa => 'ArrayRef[AWS::EMR::ClusterSummary]');
  has Marker => (is => 'ro', isa => 'Str');

}
class AWS::EMR::ListInstanceGroupsResult with AWS::API::ResultParser {
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[AWS::EMR::InstanceGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
class AWS::EMR::ListInstancesResult with AWS::API::ResultParser {
  has Instances => (is => 'ro', isa => 'ArrayRef[AWS::EMR::Instance]');
  has Marker => (is => 'ro', isa => 'Str');

}
class AWS::EMR::ListStepsResult with AWS::API::ResultParser {
  has Marker => (is => 'ro', isa => 'Str');
  has Steps => (is => 'ro', isa => 'ArrayRef[AWS::EMR::StepSummary]');

}
class AWS::EMR::RemoveTagsResult with AWS::API::ResultParser {

}
class AWS::EMR::RunJobFlowResult with AWS::API::ResultParser {
  has JobFlowId => (is => 'ro', isa => 'Str');

}

class AWS::EMR with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::JsonCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'elasticmapreduce');
  has version => (is => 'ro', isa => 'Str', default => '2009-03-31');
  
  method AddInstanceGroups (%args) {
    my $call = AWS::EMR::AddInstanceGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EMR::AddInstanceGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method AddJobFlowSteps (%args) {
    my $call = AWS::EMR::AddJobFlowSteps->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EMR::AddJobFlowStepsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method AddTags (%args) {
    my $call = AWS::EMR::AddTags->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EMR::AddTagsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeCluster (%args) {
    my $call = AWS::EMR::DescribeCluster->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EMR::DescribeClusterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeJobFlows (%args) {
    my $call = AWS::EMR::DescribeJobFlows->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EMR::DescribeJobFlowsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeStep (%args) {
    my $call = AWS::EMR::DescribeStep->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EMR::DescribeStepResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListBootstrapActions (%args) {
    my $call = AWS::EMR::ListBootstrapActions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EMR::ListBootstrapActionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListClusters (%args) {
    my $call = AWS::EMR::ListClusters->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EMR::ListClustersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListInstanceGroups (%args) {
    my $call = AWS::EMR::ListInstanceGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EMR::ListInstanceGroupsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListInstances (%args) {
    my $call = AWS::EMR::ListInstances->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EMR::ListInstancesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListSteps (%args) {
    my $call = AWS::EMR::ListSteps->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EMR::ListStepsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifyInstanceGroups (%args) {
    my $call = AWS::EMR::ModifyInstanceGroups->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method RemoveTags (%args) {
    my $call = AWS::EMR::RemoveTags->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EMR::RemoveTagsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RunJobFlow (%args) {
    my $call = AWS::EMR::RunJobFlow->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::EMR::RunJobFlowResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SetTerminationProtection (%args) {
    my $call = AWS::EMR::SetTerminationProtection->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SetVisibleToAllUsers (%args) {
    my $call = AWS::EMR::SetVisibleToAllUsers->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method TerminateJobFlows (%args) {
    my $call = AWS::EMR::TerminateJobFlows->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
}
