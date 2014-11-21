
package Aws::IAM::GetAccountSummaryResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has SummaryMap => (is => 'ro', isa => 'Aws::IAM::summaryMapType');

}
1;