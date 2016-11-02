
package Paws::ELB::DeregisterEndPointsOutput;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::ELB::Instance]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DeregisterEndPointsOutput

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[L<Paws::ELB::Instance>]

The remaining instances registered with the load balancer.


=head2 _request_id => Str


=cut

