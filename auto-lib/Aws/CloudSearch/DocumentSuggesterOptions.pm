package Aws::CloudSearch::DocumentSuggesterOptions {
  use Moose;
  with ('AWS::API::ResultParser');
  has FuzzyMatching => (is => 'ro', isa => 'Str');
  has SortExpression => (is => 'ro', isa => 'Str');
  has SourceField => (is => 'ro', isa => 'Str', required => 1);
}
1
