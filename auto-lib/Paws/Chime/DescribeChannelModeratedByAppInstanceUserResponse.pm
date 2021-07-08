
package Paws::Chime::DescribeChannelModeratedByAppInstanceUserResponse;
  use Moose;
  has Channel => (is => 'ro', isa => 'Paws::Chime::ChannelModeratedByAppInstanceUserSummary');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::DescribeChannelModeratedByAppInstanceUserResponse

=head1 ATTRIBUTES


=head2 Channel => L<Paws::Chime::ChannelModeratedByAppInstanceUserSummary>

The moderated channel.


=head2 _request_id => Str


=cut

