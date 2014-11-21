
package Aws::Support::ResolveCaseResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has finalCaseStatus => (is => 'ro', isa => 'Str');
  has initialCaseStatus => (is => 'ro', isa => 'Str');

}
1;