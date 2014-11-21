
package Aws::EMR::ListInstancesOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::EMR::Instance]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;