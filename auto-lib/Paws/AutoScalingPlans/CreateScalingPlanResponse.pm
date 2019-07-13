
package Paws::AutoScalingPlans::CreateScalingPlanResponse;
  use Moose;
  has ScalingPlanVersion => (is => 'ro', isa => 'Int', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::CreateScalingPlanResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScalingPlanVersion => Int

The version number of the scaling plan. This value is always 1.

Currently, you cannot specify multiple scaling plan versions.


=head2 _request_id => Str


=cut

1;