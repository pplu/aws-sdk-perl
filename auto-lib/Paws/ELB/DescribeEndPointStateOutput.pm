
package Paws::ELB::DescribeEndPointStateOutput;
  use Moose;
  has InstanceStates => (is => 'ro', isa => 'ArrayRef[Paws::ELB::InstanceState]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeEndPointStateOutput

=head1 ATTRIBUTES


=head2 InstanceStates => ArrayRef[L<Paws::ELB::InstanceState>]

Information about the health of the instances.


=head2 _request_id => Str


=cut

