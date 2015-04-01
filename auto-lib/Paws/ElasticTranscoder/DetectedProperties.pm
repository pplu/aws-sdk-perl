package Paws::ElasticTranscoder::DetectedProperties {
  use Moose;
  has DurationMillis => (is => 'ro', isa => 'Num');
  has FileSize => (is => 'ro', isa => 'Num');
  has FrameRate => (is => 'ro', isa => 'Str');
  has Height => (is => 'ro', isa => 'Int');
  has Width => (is => 'ro', isa => 'Int');
}
1;
