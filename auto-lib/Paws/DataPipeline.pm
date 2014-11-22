
use Paws::API;


package Paws::DataPipeline {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'datapipeline');
  has version => (is => 'ro', isa => 'Str', default => '2012-10-29');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'DataPipeline');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub ActivatePipeline {
    my $self = shift;
    return $self->do_call('Paws::DataPipeline::ActivatePipeline', @_);
  }
  sub CreatePipeline {
    my $self = shift;
    return $self->do_call('Paws::DataPipeline::CreatePipeline', @_);
  }
  sub DeletePipeline {
    my $self = shift;
    return $self->do_call('Paws::DataPipeline::DeletePipeline', @_);
  }
  sub DescribeObjects {
    my $self = shift;
    return $self->do_call('Paws::DataPipeline::DescribeObjects', @_);
  }
  sub DescribePipelines {
    my $self = shift;
    return $self->do_call('Paws::DataPipeline::DescribePipelines', @_);
  }
  sub EvaluateExpression {
    my $self = shift;
    return $self->do_call('Paws::DataPipeline::EvaluateExpression', @_);
  }
  sub GetPipelineDefinition {
    my $self = shift;
    return $self->do_call('Paws::DataPipeline::GetPipelineDefinition', @_);
  }
  sub ListPipelines {
    my $self = shift;
    return $self->do_call('Paws::DataPipeline::ListPipelines', @_);
  }
  sub PollForTask {
    my $self = shift;
    return $self->do_call('Paws::DataPipeline::PollForTask', @_);
  }
  sub PutPipelineDefinition {
    my $self = shift;
    return $self->do_call('Paws::DataPipeline::PutPipelineDefinition', @_);
  }
  sub QueryObjects {
    my $self = shift;
    return $self->do_call('Paws::DataPipeline::QueryObjects', @_);
  }
  sub ReportTaskProgress {
    my $self = shift;
    return $self->do_call('Paws::DataPipeline::ReportTaskProgress', @_);
  }
  sub ReportTaskRunnerHeartbeat {
    my $self = shift;
    return $self->do_call('Paws::DataPipeline::ReportTaskRunnerHeartbeat', @_);
  }
  sub SetStatus {
    my $self = shift;
    return $self->do_call('Paws::DataPipeline::SetStatus', @_);
  }
  sub SetTaskStatus {
    my $self = shift;
    return $self->do_call('Paws::DataPipeline::SetTaskStatus', @_);
  }
  sub ValidatePipelineDefinition {
    my $self = shift;
    return $self->do_call('Paws::DataPipeline::ValidatePipelineDefinition', @_);
  }
}
1;
