
package Aws::DataPipeline::SetTaskStatus {
  use Moose;
  has errorId => (is => 'ro', isa => 'Str');
  has errorMessage => (is => 'ro', isa => 'Str');
  has errorStackTrace => (is => 'ro', isa => 'Str');
  has taskId => (is => 'ro', isa => 'Str', required => 1);
  has taskStatus => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetTaskStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::SetTaskStatusOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;