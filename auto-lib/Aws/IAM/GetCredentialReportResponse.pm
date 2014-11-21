
package Aws::IAM::GetCredentialReportResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Content => (is => 'ro', isa => 'Str');
  has GeneratedTime => (is => 'ro', isa => 'Str');
  has ReportFormat => (is => 'ro', isa => 'Str');

}
1;