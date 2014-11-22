
package Paws::Support::CreateCaseResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has caseId => (is => 'ro', isa => 'Str');

}
1;