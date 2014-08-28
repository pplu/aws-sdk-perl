
package Aws::RDS::RevokeDBSecurityGroupIngressResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSecurityGroup => (is => 'ro', isa => 'Aws::RDS::DBSecurityGroup');

}
1;