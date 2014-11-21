
package Aws::CloudSearch::DeleteSuggester {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has SuggesterName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSuggester');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DeleteSuggesterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSuggesterResult');
}
1;