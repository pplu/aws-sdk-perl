
package Aws::Support::DescribeCasesResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has cases => (is => 'ro', isa => 'ArrayRef[Aws::Support::CaseDetails]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;