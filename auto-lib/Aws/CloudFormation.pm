
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::CloudFormation::ResourceStatus', ['CREATE_IN_PROGRESS','CREATE_FAILED','CREATE_COMPLETE','DELETE_IN_PROGRESS','DELETE_FAILED','DELETE_COMPLETE','UPDATE_IN_PROGRESS','UPDATE_FAILED','UPDATE_COMPLETE',];
enum 'Aws::CloudFormation::StackStatus', ['CREATE_IN_PROGRESS','CREATE_FAILED','CREATE_COMPLETE','ROLLBACK_IN_PROGRESS','ROLLBACK_FAILED','ROLLBACK_COMPLETE','DELETE_IN_PROGRESS','DELETE_FAILED','DELETE_COMPLETE','UPDATE_IN_PROGRESS','UPDATE_COMPLETE_CLEANUP_IN_PROGRESS','UPDATE_COMPLETE','UPDATE_ROLLBACK_IN_PROGRESS','UPDATE_ROLLBACK_FAILED','UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS','UPDATE_ROLLBACK_COMPLETE',];


package Aws::CloudFormation::Output {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Description => (is => 'ro', isa => 'Str');
  has OutputKey => (is => 'ro', isa => 'Str');
  has OutputValue => (is => 'ro', isa => 'Str');
}

package Aws::CloudFormation::Parameter {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has ParameterKey => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
  has UsePreviousValue => (is => 'ro', isa => 'Str');
}

package Aws::CloudFormation::Stack {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has DisableRollback => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has NotificationARNs => (is => 'ro', isa => 'ArrayRef[Str]');
  has Outputs => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::Output]');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::Parameter]');
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackStatus => (is => 'ro', isa => 'Aws::CloudFormation::StackStatus', required => 1);
  has StackStatusReason => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::Tag]');
  has TimeoutInMinutes => (is => 'ro', isa => 'Int');
}

package Aws::CloudFormation::StackEvent {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has EventId => (is => 'ro', isa => 'Str', required => 1);
  has LogicalResourceId => (is => 'ro', isa => 'Str');
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has ResourceProperties => (is => 'ro', isa => 'Str');
  has ResourceStatus => (is => 'ro', isa => 'Aws::CloudFormation::ResourceStatus');
  has ResourceStatusReason => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has Timestamp => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudFormation::StackResource {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Description => (is => 'ro', isa => 'Str');
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has ResourceStatus => (is => 'ro', isa => 'Aws::CloudFormation::ResourceStatus', required => 1);
  has ResourceStatusReason => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');
  has Timestamp => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudFormation::StackResourceDetail {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Description => (is => 'ro', isa => 'Str');
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has Metadata => (is => 'ro', isa => 'Str');
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has ResourceStatus => (is => 'ro', isa => 'Aws::CloudFormation::ResourceStatus', required => 1);
  has ResourceStatusReason => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');
}

package Aws::CloudFormation::StackResourceSummary {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has ResourceStatus => (is => 'ro', isa => 'Aws::CloudFormation::ResourceStatus', required => 1);
  has ResourceStatusReason => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudFormation::StackSummary {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has DeletionTime => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackStatus => (is => 'ro', isa => 'Aws::CloudFormation::StackStatus', required => 1);
  has StackStatusReason => (is => 'ro', isa => 'Str');
  has TemplateDescription => (is => 'ro', isa => 'Str');
}

package Aws::CloudFormation::Tag {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

package Aws::CloudFormation::TemplateParameter {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has NoEcho => (is => 'ro', isa => 'Str');
  has ParameterKey => (is => 'ro', isa => 'Str');
}



package Aws::CloudFormation::CancelUpdateStack {
  use Moose;
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelUpdateStack');
  has _returns => (isa => 'Aws::CloudFormation::CancelUpdateStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelUpdateStackResult');  
}
package Aws::CloudFormation::CreateStack {
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  has DisableRollback => (is => 'ro', isa => 'Str');
  has NotificationARNs => (is => 'ro', isa => 'ArrayRef[Str]');
  has OnFailure => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::Parameter]');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackPolicyBody => (is => 'ro', isa => 'Str');
  has StackPolicyURL => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::Tag]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');
  has TimeoutInMinutes => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStack');
  has _returns => (isa => 'Aws::CloudFormation::CreateStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStackResult');  
}
package Aws::CloudFormation::DeleteStack {
  use Moose;
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStack');
  has _returns => (isa => 'Aws::CloudFormation::DeleteStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteStackResult');  
}
package Aws::CloudFormation::DescribeStackEvents {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackEvents');
  has _returns => (isa => 'Aws::CloudFormation::DescribeStackEventsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackEventsResult');  
}
package Aws::CloudFormation::DescribeStackResource {
  use Moose;
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackResource');
  has _returns => (isa => 'Aws::CloudFormation::DescribeStackResourceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackResourceResult');  
}
package Aws::CloudFormation::DescribeStackResources {
  use Moose;
  has LogicalResourceId => (is => 'ro', isa => 'Str');
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackResources');
  has _returns => (isa => 'Aws::CloudFormation::DescribeStackResourcesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackResourcesResult');  
}
package Aws::CloudFormation::DescribeStacks {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStacks');
  has _returns => (isa => 'Aws::CloudFormation::DescribeStacksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStacksResult');  
}
package Aws::CloudFormation::EstimateTemplateCost {
  use Moose;
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::Parameter]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'EstimateTemplateCost');
  has _returns => (isa => 'Aws::CloudFormation::EstimateTemplateCostResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EstimateTemplateCostResult');  
}
package Aws::CloudFormation::GetStackPolicy {
  use Moose;
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetStackPolicy');
  has _returns => (isa => 'Aws::CloudFormation::GetStackPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetStackPolicyResult');  
}
package Aws::CloudFormation::GetTemplate {
  use Moose;
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetTemplate');
  has _returns => (isa => 'Aws::CloudFormation::GetTemplateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetTemplateResult');  
}
package Aws::CloudFormation::ListStackResources {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListStackResources');
  has _returns => (isa => 'Aws::CloudFormation::ListStackResourcesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListStackResourcesResult');  
}
package Aws::CloudFormation::ListStacks {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackStatusFilter => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListStacks');
  has _returns => (isa => 'Aws::CloudFormation::ListStacksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListStacksResult');  
}
package Aws::CloudFormation::SetStackPolicy {
  use Moose;
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackPolicyBody => (is => 'ro', isa => 'Str');
  has StackPolicyURL => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetStackPolicy');
  has _returns => (isa => 'Aws::CloudFormation::SetStackPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetStackPolicyResult');  
}
package Aws::CloudFormation::UpdateStack {
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  has NotificationARNs => (is => 'ro', isa => 'ArrayRef[Str]');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::Parameter]');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackPolicyBody => (is => 'ro', isa => 'Str');
  has StackPolicyDuringUpdateBody => (is => 'ro', isa => 'Str');
  has StackPolicyDuringUpdateURL => (is => 'ro', isa => 'Str');
  has StackPolicyURL => (is => 'ro', isa => 'Str');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');
  has UsePreviousTemplate => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStack');
  has _returns => (isa => 'Aws::CloudFormation::UpdateStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStackResult');  
}
package Aws::CloudFormation::ValidateTemplate {
  use Moose;
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateTemplate');
  has _returns => (isa => 'Aws::CloudFormation::ValidateTemplateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ValidateTemplateResult');  
}

package Aws::CloudFormation::CreateStackResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has StackId => (is => 'ro', isa => 'Str');

}
package Aws::CloudFormation::DescribeStackEventsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has StackEvents => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::StackEvent]');

}
package Aws::CloudFormation::DescribeStackResourceResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has StackResourceDetail => (is => 'ro', isa => 'Aws::CloudFormation::StackResourceDetail');

}
package Aws::CloudFormation::DescribeStackResourcesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has StackResources => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::StackResource]');

}
package Aws::CloudFormation::DescribeStacksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has Stacks => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::Stack]');

}
package Aws::CloudFormation::EstimateTemplateCostResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Url => (is => 'ro', isa => 'Str');

}
package Aws::CloudFormation::GetStackPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has StackPolicyBody => (is => 'ro', isa => 'Str');

}
package Aws::CloudFormation::GetTemplateResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TemplateBody => (is => 'ro', isa => 'Str');

}
package Aws::CloudFormation::ListStackResourcesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has StackResourceSummaries => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::StackResourceSummary]');

}
package Aws::CloudFormation::ListStacksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has StackSummaries => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::StackSummary]');

}
package Aws::CloudFormation::UpdateStackResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has StackId => (is => 'ro', isa => 'Str');

}
package Aws::CloudFormation::ValidateTemplateResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  has CapabilitiesReason => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::TemplateParameter]');

}

package Aws::CloudFormation {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'cloudformation');
  has version => (is => 'ro', isa => 'Str', default => '2010-05-15');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::QueryCaller', 'Net::AWS::XMLResponse');
  
  sub CancelUpdateStack {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudFormation::CancelUpdateStack', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub CreateStack {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudFormation::CreateStack', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::CreateStackResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteStack {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudFormation::DeleteStack', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DescribeStackEvents {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudFormation::DescribeStackEvents', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::DescribeStackEventsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeStackResource {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudFormation::DescribeStackResource', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::DescribeStackResourceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeStackResources {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudFormation::DescribeStackResources', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::DescribeStackResourcesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeStacks {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudFormation::DescribeStacks', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::DescribeStacksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub EstimateTemplateCost {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudFormation::EstimateTemplateCost', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::EstimateTemplateCostResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetStackPolicy {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudFormation::GetStackPolicy', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::GetStackPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetTemplate {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudFormation::GetTemplate', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::GetTemplateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListStackResources {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudFormation::ListStackResources', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::ListStackResourcesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListStacks {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudFormation::ListStacks', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::ListStacksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub SetStackPolicy {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudFormation::SetStackPolicy', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub UpdateStack {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudFormation::UpdateStack', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::UpdateStackResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ValidateTemplate {
    my $self = shift;
    my $call = new_with_coercions('Aws::CloudFormation::ValidateTemplate', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::ValidateTemplateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
