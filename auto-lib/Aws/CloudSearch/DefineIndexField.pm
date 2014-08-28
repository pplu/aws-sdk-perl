
package Aws::CloudSearch::DefineIndexField {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has IndexField => (is => 'ro', isa => 'Aws::CloudSearch::IndexField', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DefineIndexField');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DefineIndexFieldResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DefineIndexFieldResult');
}
1;
  