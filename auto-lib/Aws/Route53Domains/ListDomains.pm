
package Aws::Route53Domains::ListDomains {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomains');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::ListDomainsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
