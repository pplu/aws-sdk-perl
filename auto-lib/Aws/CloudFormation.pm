
use AWS::API;


package Aws::CloudFormation::Output {
  use Moose;
  with ('AWS::API::ResultParser');
  has Description => (is => 'ro', isa => 'Str');
  has OutputKey => (is => 'ro', isa => 'Str');
  has OutputValue => (is => 'ro', isa => 'Str');
}

package Aws::CloudFormation::Parameter {
  use Moose;
  with ('AWS::API::ResultParser');
  has ParameterKey => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
  has UsePreviousValue => (is => 'ro', isa => 'Bool');
}

package Aws::CloudFormation::Stack {
  use Moose;
  with ('AWS::API::ResultParser');
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has DisableRollback => (is => 'ro', isa => 'Bool');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has NotificationARNs => (is => 'ro', isa => 'ArrayRef[Str]');
  has Outputs => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::Output]');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::Parameter]');
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackStatus => (is => 'ro', isa => 'Str', required => 1);
  has StackStatusReason => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::Tag]');
  has TimeoutInMinutes => (is => 'ro', isa => 'Int');
}

package Aws::CloudFormation::StackEvent {
  use Moose;
  with ('AWS::API::ResultParser');
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

package Aws::CloudFormation::StackResource {
  use Moose;
  with ('AWS::API::ResultParser');
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

package Aws::CloudFormation::StackResourceDetail {
  use Moose;
  with ('AWS::API::ResultParser');
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

package Aws::CloudFormation::StackResourceSummary {
  use Moose;
  with ('AWS::API::ResultParser');
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has ResourceStatus => (is => 'ro', isa => 'Str', required => 1);
  has ResourceStatusReason => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudFormation::StackSummary {
  use Moose;
  with ('AWS::API::ResultParser');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has DeletionTime => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackStatus => (is => 'ro', isa => 'Str', required => 1);
  has StackStatusReason => (is => 'ro', isa => 'Str');
  has TemplateDescription => (is => 'ro', isa => 'Str');
}

package Aws::CloudFormation::Tag {
  use Moose;
  with ('AWS::API::ResultParser');
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}

package Aws::CloudFormation::TemplateParameter {
  use Moose;
  with ('AWS::API::ResultParser');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has NoEcho => (is => 'ro', isa => 'Bool');
  has ParameterKey => (is => 'ro', isa => 'Str');
}



package Aws::CloudFormation::CancelUpdateStack {
  use Moose;
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelUpdateStack');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudFormation::CreateStack {
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  has DisableRollback => (is => 'ro', isa => 'Bool');
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

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudFormation::CreateStackResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStackResult');
}
package Aws::CloudFormation::DeleteStack {
  use Moose;
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStack');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CloudFormation::DescribeStackEvents {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudFormation::DescribeStackEventsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackEventsResult');
}
package Aws::CloudFormation::DescribeStackResource {
  use Moose;
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudFormation::DescribeStackResourceResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackResourceResult');
}
package Aws::CloudFormation::DescribeStackResources {
  use Moose;
  has LogicalResourceId => (is => 'ro', isa => 'Str');
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudFormation::DescribeStackResourcesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackResourcesResult');
}
package Aws::CloudFormation::DescribeStacks {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStacks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudFormation::DescribeStacksResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStacksResult');
}
package Aws::CloudFormation::EstimateTemplateCost {
  use Moose;
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::Parameter]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EstimateTemplateCost');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudFormation::EstimateTemplateCostResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'EstimateTemplateCostResult');
}
package Aws::CloudFormation::GetStackPolicy {
  use Moose;
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStackPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudFormation::GetStackPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetStackPolicyResult');
}
package Aws::CloudFormation::GetTemplate {
  use Moose;
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudFormation::GetTemplateResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetTemplateResult');
}
package Aws::CloudFormation::ListStackResources {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStackResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudFormation::ListStackResourcesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListStackResourcesResult');
}
package Aws::CloudFormation::ListStacks {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackStatusFilter => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStacks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudFormation::ListStacksResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListStacksResult');
}
package Aws::CloudFormation::SetStackPolicy {
  use Moose;
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has StackPolicyBody => (is => 'ro', isa => 'Str');
  has StackPolicyURL => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetStackPolicy');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
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
  has UsePreviousTemplate => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudFormation::UpdateStackResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStackResult');
}
package Aws::CloudFormation::ValidateTemplate {
  use Moose;
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudFormation::ValidateTemplateResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ValidateTemplateResult');
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

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub CancelUpdateStack {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::CancelUpdateStack', @_);
  }
  sub CreateStack {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::CreateStack', @_);
  }
  sub DeleteStack {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::DeleteStack', @_);
  }
  sub DescribeStackEvents {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::DescribeStackEvents', @_);
  }
  sub DescribeStackResource {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::DescribeStackResource', @_);
  }
  sub DescribeStackResources {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::DescribeStackResources', @_);
  }
  sub DescribeStacks {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::DescribeStacks', @_);
  }
  sub EstimateTemplateCost {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::EstimateTemplateCost', @_);
  }
  sub GetStackPolicy {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::GetStackPolicy', @_);
  }
  sub GetTemplate {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::GetTemplate', @_);
  }
  sub ListStackResources {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::ListStackResources', @_);
  }
  sub ListStacks {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::ListStacks', @_);
  }
  sub SetStackPolicy {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::SetStackPolicy', @_);
  }
  sub UpdateStack {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::UpdateStack', @_);
  }
  sub ValidateTemplate {
    my $self = shift;
    return $self->do_call('Aws::CloudFormation::ValidateTemplate', @_);
  }
}
1;
