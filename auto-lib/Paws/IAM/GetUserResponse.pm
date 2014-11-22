
package Paws::IAM::GetUserResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has User => (is => 'ro', isa => 'Paws::IAM::User', required => 1);

}
1;