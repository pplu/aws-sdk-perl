
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::DataPipeline::OperatorType', ['EQ','REF_EQ','LE','GE','BETWEEN',];


package Aws::DataPipeline::Field {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has key => (is => 'ro', isa => 'Str', required => 1);
  has refValue => (is => 'ro', isa => 'Str');
  has stringValue => (is => 'ro', isa => 'Str');
}

package Aws::DataPipeline::InstanceIdentity {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has document => (is => 'ro', isa => 'Str');
  has signature => (is => 'ro', isa => 'Str');
}

package Aws::DataPipeline::Operator {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has type => (is => 'ro', isa => 'Aws::DataPipeline::OperatorType');
  has values => (is => 'ro', isa => 'ArrayRef[Str]');
}

package Aws::DataPipeline::PipelineDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has description => (is => 'ro', isa => 'Str');
  has fields => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::Field]', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::DataPipeline::PipelineIdName {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has id => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str');
}

package Aws::DataPipeline::PipelineObject {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has fields => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::Field]', required => 1);
  has id => (is => 'ro', isa => 'Str', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::DataPipeline::PipelineObjectMap {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::DataPipeline::Query {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has selectors => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::Selector]');
}

package Aws::DataPipeline::Selector {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has fieldName => (is => 'ro', isa => 'Str');
  has operator => (is => 'ro', isa => 'Aws::DataPipeline::Operator');
}

package Aws::DataPipeline::TaskObject {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has attemptId => (is => 'ro', isa => 'Str');
  has objects => (is => 'ro', isa => 'Aws::DataPipeline::PipelineObjectMap');
  has pipelineId => (is => 'ro', isa => 'Str');
  has taskId => (is => 'ro', isa => 'Str');
}

package Aws::DataPipeline::ValidationError {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has errors => (is => 'ro', isa => 'ArrayRef[Str]');
  has id => (is => 'ro', isa => 'Str');
}

package Aws::DataPipeline::ValidationWarning {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has id => (is => 'ro', isa => 'Str');
  has warnings => (is => 'ro', isa => 'ArrayRef[Str]');
}



package Aws::DataPipeline::ActivatePipeline {
  use Moose;
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ActivatePipeline');
  has _returns => (isa => 'Aws::DataPipeline::ActivatePipelineResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ActivatePipelineResult');  
}
package Aws::DataPipeline::CreatePipeline {
  use Moose;
  has description => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has uniqueId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePipeline');
  has _returns => (isa => 'Aws::DataPipeline::CreatePipelineResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePipelineResult');  
}
package Aws::DataPipeline::DeletePipeline {
  use Moose;
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePipeline');
  has _returns => (isa => 'Aws::DataPipeline::DeletePipelineResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeletePipelineResult');  
}
package Aws::DataPipeline::DescribeObjects {
  use Moose;
  has evaluateExpressions => (is => 'ro', isa => 'Str');
  has marker => (is => 'ro', isa => 'Str');
  has objectIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeObjects');
  has _returns => (isa => 'Aws::DataPipeline::DescribeObjectsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeObjectsResult');  
}
package Aws::DataPipeline::DescribePipelines {
  use Moose;
  has pipelineIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePipelines');
  has _returns => (isa => 'Aws::DataPipeline::DescribePipelinesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribePipelinesResult');  
}
package Aws::DataPipeline::EvaluateExpression {
  use Moose;
  has expression => (is => 'ro', isa => 'Str', required => 1);
  has objectId => (is => 'ro', isa => 'Str', required => 1);
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'EvaluateExpression');
  has _returns => (isa => 'Aws::DataPipeline::EvaluateExpressionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EvaluateExpressionResult');  
}
package Aws::DataPipeline::GetPipelineDefinition {
  use Moose;
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetPipelineDefinition');
  has _returns => (isa => 'Aws::DataPipeline::GetPipelineDefinitionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetPipelineDefinitionResult');  
}
package Aws::DataPipeline::ListPipelines {
  use Moose;
  has marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListPipelines');
  has _returns => (isa => 'Aws::DataPipeline::ListPipelinesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListPipelinesResult');  
}
package Aws::DataPipeline::PollForTask {
  use Moose;
  has hostname => (is => 'ro', isa => 'Str');
  has instanceIdentity => (is => 'ro', isa => 'Aws::DataPipeline::InstanceIdentity');
  has workerGroup => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PollForTask');
  has _returns => (isa => 'Aws::DataPipeline::PollForTaskResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PollForTaskResult');  
}
package Aws::DataPipeline::PutPipelineDefinition {
  use Moose;
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::PipelineObject]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutPipelineDefinition');
  has _returns => (isa => 'Aws::DataPipeline::PutPipelineDefinitionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutPipelineDefinitionResult');  
}
package Aws::DataPipeline::QueryObjects {
  use Moose;
  has limit => (is => 'ro', isa => 'Int');
  has marker => (is => 'ro', isa => 'Str');
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has query => (is => 'ro', isa => 'Aws::DataPipeline::Query');
  has sphere => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'QueryObjects');
  has _returns => (isa => 'Aws::DataPipeline::QueryObjectsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'QueryObjectsResult');  
}
package Aws::DataPipeline::ReportTaskProgress {
  use Moose;
  has taskId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReportTaskProgress');
  has _returns => (isa => 'Aws::DataPipeline::ReportTaskProgressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReportTaskProgressResult');  
}
package Aws::DataPipeline::ReportTaskRunnerHeartbeat {
  use Moose;
  has hostname => (is => 'ro', isa => 'Str');
  has taskrunnerId => (is => 'ro', isa => 'Str', required => 1);
  has workerGroup => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReportTaskRunnerHeartbeat');
  has _returns => (isa => 'Aws::DataPipeline::ReportTaskRunnerHeartbeatResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReportTaskRunnerHeartbeatResult');  
}
package Aws::DataPipeline::SetStatus {
  use Moose;
  has objectIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has status => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetStatus');
  has _returns => (isa => 'Aws::DataPipeline::SetStatusResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetStatusResult');  
}
package Aws::DataPipeline::SetTaskStatus {
  use Moose;
  has errorId => (is => 'ro', isa => 'Str');
  has errorMessage => (is => 'ro', isa => 'Str');
  has errorStackTrace => (is => 'ro', isa => 'Str');
  has taskId => (is => 'ro', isa => 'Str', required => 1);
  has taskStatus => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetTaskStatus');
  has _returns => (isa => 'Aws::DataPipeline::SetTaskStatusResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetTaskStatusResult');  
}
package Aws::DataPipeline::ValidatePipelineDefinition {
  use Moose;
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::PipelineObject]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ValidatePipelineDefinition');
  has _returns => (isa => 'Aws::DataPipeline::ValidatePipelineDefinitionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ValidatePipelineDefinitionResult');  
}

package Aws::DataPipeline::ActivatePipelineResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::DataPipeline::CreatePipelineResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::DataPipeline::DescribeObjectsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has hasMoreResults => (is => 'ro', isa => 'Str');
  has marker => (is => 'ro', isa => 'Str');
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::PipelineObject]', required => 1);

}
package Aws::DataPipeline::DescribePipelinesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has pipelineDescriptionList => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::PipelineDescription]', required => 1);

}
package Aws::DataPipeline::EvaluateExpressionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has evaluatedExpression => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::DataPipeline::GetPipelineDefinitionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::PipelineObject]');

}
package Aws::DataPipeline::ListPipelinesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has hasMoreResults => (is => 'ro', isa => 'Str');
  has marker => (is => 'ro', isa => 'Str');
  has pipelineIdList => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::PipelineIdName]', required => 1);

}
package Aws::DataPipeline::PollForTaskResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has taskObject => (is => 'ro', isa => 'Aws::DataPipeline::TaskObject');

}
package Aws::DataPipeline::PutPipelineDefinitionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has errored => (is => 'ro', isa => 'Str', required => 1);
  has validationErrors => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::ValidationError]');
  has validationWarnings => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::ValidationWarning]');

}
package Aws::DataPipeline::QueryObjectsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has hasMoreResults => (is => 'ro', isa => 'Str');
  has ids => (is => 'ro', isa => 'ArrayRef[Str]');
  has marker => (is => 'ro', isa => 'Str');

}
package Aws::DataPipeline::ReportTaskProgressResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has canceled => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::DataPipeline::ReportTaskRunnerHeartbeatResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has terminate => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::DataPipeline::SetTaskStatusResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::DataPipeline::ValidatePipelineDefinitionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has errored => (is => 'ro', isa => 'Str', required => 1);
  has validationErrors => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::ValidationError]');
  has validationWarnings => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::ValidationWarning]');

}

package Aws::DataPipeline {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'datapipeline');
  has version => (is => 'ro', isa => 'Str', default => '2012-10-29');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'DataPipeline');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::JsonCaller', 'Net::AWS::JsonResponse');
  
  sub ActivatePipeline {
    my $self = shift;
    my $call = Aws::DataPipeline::ActivatePipeline->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::ActivatePipelineResult->from_result($result);return $o_result;
  }
  sub CreatePipeline {
    my $self = shift;
    my $call = Aws::DataPipeline::CreatePipeline->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::CreatePipelineResult->from_result($result);return $o_result;
  }
  sub DeletePipeline {
    my $self = shift;
    my $call = Aws::DataPipeline::DeletePipeline->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DescribeObjects {
    my $self = shift;
    my $call = Aws::DataPipeline::DescribeObjects->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::DescribeObjectsResult->from_result($result);return $o_result;
  }
  sub DescribePipelines {
    my $self = shift;
    my $call = Aws::DataPipeline::DescribePipelines->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::DescribePipelinesResult->from_result($result);return $o_result;
  }
  sub EvaluateExpression {
    my $self = shift;
    my $call = Aws::DataPipeline::EvaluateExpression->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::EvaluateExpressionResult->from_result($result);return $o_result;
  }
  sub GetPipelineDefinition {
    my $self = shift;
    my $call = Aws::DataPipeline::GetPipelineDefinition->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::GetPipelineDefinitionResult->from_result($result);return $o_result;
  }
  sub ListPipelines {
    my $self = shift;
    my $call = Aws::DataPipeline::ListPipelines->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::ListPipelinesResult->from_result($result);return $o_result;
  }
  sub PollForTask {
    my $self = shift;
    my $call = Aws::DataPipeline::PollForTask->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::PollForTaskResult->from_result($result);return $o_result;
  }
  sub PutPipelineDefinition {
    my $self = shift;
    my $call = Aws::DataPipeline::PutPipelineDefinition->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::PutPipelineDefinitionResult->from_result($result);return $o_result;
  }
  sub QueryObjects {
    my $self = shift;
    my $call = Aws::DataPipeline::QueryObjects->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::QueryObjectsResult->from_result($result);return $o_result;
  }
  sub ReportTaskProgress {
    my $self = shift;
    my $call = Aws::DataPipeline::ReportTaskProgress->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::ReportTaskProgressResult->from_result($result);return $o_result;
  }
  sub ReportTaskRunnerHeartbeat {
    my $self = shift;
    my $call = Aws::DataPipeline::ReportTaskRunnerHeartbeat->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::ReportTaskRunnerHeartbeatResult->from_result($result);return $o_result;
  }
  sub SetStatus {
    my $self = shift;
    my $call = Aws::DataPipeline::SetStatus->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub SetTaskStatus {
    my $self = shift;
    my $call = Aws::DataPipeline::SetTaskStatus->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::SetTaskStatusResult->from_result($result);return $o_result;
  }
  sub ValidatePipelineDefinition {
    my $self = shift;
    my $call = Aws::DataPipeline::ValidatePipelineDefinition->new(@_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::ValidatePipelineDefinitionResult->from_result($result);return $o_result;
  }
}
