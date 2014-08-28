
package Aws::CloudSearch::ListDomainNames {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomainNames');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::ListDomainNamesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListDomainNamesResult');
}
1;
  