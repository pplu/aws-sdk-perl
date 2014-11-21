
package Aws::IAM::CreateInstanceProfileResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has InstanceProfile => (is => 'ro', isa => 'Aws::IAM::InstanceProfile', required => 1);

}
1;