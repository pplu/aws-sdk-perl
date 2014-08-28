
package Aws::CloudSearch::DescribeSuggesters {
  use Moose;
  has Deployed => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has SuggesterNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSuggesters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DescribeSuggestersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSuggestersResult');
}
1;
