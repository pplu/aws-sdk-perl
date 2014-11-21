
package Aws::CloudSearch::DescribeSuggestersResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Suggesters => (is => 'ro', isa => 'ArrayRef[Aws::CloudSearch::SuggesterStatus]', required => 1);

}
1;