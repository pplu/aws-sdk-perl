
package Paws::ElasticTranscoder::ReadPreset {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReadPreset');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::ReadPresetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ReadPresetResult');
}
1;