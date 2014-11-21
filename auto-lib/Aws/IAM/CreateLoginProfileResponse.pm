
package Aws::IAM::CreateLoginProfileResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has LoginProfile => (is => 'ro', isa => 'Aws::IAM::LoginProfile', required => 1);

}
1;