use MooseX::Declare;

use AWS::API;

class AWS::API::CloudFormation::OnFailure extends AWS::API::String {
  has Value => (isa => 'Str', is => 'ro', required => 1);
  #where { $_ eq 'DO_NOTHING' or $_ eq 'ROLLBACK' or $_ eq 'DELETE' };
  method to_params (Str $param_name) { ($param_name => $self->Value) }
}

class AWS::CloudFormation::CreateStackResult with AWS::API::ResultParser {
  has StackId => (isa => 'API::Caller::String', is => 'ro');
}

class AWS::CloudFormation::CreateStack {
  has Capabilities => (isa => 'AWS::API::StringList', is => 'ro', coerce => 1);
  has DisableRollback => (isa => 'AWS::API::Boolean', is => 'ro', coerce => 1);
  has NotificationARNs => (isa => 'AWS::API::StringList', is => 'ro', coerce => 1);
  # has OnFailure => (isa => 'AWS::API::CloudFormation::OnFailure', is => 'ro', coerce => 1);
#         ArrayRef[AWS::API::CloudFormation::Parameter] $Parameters:,
#         ArrayRef[HashRef] $Parameters:,
  has StackName => (isa => 'AWS::API::String', is => 'ro', coerce => 1, required => 1);
#         ArrayRef[HashRef] $Tags:,
  has TemplateBody => (isa => 'Str', is => 'ro');
  has TemplateURL => (isa => 'Str', is => 'ro');
  has TimeoutInMinutes => (isa => 'AWS::API::Integer', is => 'ro', coerce => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStack');
  has _returns => (isa => 'AWS::CloudFormation::CreateStackResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStackResult');
}

class AWS::CloudFormation::Output with AWS::API::ResultParser {
  has OutputKey => (is => 'ro', isa => 'Str', required => 1);
  has OutputValue => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::CloudFormation::Parameter with AWS::API::ResultParser {
  has ParameterKey => (is => 'ro', isa => 'Str', required => 1);
  has ParameterValue => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::Common::Tag with AWS::API::ResultParser {
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::CloudFormation::Stack with AWS::API::ResultParser {
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  # TODO: This is a DateTime
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisableRollback => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has NotificationARNs  => (is => 'ro', isa => 'ArrayRef[Str]');
  has Outputs => (is => 'ro', isa => 'ArrayRef[AWS::CloudFormation::Output]');
  has Parameters => (is => 'ro', isa => 'ArrayRef[AWS::CloudFormation::Parameter]');
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');
  has StackStatus => (is => 'ro', isa => 'Str');
  has StackStatusReason => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[AWS::Common::Tag]');
  has TimeoutInMinutes => (is => 'ro', isa => 'Str');
}

class AWS::CloudFormation::DescribeStacks {
  has NextToken => (is => 'ro', isa => 'AWS::API::String');
  has StackName => (is => 'ro', isa => 'AWS::API::String');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStacks');
  has _returns => (isa => 'AWS::CloudFormation::DescribeStacksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStacksResult');
}

class AWS::CloudFormation::DescribeStacksResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has Stacks => (is => 'ro', isa => 'ArrayRef[AWS::CloudFormation::Stack]', required => 1);
}

class AWS::CloudFormation::DescribeStackEvents {
  has NextToken => (is => 'ro', isa => 'AWS::API::String', coerce => 1);
  has StackName => (is => 'ro', isa => 'AWS::API::String', coerce => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackEvents');
  has _returns => (isa => 'AWS::CloudFormation::DescribeStackEventsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackEventsResult');
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

class AWS::CloudFormation::DescribeStackEventsResult with AWS::API::ResultParser {
  has NextToken => (is => 'ro', isa => 'Str');
  has StackEvents => (is => 'ro', isa => 'ArrayRef[AWS::CloudFormation::StackEvent]');
}

class AWS::CloudFormation::DescribeStackResource {
  has LogicalResourceId => (is => 'ro', isa => 'AWS::API::String', required => 1, coerce => 1);
  has StackName => (is => 'ro', isa => 'AWS::API::String', required => 1, coerce => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackResource');
  has _returns => (isa => 'AWS::CloudFormation::DescribeStackResourceResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackResourceResult');
}

class AWS::CloudFormation::StackResourceDetail with AWS::API::ResultParser {
  has Description => (is => 'ro', isa => 'Str');
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  #TODO: metadata could be smarter
  has Metadata => (is => 'ro', isa => 'Str');
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has ResourceStatus => (is => 'ro', isa => 'Str');
  has ResourceStatusReason => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');
}

class AWS::CloudFormation::DescribeStackResourceResult with AWS::API::ResultParser {
  has StackResourceDetail => (is => 'ro', isa => 'AWS::CloudFormation::StackResourceDetail');
}

class AWS::CloudFormation::StackSummary with AWS::API::ResultParser {
  # TODO: Adjust Types
  has CreationTime => (is => 'ro', isa => 'Str');
  has DeletionTime => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');
  has StackStatus => (is => 'ro', isa => 'Str');
  has StackStatusReason => (is => 'ro', isa => 'Str');
  has TemplateDescription => (is => 'ro', isa => 'Str');
}

role AWS::API::Collection {
  requires 'NextToken';
  has position => (is => 'rw', isa => 'Int', default => 0);
  method next {
    my $obj = $self->StackSummaries->[ $self->position ];
    $self->position($self->position + 1);
    return $obj;    
  }
}

class AWS::CloudFormation::ListStacksResult with AWS::API::ResultParser with AWS::API::Collection {
  has NextToken => (is => 'ro', isa => 'Str');
  has StackSummaries => (is => 'ro', isa => 'ArrayRef[AWS::CloudFormation::StackSummary]');
}

class AWS::CloudFormation::ListStacks {
  has NextToken => (is => 'ro', isa => 'AWS::API::String', coerce => 1);
  has StackStatusFilter => (is => 'ro', isa => 'AWS::API::StringList', coerce => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListStacks');
  has _returns => (isa => 'AWS::CloudFormation::ListStacksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListStacksResult');
}

class AWS::CloudFormation with AWS::API::Caller {
  has service => (is => 'ro', isa => 'Str', default => 'cloudformation');
  has version => (is => 'ro', isa => 'Str', default => '2010-05-15');

  method CancelUpdateStack (%args) {

  }

  method CreateStack(%args) {
    my $call = AWS::CloudFormation::CreateStack->new(%args);
    $self->_api_caller('CreateStack', $call); 
  }

  method DescribeStackEvents(%args) {
    my $call = AWS::CloudFormation::DescribeStackEvents->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudFormation::DescribeStackEventsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeStackResource(%args) {
    my $call = AWS::CloudFormation::DescribeStackResource->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudFormation::DescribeStackResourceResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeStacks (%args) {
    my $call = AWS::CloudFormation::DescribeStacks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudFormation::DescribeStacksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ListStacks (%args) {
    my $call = AWS::CloudFormation::ListStacks->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudFormation::ListStacksResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}

1;
