
package Aws::DataPipeline::QueryObjects {
  use Moose;
  has limit => (is => 'ro', isa => 'Int');
  has marker => (is => 'ro', isa => 'Str');
  has pipelineId => (is => 'ro', isa => 'Str', required => 1);
  has query => (is => 'ro', isa => 'Aws::DataPipeline::Query');
  has sphere => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'QueryObjects');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::DataPipeline::QueryObjectsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;