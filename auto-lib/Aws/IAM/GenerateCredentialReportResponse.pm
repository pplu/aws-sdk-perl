
package Aws::IAM::GenerateCredentialReportResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Description => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

}
1;