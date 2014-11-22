
package Paws::RDS::CreateDBSubnetGroupResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has DBSubnetGroup => (is => 'ro', isa => 'Paws::RDS::DBSubnetGroup');

}
1;