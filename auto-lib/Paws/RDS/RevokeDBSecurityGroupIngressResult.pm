
package Paws::RDS::RevokeDBSecurityGroupIngressResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has DBSecurityGroup => (is => 'ro', isa => 'Paws::RDS::DBSecurityGroup');

}
1;