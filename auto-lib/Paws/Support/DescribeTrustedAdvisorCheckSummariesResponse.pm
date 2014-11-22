
package Paws::Support::DescribeTrustedAdvisorCheckSummariesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has summaries => (is => 'ro', isa => 'ArrayRef[Paws::Support::TrustedAdvisorCheckSummary]', required => 1);

}
1;