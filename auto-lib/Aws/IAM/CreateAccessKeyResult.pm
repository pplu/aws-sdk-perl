
package Aws::IAM::CreateAccessKeyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AccessKey => (is => 'ro', isa => 'Aws::IAM::AccessKey', required => 1);

}
1;