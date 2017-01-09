
package Paws::EMR::PutAutoScalingPolicyOutput;
  use Moose;
  has AutoScalingPolicy => (is => 'ro', isa => 'Paws::EMR::AutoScalingPolicyDescription');
  has ClusterId => (is => 'ro', isa => 'Str');
  has InstanceGroupId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::PutAutoScalingPolicyOutput

=head1 ATTRIBUTES


=head2 AutoScalingPolicy => L<Paws::EMR::AutoScalingPolicyDescription>

The automatic scaling policy definition.


=head2 ClusterId => Str

Specifies the ID of a cluster. The instance group to which the
automatic scaling policy is applied is within this cluster.


=head2 InstanceGroupId => Str

Specifies the ID of the instance group to which the scaling policy is
applied.


=head2 _request_id => Str


=cut

1;