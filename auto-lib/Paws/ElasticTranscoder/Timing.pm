package Paws::ElasticTranscoder::Timing {
  use Moose;
  has FinishTimeMillis => (is => 'ro', isa => 'Num');
  has StartTimeMillis => (is => 'ro', isa => 'Num');
  has SubmitTimeMillis => (is => 'ro', isa => 'Num');
}
1;
