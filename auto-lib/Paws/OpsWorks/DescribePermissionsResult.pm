
package Paws::OpsWorks::DescribePermissionsResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::Permission]');

}
1;