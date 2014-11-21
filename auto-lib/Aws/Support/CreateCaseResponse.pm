
package Aws::Support::CreateCaseResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has caseId => (is => 'ro', isa => 'Str');

}
1;