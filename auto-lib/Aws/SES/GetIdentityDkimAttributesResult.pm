
package Aws::SES::GetIdentityDkimAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DkimAttributes => (is => 'ro', isa => 'Aws::SES::DkimAttributes', required => 1);

}
1;