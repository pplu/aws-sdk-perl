
package Paws::Support::ResolveCaseResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has finalCaseStatus => (is => 'ro', isa => 'Str');
  has initialCaseStatus => (is => 'ro', isa => 'Str');

}
1;