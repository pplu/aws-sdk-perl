
package Paws::Chime::CreateChannelMembershipResponse;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str');
  has Member => (is => 'ro', isa => 'Paws::Chime::Identity');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateChannelMembershipResponse

=head1 ATTRIBUTES


=head2 ChannelArn => Str

The ARN of the channel.


=head2 Member => L<Paws::Chime::Identity>

The ARN and metadata of the member being added.


=head2 _request_id => Str


=cut

