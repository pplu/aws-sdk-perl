
package Paws::RDS::DBInstanceMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has DBInstances => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBInstance]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;