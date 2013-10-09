use MooseX::Declare;
use AWS::API;
class AWS::CloudFormation::Output with AWS::API::ResultParser {
  has Description => (is => 'ro', isa => 'Str');
  has OutputKey => (is => 'ro', isa => 'Str');
  has OutputValue => (is => 'ro', isa => 'Str');
}

class AWS::CloudFormation::Parameter with AWS::API::ResultParser {
  has ParameterKey => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
}

class AWS::CloudFormation::Stack with AWS::API::ResultParser {
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has DisableRollback => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has NotificationARNs => (is => 'ro', isa => 'ArrayRef[Str]');
  has Outputs => (is => 'ro', isa => 'ArrayRef[AWS::CloudFormation::Output]');
  has Parameters => (is => 'ro', isa => 'ArrayRef[AWS::CloudFormation::Parameter]');
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackStatus => (is => 'ro', isa => 'Str', required => 1);
  has StackStatusReason => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::CloudFormation::Tag]');
  has TimeoutInMinutes => (is => 'ro', isa => 'Int');
}

class AWS::CloudFormation::StackEvent with AWS::API::ResultParser {
  has EventId => (is => 'ro', isa => 'Str', required => 1);
  has LogicalResourceId => (is => 'ro', isa => 'Str');
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has ResourceProperties => (is => 'ro', isa => 'Str');
  has ResourceStatus => (is => 'ro', isa => 'Str');
  has ResourceStatusReason => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has Timestamp => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::CloudFormation::StackResource with AWS::API::ResultParser {
  has Description => (is => 'ro', isa => 'Str');
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has ResourceStatus => (is => 'ro', isa => 'Str', required => 1);
  has ResourceStatusReason => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');
  has Timestamp => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::CloudFormation::StackResourceDetail with AWS::API::ResultParser {
  has Description => (is => 'ro', isa => 'Str');
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has Metadata => (is => 'ro', isa => 'Str');
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has ResourceStatus => (is => 'ro', isa => 'Str', required => 1);
  has ResourceStatusReason => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');
}

class AWS::CloudFormation::StackResourceSummary with AWS::API::ResultParser {
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has ResourceStatus => (is => 'ro', isa => 'Str', required => 1);
  has ResourceStatusReason => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::CloudFormation::StackSummary with AWS::API::ResultParser {
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has DeletionTime => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackStatus => (is => 'ro', isa => 'Str', required => 1);
  has StackStatusReason => (is => 'ro', isa => 'Str');
  has TemplateDescription => (is => 'ro', isa => 'Str');
}

class AWS::CloudFormation::Tag with AWS::API::ResultParser {
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

class AWS::CloudFormation::TemplateParameter with AWS::API::ResultParser {
  has DefaultValue => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has NoEcho => (is => 'ro', isa => 'Str');
  has ParameterKey => (is => 'ro', isa => 'Str');
}

class AWS::CloudFormation::CancelUpdateStack {
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CancelUpdateStack');
  has _returns => (isa => 'AWS::CloudFormation::CancelUpdateStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CancelUpdateStackResult');
}
class AWS::CloudFormation::CreateStack {
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  has DisableRollback => (is => 'ro', isa => 'Str');
  has NotificationARNs => (is => 'ro', isa => 'ArrayRef[Str]');
  has OnFailure => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[AWS::CloudFormation::Parameter]');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::CloudFormation::Tag]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');
  has TimeoutInMinutes => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStack');
  has _returns => (isa => 'AWS::CloudFormation::CreateStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStackResult');
}
class AWS::CloudFormation::DeleteStack {
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStack');
  has _returns => (isa => 'AWS::CloudFormation::DeleteStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteStackResult');
}
class AWS::CloudFormation::DescribeStackEvents {
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackEvents');
  has _returns => (isa => 'AWS::CloudFormation::DescribeStackEventsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackEventsResult');
}
class AWS::CloudFormation::DescribeStackResource {
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackResource');
  has _returns => (isa => 'AWS::CloudFormation::DescribeStackResourceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackResourceResult');
}
class AWS::CloudFormation::DescribeStackResources {
  has LogicalResourceId => (is => 'ro', isa => 'Str');
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackResources');
  has _returns => (isa => 'AWS::CloudFormation::DescribeStackResourcesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackResourcesResult');
}
class AWS::CloudFormation::DescribeStacks {
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStacks');
  has _returns => (isa => 'AWS::CloudFormation::DescribeStacksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStacksResult');
}
class AWS::CloudFormation::EstimateTemplateCost {
  has Parameters => (is => 'ro', isa => 'ArrayRef[AWS::CloudFormation::Parameter]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'EstimateTemplateCost');
  has _returns => (isa => 'AWS::CloudFormation::EstimateTemplateCostResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EstimateTemplateCostResult');
}
class AWS::CloudFormation::GetTemplate {
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetTemplate');
  has _returns => (isa => 'AWS::CloudFormation::GetTemplateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetTemplateResult');
}
class AWS::CloudFormation::ListStackResources {
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListStackResources');
  has _returns => (isa => 'AWS::CloudFormation::ListStackResourcesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListStackResourcesResult');
}
class AWS::CloudFormation::ListStacks {
  has NextToken => (is => 'ro', isa => 'Str');
  has StackStatusFilter => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListStacks');
  has _returns => (isa => 'AWS::CloudFormation::ListStacksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListStacksResult');
}
class AWS::CloudFormation::UpdateStack {
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  has Parameters => (is => 'ro', isa => 'ArrayRef[AWS::CloudFormation::Parameter]');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStack');
  has _returns => (isa => 'AWS::CloudFormation::UpdateStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStackResult');
}
class AWS::CloudFormation::ValidateTemplate {
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateTemplate');
  has _returns => (isa => 'AWS::CloudFormation::ValidateTemplateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ValidateTemplateResult');
}
class AWS::CloudFormation::CreateStackResult with AWS::API::ResultParser {
  has StackId => (is => 'ro', isa => 'Str');
}
class AWS::CloudFormation::DescribeStackEventsResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has StackEvents => (is => 'ro', isa => 'ArrayRef[AWS::CloudFormation::StackEvent]');
}
class AWS::CloudFormation::DescribeStackResourceResult with AWS::API::ResultParser {
  has StackResourceDetail => (is => 'ro', isa => 'AWS::CloudFormation::StackResourceDetail');
}
class AWS::CloudFormation::DescribeStackResourcesResult with AWS::API::ResultParser {
  has StackResources => (is => 'ro', isa => 'ArrayRef[AWS::CloudFormation::StackResource]');
}
class AWS::CloudFormation::DescribeStacksResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has Stacks => (is => 'ro', isa => 'ArrayRef[AWS::CloudFormation::Stack]');
}
class AWS::CloudFormation::EstimateTemplateCostResult with AWS::API::ResultParser {
  has Url => (is => 'ro', isa => 'Str');
}
class AWS::CloudFormation::GetTemplateResult with AWS::API::ResultParser {
  has TemplateBody => (is => 'ro', isa => 'Str');
}
class AWS::CloudFormation::ListStackResourcesResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has StackResourceSummaries => (is => 'ro', isa => 'ArrayRef[AWS::CloudFormation::StackResourceSummary]');
}
class AWS::CloudFormation::ListStacksResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has StackSummaries => (is => 'ro', isa => 'ArrayRef[AWS::CloudFormation::StackSummary]');
}
class AWS::CloudFormation::UpdateStackResult with AWS::API::ResultParser {
  has StackId => (is => 'ro', isa => 'Str');
}
class AWS::CloudFormation::ValidateTemplateResult with AWS::API::ResultParser {
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  has CapabilitiesReason => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[AWS::CloudFormation::TemplateParameter]');
}
class AWS::CloudFormation with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller) {
  has service => (is => 'ro', isa => 'Str', default => 'cloudformation');
  has version => (is => 'ro', isa => 'Str', default => '2010-05-15');

  method CancelUpdateStack (%args) {
    my $call = AWS::CloudFormation::CancelUpdateStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method CreateStack (%args) {
    my $call = AWS::CloudFormation::CreateStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudFormation::CreateStackResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteStack (%args) {
    my $call = AWS::CloudFormation::DeleteStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }

  method DescribeStackEvents (%args) {
    my $call = AWS::CloudFormation::DescribeStackEvents->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudFormation::DescribeStackEventsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeStackResource (%args) {
    my $call = AWS::CloudFormation::DescribeStackResource->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudFormation::DescribeStackResourceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeStackResources (%args) {
    my $call = AWS::CloudFormation::DescribeStackResources->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudFormation::DescribeStackResourcesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeStacks (%args) {
    my $call = AWS::CloudFormation::DescribeStacks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudFormation::DescribeStacksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method EstimateTemplateCost (%args) {
    my $call = AWS::CloudFormation::EstimateTemplateCost->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudFormation::EstimateTemplateCostResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method GetTemplate (%args) {
    my $call = AWS::CloudFormation::GetTemplate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudFormation::GetTemplateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ListStackResources (%args) {
    my $call = AWS::CloudFormation::ListStackResources->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudFormation::ListStackResourcesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ListStacks (%args) {
    my $call = AWS::CloudFormation::ListStacks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudFormation::ListStacksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method UpdateStack (%args) {
    my $call = AWS::CloudFormation::UpdateStack->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudFormation::UpdateStackResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ValidateTemplate (%args) {
    my $call = AWS::CloudFormation::ValidateTemplate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudFormation::ValidateTemplateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

}

