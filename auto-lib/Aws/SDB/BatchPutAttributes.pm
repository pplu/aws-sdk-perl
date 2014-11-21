
package Aws::SDB::BatchPutAttributes {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::SDB::ReplaceableItem]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchPutAttributes');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;