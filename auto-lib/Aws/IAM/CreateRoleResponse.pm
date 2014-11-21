
package Aws::IAM::CreateRoleResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Role => (is => 'ro', isa => 'Aws::IAM::Role', required => 1);

}
1;