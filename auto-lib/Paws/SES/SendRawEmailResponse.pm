
package Paws::SES::SendRawEmailResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has MessageId => (is => 'ro', isa => 'Str', required => 1);

}
1;