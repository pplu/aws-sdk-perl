
package Paws::MediaTailor::GetChannelPolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::GetChannelPolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

The IAM policy for the channel.


=head2 _request_id => Str


=cut

