
package Paws::IAM::GenerateCredentialReportResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Description => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

}
1;