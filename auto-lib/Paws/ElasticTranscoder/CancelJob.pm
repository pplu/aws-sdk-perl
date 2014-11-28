
package Paws::ElasticTranscoder::CancelJob {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::CancelJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CancelJobResult');
}
1;