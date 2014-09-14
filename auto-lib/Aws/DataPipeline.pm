
use AWS::API;


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
