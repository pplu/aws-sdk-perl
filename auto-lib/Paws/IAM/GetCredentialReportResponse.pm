
package Paws::IAM::GetCredentialReportResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Content => (is => 'ro', isa => 'Str');
  has GeneratedTime => (is => 'ro', isa => 'Str');
  has ReportFormat => (is => 'ro', isa => 'Str');

}
1;