
package Aws::CloudSearch::DeleteIndexField {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has IndexFieldName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIndexField');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DeleteIndexFieldResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteIndexFieldResult');
}
1;