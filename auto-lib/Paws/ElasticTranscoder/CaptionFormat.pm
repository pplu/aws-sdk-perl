package Paws::ElasticTranscoder::CaptionFormat {
  use Moose;
  has Format => (is => 'ro', isa => 'Str');
  has Pattern => (is => 'ro', isa => 'Str');
}
1;
