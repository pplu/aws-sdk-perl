
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::CloudFormation::ResourceStatus', ['CREATE_IN_PROGRESS','CREATE_FAILED','CREATE_COMPLETE','DELETE_IN_PROGRESS','DELETE_FAILED','DELETE_COMPLETE','UPDATE_IN_PROGRESS','UPDATE_FAILED','UPDATE_COMPLETE',];
enum 'Aws::CloudFormation::StackStatus', ['CREATE_IN_PROGRESS','CREATE_FAILED','CREATE_COMPLETE','ROLLBACK_IN_PROGRESS','ROLLBACK_FAILED','ROLLBACK_COMPLETE','DELETE_IN_PROGRESS','DELETE_FAILED','DELETE_COMPLETE','UPDATE_IN_PROGRESS','UPDATE_COMPLETE_CLEANUP_IN_PROGRESS','UPDATE_COMPLETE','UPDATE_ROLLBACK_IN_PROGRESS','UPDATE_ROLLBACK_FAILED','UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS','UPDATE_ROLLBACK_COMPLETE',];


class Aws::CloudFormation::Output with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Description => (is => 'ro', isa => 'Str');
  has OutputKey => (is => 'ro', isa => 'Str');
  has OutputValue => (is => 'ro', isa => 'Str');
}

class Aws::CloudFormation::Parameter with (AWS::API::ResultParser, AWS::API::ToParams) {
  has ParameterKey => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
}

class Aws::CloudFormation::Stack with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::CloudFormation::StackEvent with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::CloudFormation::StackResource with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::CloudFormation::StackResourceDetail with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::CloudFormation::StackResourceSummary with (AWS::API::ResultParser, AWS::API::ToParams) {
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has ResourceStatus => (is => 'ro', isa => 'Aws::CloudFormation::ResourceStatus', required => 1);
  has ResourceStatusReason => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::CloudFormation::StackSummary with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has DeletionTime => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackStatus => (is => 'ro', isa => 'Aws::CloudFormation::StackStatus', required => 1);
  has StackStatusReason => (is => 'ro', isa => 'Str');
  has TemplateDescription => (is => 'ro', isa => 'Str');
}

class Aws::CloudFormation::Tag with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

class Aws::CloudFormation::TemplateParameter with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DefaultValue => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has NoEcho => (is => 'ro', isa => 'Str');
  has ParameterKey => (is => 'ro', isa => 'Str');
}



class Aws::CloudFormation::CancelUpdateStack {
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelUpdateStack');
  has _returns => (isa => 'Aws::CloudFormation::CancelUpdateStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelUpdateStackResult');  
}
class Aws::CloudFormation::CreateStack {
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
class Aws::CloudFormation::DeleteStack {
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStack');
  has _returns => (isa => 'Aws::CloudFormation::DeleteStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteStackResult');  
}
class Aws::CloudFormation::DescribeStackEvents {
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackEvents');
  has _returns => (isa => 'Aws::CloudFormation::DescribeStackEventsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackEventsResult');  
}
class Aws::CloudFormation::DescribeStackResource {
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackResource');
  has _returns => (isa => 'Aws::CloudFormation::DescribeStackResourceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackResourceResult');  
}
class Aws::CloudFormation::DescribeStackResources {
  has LogicalResourceId => (is => 'ro', isa => 'Str');
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackResources');
  has _returns => (isa => 'Aws::CloudFormation::DescribeStackResourcesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackResourcesResult');  
}
class Aws::CloudFormation::DescribeStacks {
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStacks');
  has _returns => (isa => 'Aws::CloudFormation::DescribeStacksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStacksResult');  
}
class Aws::CloudFormation::EstimateTemplateCost {
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::Parameter]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'EstimateTemplateCost');
  has _returns => (isa => 'Aws::CloudFormation::EstimateTemplateCostResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EstimateTemplateCostResult');  
}
class Aws::CloudFormation::GetStackPolicy {
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetStackPolicy');
  has _returns => (isa => 'Aws::CloudFormation::GetStackPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetStackPolicyResult');  
}
class Aws::CloudFormation::GetTemplate {
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetTemplate');
  has _returns => (isa => 'Aws::CloudFormation::GetTemplateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetTemplateResult');  
}
class Aws::CloudFormation::ListStackResources {
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListStackResources');
  has _returns => (isa => 'Aws::CloudFormation::ListStackResourcesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListStackResourcesResult');  
}
class Aws::CloudFormation::ListStacks {
  has NextToken => (is => 'ro', isa => 'Str');
  has StackStatusFilter => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListStacks');
  has _returns => (isa => 'Aws::CloudFormation::ListStacksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListStacksResult');  
}
class Aws::CloudFormation::SetStackPolicy {
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackPolicyBody => (is => 'ro', isa => 'Str');
  has StackPolicyURL => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetStackPolicy');
  has _returns => (isa => 'Aws::CloudFormation::SetStackPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetStackPolicyResult');  
}
class Aws::CloudFormation::UpdateStack {
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::Parameter]');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackPolicyBody => (is => 'ro', isa => 'Str');
  has StackPolicyDuringUpdateBody => (is => 'ro', isa => 'Str');
  has StackPolicyDuringUpdateURL => (is => 'ro', isa => 'Str');
  has StackPolicyURL => (is => 'ro', isa => 'Str');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStack');
  has _returns => (isa => 'Aws::CloudFormation::UpdateStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStackResult');  
}
class Aws::CloudFormation::ValidateTemplate {
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateTemplate');
  has _returns => (isa => 'Aws::CloudFormation::ValidateTemplateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ValidateTemplateResult');  
}

class Aws::CloudFormation::CreateStackResult with AWS::API::ResultParser {
  has StackId => (is => 'ro', isa => 'Str');

}
class Aws::CloudFormation::DescribeStackEventsResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has StackEvents => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::StackEvent]');

}
class Aws::CloudFormation::DescribeStackResourceResult with AWS::API::ResultParser {
  has StackResourceDetail => (is => 'ro', isa => 'Aws::CloudFormation::StackResourceDetail');

}
class Aws::CloudFormation::DescribeStackResourcesResult with AWS::API::ResultParser {
  has StackResources => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::StackResource]');

}
class Aws::CloudFormation::DescribeStacksResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has Stacks => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::Stack]');

}
class Aws::CloudFormation::EstimateTemplateCostResult with AWS::API::ResultParser {
  has Url => (is => 'ro', isa => 'Str');

}
class Aws::CloudFormation::GetStackPolicyResult with AWS::API::ResultParser {
  has StackPolicyBody => (is => 'ro', isa => 'Str');

}
class Aws::CloudFormation::GetTemplateResult with AWS::API::ResultParser {
  has TemplateBody => (is => 'ro', isa => 'Str');

}
class Aws::CloudFormation::ListStackResourcesResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has StackResourceSummaries => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::StackResourceSummary]');

}
class Aws::CloudFormation::ListStacksResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has StackSummaries => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::StackSummary]');

}
class Aws::CloudFormation::UpdateStackResult with AWS::API::ResultParser {
  has StackId => (is => 'ro', isa => 'Str');

}
class Aws::CloudFormation::ValidateTemplateResult with AWS::API::ResultParser {
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  has CapabilitiesReason => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::TemplateParameter]');

}

class Aws::CloudFormation with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'cloudformation');
  has version => (is => 'ro', isa => 'Str', default => '2010-05-15');
  
  method CancelUpdateStack (%args) {
    my $call = Aws::CloudFormation::CancelUpdateStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method CreateStack (%args) {
    my $call = Aws::CloudFormation::CreateStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::CreateStackResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteStack (%args) {
    my $call = Aws::CloudFormation::DeleteStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DescribeStackEvents (%args) {
    my $call = Aws::CloudFormation::DescribeStackEvents->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::DescribeStackEventsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeStackResource (%args) {
    my $call = Aws::CloudFormation::DescribeStackResource->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::DescribeStackResourceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeStackResources (%args) {
    my $call = Aws::CloudFormation::DescribeStackResources->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::DescribeStackResourcesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeStacks (%args) {
    my $call = Aws::CloudFormation::DescribeStacks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::DescribeStacksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method EstimateTemplateCost (%args) {
    my $call = Aws::CloudFormation::EstimateTemplateCost->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::EstimateTemplateCostResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetStackPolicy (%args) {
    my $call = Aws::CloudFormation::GetStackPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::GetStackPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetTemplate (%args) {
    my $call = Aws::CloudFormation::GetTemplate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::GetTemplateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListStackResources (%args) {
    my $call = Aws::CloudFormation::ListStackResources->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::ListStackResourcesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListStacks (%args) {
    my $call = Aws::CloudFormation::ListStacks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::ListStacksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SetStackPolicy (%args) {
    my $call = Aws::CloudFormation::SetStackPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method UpdateStack (%args) {
    my $call = Aws::CloudFormation::UpdateStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::UpdateStackResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ValidateTemplate (%args) {
    my $call = Aws::CloudFormation::ValidateTemplate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudFormation::ValidateTemplateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
