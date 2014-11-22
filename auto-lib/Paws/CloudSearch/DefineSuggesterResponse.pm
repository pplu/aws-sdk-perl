
package Paws::CloudSearch::DefineSuggesterResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Suggester => (is => 'ro', isa => 'Paws::CloudSearch::SuggesterStatus', required => 1);

}
1;