
package Paws::IAM::CreateGroupResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Group => (is => 'ro', isa => 'Paws::IAM::Group', required => 1);

}
1;