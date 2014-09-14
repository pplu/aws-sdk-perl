
package Aws::Kinesis::AddTagsToStream {
  use Moose;
  has StreamName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Aws::Kinesis::TagMap', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddTagsToStream');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;