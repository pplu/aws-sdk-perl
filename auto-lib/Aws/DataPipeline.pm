
use MooseX::Declare;
use AWS::API;


class Aws::DataPipeline::Field with (AWS::API::ResultParser, AWS::API::ToParams) {
  has key => (is => 'ro', isa => 'Str', required => 1);
  has refValue => (is => 'ro', isa => 'Str');
  has stringValue => (is => 'ro', isa => 'Str');
}

class Aws::DataPipeline::InstanceIdentity with (AWS::API::ResultParser, AWS::API::ToParams) {
  has document => (is => 'ro', isa => 'Str');
  has signature => (is => 'ro', isa => 'Str');
}

class Aws::DataPipeline::PipelineDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has description => (is => 'ro', isa => 'Str');
  has fields => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::Field]', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::DataPipeline::PipelineIdName with (AWS::API::ResultParser, AWS::API::ToParams) {
  has id => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str');
}

class Aws::DataPipeline::PipelineObject with (AWS::API::ResultParser, AWS::API::ToParams) {
  has fields => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::Field]', required => 1);
  has id => (is => 'ro', isa => 'Str', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::DataPipeline::PipelineObjectMap with AWS::API::MapParser {
class Aws::DataPipeline::Query with (AWS::API::ResultParser, AWS::API::ToParams) {
  has selectors => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::Selector]');
}

class Aws::DataPipeline::Selector with (AWS::API::ResultParser, AWS::API::ToParams) {
  has fieldName => (is => 'ro', isa => 'Str');
  has operator => (is => 'ro', isa => 'Aws::DataPipeline::Operator');
}

class Aws::DataPipeline::TaskObject with (AWS::API::ResultParser, AWS::API::ToParams) {
  has attemptId => (is => 'ro', isa => 'Str');
  has objects => (is => 'ro', isa => 'Aws::DataPipeline::PipelineObjectMap');
  has pipelineId => (is => 'ro', isa => 'Str');
  has taskId => (is => 'ro', isa => 'Str');
}

class Aws::DataPipeline::ValidationError with (AWS::API::ResultParser, AWS::API::ToParams) {
  has errors => (is => 'ro', isa => 'ArrayRef[Str]');
  has id => (is => 'ro', isa => 'Str');
}

class Aws::DataPipeline::ValidationWarning with (AWS::API::ResultParser, AWS::API::ToParams) {
  has id => (is => 'ro', isa => 'Str');
  has warnings => (is => 'ro', isa => 'ArrayRef[Str]');
}



class Aws::DataPipeline::ActivatePipeline {
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ActivatePipeline');
  has _returns => (isa => 'Aws::DataPipeline::ActivatePipelineResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ActivatePipelineResult');  
}
class Aws::DataPipeline::CreatePipeline {
  has description => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has uniqueId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePipeline');
  has _returns => (isa => 'Aws::DataPipeline::CreatePipelineResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePipelineResult');  
}
class Aws::DataPipeline::DeletePipeline {
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePipeline');
  has _returns => (isa => 'Aws::DataPipeline::DeletePipelineResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeletePipelineResult');  
}
class Aws::DataPipeline::DescribeObjects {
  has evaluateExpressions => (is => 'ro', isa => 'Str');
  has marker => (is => 'ro', isa => 'Str');
  has objectIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeObjects');
  has _returns => (isa => 'Aws::DataPipeline::DescribeObjectsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeObjectsResult');  
}
class Aws::DataPipeline::DescribePipelines {
  has pipelineIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePipelines');
  has _returns => (isa => 'Aws::DataPipeline::DescribePipelinesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribePipelinesResult');  
}
class Aws::DataPipeline::EvaluateExpression {
  has expression => (is => 'ro', isa => 'Str', required => 1);
  has objectId => (is => 'ro', isa => 'Str', required => 1);
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'EvaluateExpression');
  has _returns => (isa => 'Aws::DataPipeline::EvaluateExpressionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EvaluateExpressionResult');  
}
class Aws::DataPipeline::GetPipelineDefinition {
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetPipelineDefinition');
  has _returns => (isa => 'Aws::DataPipeline::GetPipelineDefinitionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetPipelineDefinitionResult');  
}
class Aws::DataPipeline::ListPipelines {
  has marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListPipelines');
  has _returns => (isa => 'Aws::DataPipeline::ListPipelinesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListPipelinesResult');  
}
class Aws::DataPipeline::PollForTask {
  has hostname => (is => 'ro', isa => 'Str');
  has instanceIdentity => (is => 'ro', isa => 'Aws::DataPipeline::InstanceIdentity');
  has workerGroup => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PollForTask');
  has _returns => (isa => 'Aws::DataPipeline::PollForTaskResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PollForTaskResult');  
}
class Aws::DataPipeline::PutPipelineDefinition {
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::PipelineObject]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutPipelineDefinition');
  has _returns => (isa => 'Aws::DataPipeline::PutPipelineDefinitionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutPipelineDefinitionResult');  
}
class Aws::DataPipeline::QueryObjects {
  has limit => (is => 'ro', isa => 'Int');
  has marker => (is => 'ro', isa => 'Str');
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has query => (is => 'ro', isa => 'Aws::DataPipeline::Query');
  has sphere => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'QueryObjects');
  has _returns => (isa => 'Aws::DataPipeline::QueryObjectsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'QueryObjectsResult');  
}
class Aws::DataPipeline::ReportTaskProgress {
  has taskId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReportTaskProgress');
  has _returns => (isa => 'Aws::DataPipeline::ReportTaskProgressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReportTaskProgressResult');  
}
class Aws::DataPipeline::ReportTaskRunnerHeartbeat {
  has hostname => (is => 'ro', isa => 'Str');
  has taskrunnerId => (is => 'ro', isa => 'Str', required => 1);
  has workerGroup => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReportTaskRunnerHeartbeat');
  has _returns => (isa => 'Aws::DataPipeline::ReportTaskRunnerHeartbeatResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReportTaskRunnerHeartbeatResult');  
}
class Aws::DataPipeline::SetStatus {
  has objectIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has status => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetStatus');
  has _returns => (isa => 'Aws::DataPipeline::SetStatusResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetStatusResult');  
}
class Aws::DataPipeline::SetTaskStatus {
  has errorId => (is => 'ro', isa => 'Str');
  has errorMessage => (is => 'ro', isa => 'Str');
  has errorStackTrace => (is => 'ro', isa => 'Str');
  has taskId => (is => 'ro', isa => 'Str', required => 1);
  has taskStatus => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetTaskStatus');
  has _returns => (isa => 'Aws::DataPipeline::SetTaskStatusResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetTaskStatusResult');  
}
class Aws::DataPipeline::ValidatePipelineDefinition {
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::PipelineObject]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ValidatePipelineDefinition');
  has _returns => (isa => 'Aws::DataPipeline::ValidatePipelineDefinitionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ValidatePipelineDefinitionResult');  
}

class Aws::DataPipeline::ActivatePipelineResult with AWS::API::ResultParser {

}
class Aws::DataPipeline::CreatePipelineResult with AWS::API::ResultParser {
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

}
class Aws::DataPipeline::DescribeObjectsResult with AWS::API::ResultParser {
  has hasMoreResults => (is => 'ro', isa => 'Str');
  has marker => (is => 'ro', isa => 'Str');
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::PipelineObject]', required => 1);

}
class Aws::DataPipeline::DescribePipelinesResult with AWS::API::ResultParser {
  has pipelineDescriptionList => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::PipelineDescription]', required => 1);

}
class Aws::DataPipeline::EvaluateExpressionResult with AWS::API::ResultParser {
  has evaluatedExpression => (is => 'ro', isa => 'Str', required => 1);

}
class Aws::DataPipeline::GetPipelineDefinitionResult with AWS::API::ResultParser {
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::PipelineObject]');

}
class Aws::DataPipeline::ListPipelinesResult with AWS::API::ResultParser {
  has hasMoreResults => (is => 'ro', isa => 'Str');
  has marker => (is => 'ro', isa => 'Str');
  has pipelineIdList => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::PipelineIdName]', required => 1);

}
class Aws::DataPipeline::PollForTaskResult with AWS::API::ResultParser {
  has taskObject => (is => 'ro', isa => 'Aws::DataPipeline::TaskObject');

}
class Aws::DataPipeline::PutPipelineDefinitionResult with AWS::API::ResultParser {
  has errored => (is => 'ro', isa => 'Str', required => 1);
  has validationErrors => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::ValidationError]');
  has validationWarnings => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::ValidationWarning]');

}
class Aws::DataPipeline::QueryObjectsResult with AWS::API::ResultParser {
  has hasMoreResults => (is => 'ro', isa => 'Str');
  has ids => (is => 'ro', isa => 'ArrayRef[Str]');
  has marker => (is => 'ro', isa => 'Str');

}
class Aws::DataPipeline::ReportTaskProgressResult with AWS::API::ResultParser {
  has canceled => (is => 'ro', isa => 'Str', required => 1);

}
class Aws::DataPipeline::ReportTaskRunnerHeartbeatResult with AWS::API::ResultParser {
  has terminate => (is => 'ro', isa => 'Str', required => 1);

}
class Aws::DataPipeline::SetTaskStatusResult with AWS::API::ResultParser {

}
class Aws::DataPipeline::ValidatePipelineDefinitionResult with AWS::API::ResultParser {
  has errored => (is => 'ro', isa => 'Str', required => 1);
  has validationErrors => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::ValidationError]');
  has validationWarnings => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::ValidationWarning]');

}

class Aws::DataPipeline with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::JsonCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'datapipeline');
  has version => (is => 'ro', isa => 'Str', default => '2012-10-29');
  
  method ActivatePipeline (%args) {
    my $call = Aws::DataPipeline::ActivatePipeline->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::ActivatePipelineResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreatePipeline (%args) {
    my $call = Aws::DataPipeline::CreatePipeline->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::CreatePipelineResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeletePipeline (%args) {
    my $call = Aws::DataPipeline::DeletePipeline->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DescribeObjects (%args) {
    my $call = Aws::DataPipeline::DescribeObjects->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::DescribeObjectsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribePipelines (%args) {
    my $call = Aws::DataPipeline::DescribePipelines->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::DescribePipelinesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method EvaluateExpression (%args) {
    my $call = Aws::DataPipeline::EvaluateExpression->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::EvaluateExpressionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetPipelineDefinition (%args) {
    my $call = Aws::DataPipeline::GetPipelineDefinition->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::GetPipelineDefinitionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListPipelines (%args) {
    my $call = Aws::DataPipeline::ListPipelines->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::ListPipelinesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method PollForTask (%args) {
    my $call = Aws::DataPipeline::PollForTask->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::PollForTaskResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method PutPipelineDefinition (%args) {
    my $call = Aws::DataPipeline::PutPipelineDefinition->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::PutPipelineDefinitionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method QueryObjects (%args) {
    my $call = Aws::DataPipeline::QueryObjects->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::QueryObjectsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ReportTaskProgress (%args) {
    my $call = Aws::DataPipeline::ReportTaskProgress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::ReportTaskProgressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ReportTaskRunnerHeartbeat (%args) {
    my $call = Aws::DataPipeline::ReportTaskRunnerHeartbeat->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::ReportTaskRunnerHeartbeatResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SetStatus (%args) {
    my $call = Aws::DataPipeline::SetStatus->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SetTaskStatus (%args) {
    my $call = Aws::DataPipeline::SetTaskStatus->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::SetTaskStatusResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ValidatePipelineDefinition (%args) {
    my $call = Aws::DataPipeline::ValidatePipelineDefinition->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::DataPipeline::ValidatePipelineDefinitionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
