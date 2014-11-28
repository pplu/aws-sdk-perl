
package Paws::ElasticTranscoder::ReadJob {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReadJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::ReadJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ReadJobResult');
}
1;