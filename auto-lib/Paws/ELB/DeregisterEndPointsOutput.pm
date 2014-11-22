
package Paws::ELB::DeregisterEndPointsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::ELB::Instance]');

}
1;