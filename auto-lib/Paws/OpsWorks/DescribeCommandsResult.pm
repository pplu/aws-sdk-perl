
package Paws::OpsWorks::DescribeCommandsResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Commands => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::Command]');

}
1;