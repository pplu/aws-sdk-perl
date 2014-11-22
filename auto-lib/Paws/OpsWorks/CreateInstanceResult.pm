
package Paws::OpsWorks::CreateInstanceResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has InstanceId => (is => 'ro', isa => 'Str');

}
1;