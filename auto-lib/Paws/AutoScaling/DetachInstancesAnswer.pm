
package Paws::AutoScaling::DetachInstancesAnswer;
  use Moose;
  has Activities => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::Activity]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DetachInstancesAnswer

=head1 ATTRIBUTES


=head2 Activities => ArrayRef[L<Paws::AutoScaling::Activity>]

The activities related to detaching the instances from the Auto Scaling
group.


=head2 _request_id => Str


=cut

