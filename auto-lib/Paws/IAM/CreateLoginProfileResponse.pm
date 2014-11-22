
package Paws::IAM::CreateLoginProfileResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has LoginProfile => (is => 'ro', isa => 'Paws::IAM::LoginProfile', required => 1);

}
1;