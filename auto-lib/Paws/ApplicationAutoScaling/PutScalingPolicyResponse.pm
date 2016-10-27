
package Paws::ApplicationAutoScaling::PutScalingPolicyResponse;
  use Moose;
  has PolicyARN => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::PutScalingPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyARN => Str

The Amazon Resource Name (ARN) of the resulting scaling policy.




=cut

1;