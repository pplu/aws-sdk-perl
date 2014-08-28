
package Aws::CloudSearch::DefineSuggesterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Suggester => (is => 'ro', isa => 'Aws::CloudSearch::SuggesterStatus', required => 1);

}
1;