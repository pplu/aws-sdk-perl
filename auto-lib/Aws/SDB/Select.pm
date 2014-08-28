
package Aws::SDB::Select {
  use Moose;
  has ConsistentRead => (is => 'ro', isa => 'Bool');
  has NextToken => (is => 'ro', isa => 'Str');
  has SelectExpression => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Select');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SDB::SelectResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SelectResult');
}
1;
  