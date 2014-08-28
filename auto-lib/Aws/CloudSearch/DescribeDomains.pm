
package Aws::CloudSearch::DescribeDomains {
  use Moose;
  has DomainNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDomains');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DescribeDomainsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDomainsResult');
}
1;
  