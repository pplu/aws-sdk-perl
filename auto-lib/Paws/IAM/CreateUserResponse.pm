
package Paws::IAM::CreateUserResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has User => (is => 'ro', isa => 'Paws::IAM::User');

}
1;