
package Paws::IAM::GetAccountSummaryResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has SummaryMap => (is => 'ro', isa => 'Paws::IAM::summaryMapType');

}
1;