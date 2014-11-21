
package Aws::Route53Domains::GetDomainDetail {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDomainDetail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::GetDomainDetailResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;