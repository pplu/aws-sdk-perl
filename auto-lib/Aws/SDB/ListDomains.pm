
package Aws::SDB::ListDomains {
  use Moose;
  has MaxNumberOfDomains => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomains');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SDB::ListDomainsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListDomainsResult');
}
1;