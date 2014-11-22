
package Paws::OpsWorks::DescribeLayersResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Layers => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::Layer]');

}
1;