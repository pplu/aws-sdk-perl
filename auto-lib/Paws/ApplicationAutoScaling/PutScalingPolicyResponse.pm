
package Paws::ApplicationAutoScaling::PutScalingPolicyResponse;
  use Moose;
  has Alarms => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationAutoScaling::Alarm]');
  has PolicyARN => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::PutScalingPolicyResponse

=head1 ATTRIBUTES


=head2 Alarms => ArrayRef[L<Paws::ApplicationAutoScaling::Alarm>]

The CloudWatch alarms created for the target tracking policy.


=head2 B<REQUIRED> PolicyARN => Str

The Amazon Resource Name (ARN) of the resulting scaling policy.


=head2 _request_id => Str


=cut

1;