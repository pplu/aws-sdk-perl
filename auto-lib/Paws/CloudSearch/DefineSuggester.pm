
package Paws::CloudSearch::DefineSuggester {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Suggester => (is => 'ro', isa => 'Paws::CloudSearch::Suggester', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DefineSuggester');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudSearch::DefineSuggesterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DefineSuggesterResult');
}
1;