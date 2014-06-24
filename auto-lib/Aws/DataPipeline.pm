
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::DataPipeline::OperatorType', ['EQ','REF_EQ','LE','GE','BETWEEN',];


package Aws::DataPipeline::Field {
  use Moose;
  with ('AWS::API::ResultParser');
  has key => (is => 'ro', isa => 'Str', required => 1);
  has refValue => (is => 'ro', isa => 'Str');
  has stringValue => (is => 'ro', isa => 'Str');
}

package Aws::DataPipeline::InstanceIdentity {
  use Moose;
  with ('AWS::API::ResultParser');
  has document => (is => 'ro', isa => 'Str');
  has signature => (is => 'ro', isa => 'Str');
}

package Aws::DataPipeline::Operator {
  use Moose;
  with ('AWS::API::ResultParser');
  has type => (is => 'ro', isa => 'Aws::DataPipeline::OperatorType');
  has values => (is => 'ro', isa => 'ArrayRef[Str]');
}

package Aws::DataPipeline::PipelineDescription {
  use Moose;
  with ('AWS::API::ResultParser');
  has description => (is => 'ro', isa => 'Str');
  has fields => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::Field]', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::DataPipeline::PipelineIdName {
  use Moose;
  with ('AWS::API::ResultParser');
  has id => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str');
}

package Aws::DataPipeline::PipelineObject {
  use Moose;
  with ('AWS::API::ResultParser');
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
  with ('AWS::API::ResultParser');
  has selectors => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::Selector]');
}

package Aws::DataPipeline::Selector {
  use Moose;
  with ('AWS::API::ResultParser');
  has fieldName => (is => 'ro', isa => 'Str');
  has operator => (is => 'ro', isa => 'Aws::DataPipeline::Operator');
}

package Aws::DataPipeline::TaskObject {
  use Moose;
  with ('AWS::API::ResultParser');
  has attemptId => (is => 'ro', isa => 'Str');
  has objects => (is => 'ro', isa => 'Aws::DataPipeline::PipelineObjectMap');
  has pipelineId => (is => 'ro', isa => 'Str');
  has taskId => (is => 'ro', isa => 'Str');
}

package Aws::DataPipeline::ValidationError {
  use Moose;
  with ('AWS::API::ResultParser');
  has errors => (is => 'ro', isa => 'ArrayRef[Str]');
  has id => (is => 'ro', isa => 'Str');
}

package Aws::DataPipeline::ValidationWarning {
  use Moose;
  with ('AWS::API::ResultParser');
  has id => (is => 'ro', isa => 'Str');
  has warnings => (is => 'ro', isa => 'ArrayRef[Str]');
}



package Aws::DataPipeline::ActivatePipeline {
  use Moose;
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ActivatePipeline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::ActivatePipelineResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DataPipeline::CreatePipeline {
  use Moose;
  has description => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str', required => 1);
  has uniqueId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePipeline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::CreatePipelineResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DataPipeline::DeletePipeline {
  use Moose;
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePipeline');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DataPipeline::DescribeObjects {
  use Moose;
  has evaluateExpressions => (is => 'ro', isa => 'Bool');
  has marker => (is => 'ro', isa => 'Str');
  has objectIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeObjects');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::DescribeObjectsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DataPipeline::DescribePipelines {
  use Moose;
  has pipelineIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePipelines');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::DescribePipelinesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DataPipeline::EvaluateExpression {
  use Moose;
  has expression => (is => 'ro', isa => 'Str', required => 1);
  has objectId => (is => 'ro', isa => 'Str', required => 1);
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EvaluateExpression');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::EvaluateExpressionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DataPipeline::GetPipelineDefinition {
  use Moose;
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has version => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPipelineDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::GetPipelineDefinitionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DataPipeline::ListPipelines {
  use Moose;
  has marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPipelines');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::ListPipelinesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DataPipeline::PollForTask {
  use Moose;
  has hostname => (is => 'ro', isa => 'Str');
  has instanceIdentity => (is => 'ro', isa => 'Aws::DataPipeline::InstanceIdentity');
  has workerGroup => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PollForTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::PollForTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DataPipeline::PutPipelineDefinition {
  use Moose;
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::PipelineObject]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutPipelineDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::PutPipelineDefinitionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DataPipeline::QueryObjects {
  use Moose;
  has limit => (is => 'ro', isa => 'Int');
  has marker => (is => 'ro', isa => 'Str');
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has query => (is => 'ro', isa => 'Aws::DataPipeline::Query');
  has sphere => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'QueryObjects');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::QueryObjectsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DataPipeline::ReportTaskProgress {
  use Moose;
  has taskId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReportTaskProgress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::ReportTaskProgressResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DataPipeline::ReportTaskRunnerHeartbeat {
  use Moose;
  has hostname => (is => 'ro', isa => 'Str');
  has taskrunnerId => (is => 'ro', isa => 'Str', required => 1);
  has workerGroup => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReportTaskRunnerHeartbeat');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::ReportTaskRunnerHeartbeatResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DataPipeline::SetStatus {
  use Moose;
  has objectIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has status => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetStatus');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DataPipeline::SetTaskStatus {
  use Moose;
  has errorId => (is => 'ro', isa => 'Str');
  has errorMessage => (is => 'ro', isa => 'Str');
  has errorStackTrace => (is => 'ro', isa => 'Str');
  has taskId => (is => 'ro', isa => 'Str', required => 1);
  has taskStatus => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetTaskStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::SetTaskStatusResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::DataPipeline::ValidatePipelineDefinition {
  use Moose;
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has pipelineObjects => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::PipelineObject]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ValidatePipelineDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::ValidatePipelineDefinitionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
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
  has hasMoreResults => (is => 'ro', isa => 'Bool');
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
  has hasMoreResults => (is => 'ro', isa => 'Bool');
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
  has errored => (is => 'ro', isa => 'Bool', required => 1);
  has validationErrors => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::ValidationError]');
  has validationWarnings => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::ValidationWarning]');

}
package Aws::DataPipeline::QueryObjectsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has hasMoreResults => (is => 'ro', isa => 'Bool');
  has ids => (is => 'ro', isa => 'ArrayRef[Str]');
  has marker => (is => 'ro', isa => 'Str');

}
package Aws::DataPipeline::ReportTaskProgressResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has canceled => (is => 'ro', isa => 'Bool', required => 1);

}
package Aws::DataPipeline::ReportTaskRunnerHeartbeatResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has terminate => (is => 'ro', isa => 'Bool', required => 1);

}
package Aws::DataPipeline::SetTaskStatusResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::DataPipeline::ValidatePipelineDefinitionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has errored => (is => 'ro', isa => 'Bool', required => 1);
  has validationErrors => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::ValidationError]');
  has validationWarnings => (is => 'ro', isa => 'ArrayRef[Aws::DataPipeline::ValidationWarning]');

}

package Aws::DataPipeline {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'datapipeline');
  has version => (is => 'ro', isa => 'Str', default => '2012-10-29');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'DataPipeline');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub ActivatePipeline {
    my $self = shift;
    return $self->do_call('Aws::DataPipeline::ActivatePipeline', @_);
  }
  sub CreatePipeline {
    my $self = shift;
    return $self->do_call('Aws::DataPipeline::CreatePipeline', @_);
  }
  sub DeletePipeline {
    my $self = shift;
    return $self->do_call('Aws::DataPipeline::DeletePipeline', @_);
  }
  sub DescribeObjects {
    my $self = shift;
    return $self->do_call('Aws::DataPipeline::DescribeObjects', @_);
  }
  sub DescribePipelines {
    my $self = shift;
    return $self->do_call('Aws::DataPipeline::DescribePipelines', @_);
  }
  sub EvaluateExpression {
    my $self = shift;
    return $self->do_call('Aws::DataPipeline::EvaluateExpression', @_);
  }
  sub GetPipelineDefinition {
    my $self = shift;
    return $self->do_call('Aws::DataPipeline::GetPipelineDefinition', @_);
  }
  sub ListPipelines {
    my $self = shift;
    return $self->do_call('Aws::DataPipeline::ListPipelines', @_);
  }
  sub PollForTask {
    my $self = shift;
    return $self->do_call('Aws::DataPipeline::PollForTask', @_);
  }
  sub PutPipelineDefinition {
    my $self = shift;
    return $self->do_call('Aws::DataPipeline::PutPipelineDefinition', @_);
  }
  sub QueryObjects {
    my $self = shift;
    return $self->do_call('Aws::DataPipeline::QueryObjects', @_);
  }
  sub ReportTaskProgress {
    my $self = shift;
    return $self->do_call('Aws::DataPipeline::ReportTaskProgress', @_);
  }
  sub ReportTaskRunnerHeartbeat {
    my $self = shift;
    return $self->do_call('Aws::DataPipeline::ReportTaskRunnerHeartbeat', @_);
  }
  sub SetStatus {
    my $self = shift;
    return $self->do_call('Aws::DataPipeline::SetStatus', @_);
  }
  sub SetTaskStatus {
    my $self = shift;
    return $self->do_call('Aws::DataPipeline::SetTaskStatus', @_);
  }
  sub ValidatePipelineDefinition {
    my $self = shift;
    return $self->do_call('Aws::DataPipeline::ValidatePipelineDefinition', @_);
  }
}
1;
