
package Aws::CloudSearch::DescribeSuggestersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Suggesters => (is => 'ro', isa => 'ArrayRef[Aws::CloudSearch::SuggesterStatus]', required => 1);

}
1;