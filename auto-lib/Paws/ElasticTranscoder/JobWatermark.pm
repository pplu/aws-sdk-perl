package Paws::ElasticTranscoder::JobWatermark {
  use Moose;
  has InputKey => (is => 'ro', isa => 'Str');
  has PresetWatermarkId => (is => 'ro', isa => 'Str');
}
1;
