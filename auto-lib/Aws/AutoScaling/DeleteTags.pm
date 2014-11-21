
package Aws::AutoScaling::DeleteTags {
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::AutoScaling::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTags');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;