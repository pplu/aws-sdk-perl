
package Paws::IAM::CreateAccessKeyResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has AccessKey => (is => 'ro', isa => 'Paws::IAM::AccessKey', required => 1);

}
1;