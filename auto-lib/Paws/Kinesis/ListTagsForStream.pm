
package Paws::Kinesis::ListTagsForStream {
  use Moose;
  has ExclusiveStartTagKey => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kinesis::ListTagsForStreamOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;