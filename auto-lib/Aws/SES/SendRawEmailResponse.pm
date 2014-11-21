
package Aws::SES::SendRawEmailResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has MessageId => (is => 'ro', isa => 'Str', required => 1);

}
1;