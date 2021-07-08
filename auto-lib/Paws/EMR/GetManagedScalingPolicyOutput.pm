
package Paws::EMR::GetManagedScalingPolicyOutput;
  use Moose;
  has ManagedScalingPolicy => (is => 'ro', isa => 'Paws::EMR::ManagedScalingPolicy');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::GetManagedScalingPolicyOutput

=head1 ATTRIBUTES


=head2 ManagedScalingPolicy => L<Paws::EMR::ManagedScalingPolicy>

Specifies the managed scaling policy that is attached to an Amazon EMR
cluster.


=head2 _request_id => Str


=cut

1;