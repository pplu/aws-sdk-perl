package Aws::CloudSearch::Suggester {
  use Moose;
  has DocumentSuggesterOptions => (is => 'ro', isa => 'Aws::CloudSearch::DocumentSuggesterOptions', required => 1);
  has SuggesterName => (is => 'ro', isa => 'Str', required => 1);
}
1;
