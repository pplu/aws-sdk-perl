
package Paws::RDS::DBSecurityGroupMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has DBSecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBSecurityGroup]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;