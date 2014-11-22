
package Paws::ELB::RegisterEndPointsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::ELB::Instance]');

}
1;