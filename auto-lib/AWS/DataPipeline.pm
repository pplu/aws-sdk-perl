
use MooseX::Declare;
use AWS::API;


class AWS::DataPipeline::Field with (AWS::API::ResultParser, AWS::API::ToParams) {
  has key => (is => 'ro', isa => 'Str', required => 1);
  has refValue => (is => 'ro', isa => 'Str');
  has stringValue => (is => 'ro', isa => 'Str');
}

class AWS::DataPipeline::InstanceIdentity with (AWS::API::ResultParser, AWS::API::ToParams) {
  has document => (is => 'ro', isa => 'Str');
  has signature => (is => 'ro', isa => 'Str');
}

class AWS::DataPipeline::PipelineDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has description => (is => 'ro', isa => 'Str');
  has fields => (is => 'ro', isa => 'ArrayRef[AWS::DataPipeline::Field]', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::DataPipeline::PipelineIdName with (AWS::API::ResultParser, AWS::API::ToParams) {
  has id => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str');
}

class AWS::DataPipeline::PipelineObject with (AWS::API::ResultParser, AWS::API::ToParams) {
  has fields => (is => 'ro', isa => 'ArrayRef[AWS::DataPipeline::Field]', required => 1);
  has id => (is => 'ro', isa => 'Str', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::DataPipeline::PipelineObjectMap with AWS::API::MapParser {
class AWS::DataPipeline::Query with (AWS::API::ResultParser, AWS::API::ToParams) {
  has selectors => (is => 'ro', isa => 'ArrayRef[AWS::DataPipeline::Selector]');
}

class AWS::DataPipeline::Selector with (AWS::API::ResultParser, AWS::API::ToParams) {
  has fieldName => (is => 'ro', isa => 'Str');
  has operator => (is => 'ro', isa => 'AWS::DataPipeline::Operator');
}

class AWS::DataPipeline::TaskObject with (AWS::API::ResultParser, AWS::API::ToParams) {
  has attemptId => (is => 'ro', isa => 'Str');
  has objects => (is => 'ro', isa => 'AWS::DataPipeline::PipelineObjectMap');
  has pipelineId => (is => 'ro', isa => 'Str');
  has taskId => (is => 'ro', isa => 'Str');
}

class AWS::DataPipeline::ValidationError with (AWS::API::ResultParser, AWS::API::ToParams) {
  has errors => (is => 'ro', isa => 'ArrayRef[Str]');
  has id => (is => 'ro', isa => 'Str');
}

class AWS::DataPipeline::ValidationWarning with (AWS::API::ResultParser, AWS::API::ToParams) {
  has id => (is => 'ro', isa => 'Str');
  has warnings => (is => 'ro', isa => 'ArrayRef[Str]');
}



class AWS::DataPipeline::ActivatePipeline {
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ActivatePipeline');
  has _returns => (isa => 'AWS::DataPipeline::ActivatePipelineResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ActivatePipelineResult');  
}
class AWS::DataPipeline::CreatePipeline {
  has description => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has uniqueId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePipeline');
  has _returns => (isa => 'AWS::DataPipeline::CreatePipelineResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePipelineResult');  
}
class AWS::DataPipeline::DeletePipeline {
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePipeline');
  has _returns => (isa => 'AWS::DataPipeline::DeletePipelineResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeletePipelineResult');  
}
class AWS::DataPipeline::DescribeObjects {
  has evaluateExpressions => (is => 'ro', isa => 'Str');
  has marker => (is => 'ro', isa => 'Str');
  has objectIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeObjects');
  has _returns => (isa => 'AWS::DataPipeline::DescribeObjectsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeObjectsResult');  
}
class AWS::DataPipeline::DescribePipelines {
  has pipelineIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePipelines');
  has _returns => (isa => 'AWS::DataPipeline::DescribePipelinesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribePipelinesResult');  
}
class AWS::DataPipeline::EvaluateExpression {
  has expression => (is => 'ro', isa => 'Str', required => 1);
  has objectId => (is => 'ro', isa => 'Str', required => 1);
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'EvaluateExpression');
  has _returns => (isa => 'AWS::DataPipeline::EvaluateExpressionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EvaluateExpressionResult');  
}
class AWS::DataPipeline::GetPipelineDefinition {
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetPipelineDefinition');
  has _returns => (isa => 'AWS::DataPipeline::GetPipelineDefinitionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetPipelineDefinitionResult');  
}
class AWS::DataPipeline::ListPipelines {
  has marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListPipelines');
  has _returns => (isa => 'AWS::DataPipeline::ListPipelinesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListPipelinesResult');  
}
class AWS::DataPipeline::PollForTask {
  has hostname => (is => 'ro', isa => 'Str');
  has instanceIdentity => (is => 'ro', isa => 'AWS::DataPipeline::InstanceIdentity');
  has workerGroup => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PollForTask');
  has _returns => (isa => 'AWS::DataPipeline::PollForTaskResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PollForTaskResult');  
}
class AWS::DataPipeline::PutPipelineDefinition {
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[AWS::DataPipeline::PipelineObject]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutPipelineDefinition');
  has _returns => (isa => 'AWS::DataPipeline::PutPipelineDefinitionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutPipelineDefinitionResult');  
}
class AWS::DataPipeline::QueryObjects {
  has limit => (is => 'ro', isa => 'Int');
  has marker => (is => 'ro', isa => 'Str');
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has query => (is => 'ro', isa => 'AWS::DataPipeline::Query');
  has sphere => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'QueryObjects');
  has _returns => (isa => 'AWS::DataPipeline::QueryObjectsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'QueryObjectsResult');  
}
class AWS::DataPipeline::ReportTaskProgress {
  has taskId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReportTaskProgress');
  has _returns => (isa => 'AWS::DataPipeline::ReportTaskProgressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReportTaskProgressResult');  
}
class AWS::DataPipeline::ReportTaskRunnerHeartbeat {
  has hostname => (is => 'ro', isa => 'Str');
  has taskrunnerId => (is => 'ro', isa => 'Str', required => 1);
  has workerGroup => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReportTaskRunnerHeartbeat');
  has _returns => (isa => 'AWS::DataPipeline::ReportTaskRunnerHeartbeatResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReportTaskRunnerHeartbeatResult');  
}
class AWS::DataPipeline::SetStatus {
  has objectIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has status => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetStatus');
  has _returns => (isa => 'AWS::DataPipeline::SetStatusResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetStatusResult');  
}
class AWS::DataPipeline::SetTaskStatus {
  has errorId => (is => 'ro', isa => 'Str');
  has errorMessage => (is => 'ro', isa => 'Str');
  has errorStackTrace => (is => 'ro', isa => 'Str');
  has taskId => (is => 'ro', isa => 'Str', required => 1);
  has taskStatus => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetTaskStatus');
  has _returns => (isa => 'AWS::DataPipeline::SetTaskStatusResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetTaskStatusResult');  
}
class AWS::DataPipeline::ValidatePipelineDefinition {
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[AWS::DataPipeline::PipelineObject]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ValidatePipelineDefinition');
  has _returns => (isa => 'AWS::DataPipeline::ValidatePipelineDefinitionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ValidatePipelineDefinitionResult');  
}

class AWS::DataPipeline::ActivatePipelineResult with AWS::API::ResultParser {

}
class AWS::DataPipeline::CreatePipelineResult with AWS::API::ResultParser {
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

}
class AWS::DataPipeline::DescribeObjectsResult with AWS::API::ResultParser {
  has hasMoreResults => (is => 'ro', isa => 'Str');
  has marker => (is => 'ro', isa => 'Str');
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[AWS::DataPipeline::PipelineObject]', required => 1);

}
class AWS::DataPipeline::DescribePipelinesResult with AWS::API::ResultParser {
  has pipelineDescriptionList => (is => 'ro', isa => 'ArrayRef[AWS::DataPipeline::PipelineDescription]', required => 1);

}
class AWS::DataPipeline::EvaluateExpressionResult with AWS::API::ResultParser {
  has evaluatedExpression => (is => 'ro', isa => 'Str', required => 1);

}
class AWS::DataPipeline::GetPipelineDefinitionResult with AWS::API::ResultParser {
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[AWS::DataPipeline::PipelineObject]');

}
class AWS::DataPipeline::ListPipelinesResult with AWS::API::ResultParser {
  has hasMoreResults => (is => 'ro', isa => 'Str');
  has marker => (is => 'ro', isa => 'Str');
  has pipelineIdList => (is => 'ro', isa => 'ArrayRef[AWS::DataPipeline::PipelineIdName]', required => 1);

}
class AWS::DataPipeline::PollForTaskResult with AWS::API::ResultParser {
  has taskObject => (is => 'ro', isa => 'AWS::DataPipeline::TaskObject');

}
class AWS::DataPipeline::PutPipelineDefinitionResult with AWS::API::ResultParser {
  has errored => (is => 'ro', isa => 'Str', required => 1);
  has validationErrors => (is => 'ro', isa => 'ArrayRef[AWS::DataPipeline::ValidationError]');
  has validationWarnings => (is => 'ro', isa => 'ArrayRef[AWS::DataPipeline::ValidationWarning]');

}
class AWS::DataPipeline::QueryObjectsResult with AWS::API::ResultParser {
  has hasMoreResults => (is => 'ro', isa => 'Str');
  has ids => (is => 'ro', isa => 'ArrayRef[Str]');
  has marker => (is => 'ro', isa => 'Str');

}
class AWS::DataPipeline::ReportTaskProgressResult with AWS::API::ResultParser {
  has canceled => (is => 'ro', isa => 'Str', required => 1);

}
class AWS::DataPipeline::ReportTaskRunnerHeartbeatResult with AWS::API::ResultParser {
  has terminate => (is => 'ro', isa => 'Str', required => 1);

}
class AWS::DataPipeline::SetTaskStatusResult with AWS::API::ResultParser {

}
class AWS::DataPipeline::ValidatePipelineDefinitionResult with AWS::API::ResultParser {
  has errored => (is => 'ro', isa => 'Str', required => 1);
  has validationErrors => (is => 'ro', isa => 'ArrayRef[AWS::DataPipeline::ValidationError]');
  has validationWarnings => (is => 'ro', isa => 'ArrayRef[AWS::DataPipeline::ValidationWarning]');

}

class AWS::DataPipeline with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::JsonCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'datapipeline');
  has version => (is => 'ro', isa => 'Str', default => '2012-10-29');
  
  method ActivatePipeline (%args) {
    my $call = AWS::DataPipeline::ActivatePipeline->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DataPipeline::ActivatePipelineResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreatePipeline (%args) {
    my $call = AWS::DataPipeline::CreatePipeline->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DataPipeline::CreatePipelineResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeletePipeline (%args) {
    my $call = AWS::DataPipeline::DeletePipeline->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DescribeObjects (%args) {
    my $call = AWS::DataPipeline::DescribeObjects->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DataPipeline::DescribeObjectsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribePipelines (%args) {
    my $call = AWS::DataPipeline::DescribePipelines->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DataPipeline::DescribePipelinesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method EvaluateExpression (%args) {
    my $call = AWS::DataPipeline::EvaluateExpression->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DataPipeline::EvaluateExpressionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetPipelineDefinition (%args) {
    my $call = AWS::DataPipeline::GetPipelineDefinition->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DataPipeline::GetPipelineDefinitionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListPipelines (%args) {
    my $call = AWS::DataPipeline::ListPipelines->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DataPipeline::ListPipelinesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method PollForTask (%args) {
    my $call = AWS::DataPipeline::PollForTask->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DataPipeline::PollForTaskResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method PutPipelineDefinition (%args) {
    my $call = AWS::DataPipeline::PutPipelineDefinition->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DataPipeline::PutPipelineDefinitionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method QueryObjects (%args) {
    my $call = AWS::DataPipeline::QueryObjects->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DataPipeline::QueryObjectsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ReportTaskProgress (%args) {
    my $call = AWS::DataPipeline::ReportTaskProgress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DataPipeline::ReportTaskProgressResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ReportTaskRunnerHeartbeat (%args) {
    my $call = AWS::DataPipeline::ReportTaskRunnerHeartbeat->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DataPipeline::ReportTaskRunnerHeartbeatResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SetStatus (%args) {
    my $call = AWS::DataPipeline::SetStatus->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SetTaskStatus (%args) {
    my $call = AWS::DataPipeline::SetTaskStatus->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DataPipeline::SetTaskStatusResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ValidatePipelineDefinition (%args) {
    my $call = AWS::DataPipeline::ValidatePipelineDefinition->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::DataPipeline::ValidatePipelineDefinitionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
