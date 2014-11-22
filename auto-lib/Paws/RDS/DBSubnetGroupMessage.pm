
package Paws::RDS::DBSubnetGroupMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has DBSubnetGroups => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBSubnetGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;