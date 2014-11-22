
package Paws::OpsWorks::DescribeAppsResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Apps => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::App]');

}
1;