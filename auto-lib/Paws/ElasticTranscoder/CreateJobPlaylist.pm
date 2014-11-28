package Paws::ElasticTranscoder::CreateJobPlaylist {
  use Moose;
  has Format => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OutputKeys => (is => 'ro', isa => 'ArrayRef[Str]');
}
1;
