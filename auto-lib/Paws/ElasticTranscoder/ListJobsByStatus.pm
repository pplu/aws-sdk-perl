
package Paws::ElasticTranscoder::ListJobsByStatus {
  use Moose;
  has Ascending => (is => 'ro', isa => 'Str');
  has PageToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobsByStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::ListJobsByStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListJobsByStatusResult');
}
1;