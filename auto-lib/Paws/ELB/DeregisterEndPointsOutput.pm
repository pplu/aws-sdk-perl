
package Paws::ELB::DeregisterEndPointsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::ELB::Instance]');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DeregisterEndPointsOutput

=head1 ATTRIBUTES

=head2 Instances => ArrayRef[Paws::ELB::Instance]

  

An updated list of remaining instances registered with the load
balancer.











=cut

