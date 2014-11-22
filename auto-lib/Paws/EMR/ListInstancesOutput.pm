
package Paws::EMR::ListInstancesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Instance]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;