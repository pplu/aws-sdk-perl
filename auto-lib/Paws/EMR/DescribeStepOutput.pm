
package Paws::EMR::DescribeStepOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Step => (is => 'ro', isa => 'Paws::EMR::Step');

}
1;