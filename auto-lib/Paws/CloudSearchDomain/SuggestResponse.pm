
package Paws::CloudSearchDomain::SuggestResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has status => (is => 'ro', isa => 'Paws::CloudSearchDomain::SuggestStatus');
  has suggest => (is => 'ro', isa => 'Paws::CloudSearchDomain::SuggestModel');

}
1;