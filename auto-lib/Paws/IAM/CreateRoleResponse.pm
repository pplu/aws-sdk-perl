
package Paws::IAM::CreateRoleResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Role => (is => 'ro', isa => 'Paws::IAM::Role', required => 1);

}
1;