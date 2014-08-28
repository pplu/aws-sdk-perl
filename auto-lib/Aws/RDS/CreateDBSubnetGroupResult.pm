
package Aws::RDS::CreateDBSubnetGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DBSubnetGroup => (is => 'ro', isa => 'Aws::RDS::DBSubnetGroup');

}
1;