
package Paws::CloudSearch::DescribeSuggestersResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Suggesters => (is => 'ro', isa => 'ArrayRef[Paws::CloudSearch::SuggesterStatus]', required => 1);

}
1;