
package Aws::IAM::CreateAccessKeyResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has AccessKey => (is => 'ro', isa => 'Aws::IAM::AccessKey', required => 1);

}
1;