
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
1;