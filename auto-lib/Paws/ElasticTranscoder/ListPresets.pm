
package Paws::ElasticTranscoder::ListPresets {
  use Moose;
  has Ascending => (is => 'ro', isa => 'Str');
  has PageToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPresets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::ListPresetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListPresetsResult');
}
1;