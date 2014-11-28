
package Paws::ElasticTranscoder::UpdatePipelineStatus {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePipelineStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::UpdatePipelineStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdatePipelineStatusResult');
}
1;