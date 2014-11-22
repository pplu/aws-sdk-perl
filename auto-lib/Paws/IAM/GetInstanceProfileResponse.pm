
package Paws::IAM::GetInstanceProfileResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has InstanceProfile => (is => 'ro', isa => 'Paws::IAM::InstanceProfile', required => 1);

}
1;