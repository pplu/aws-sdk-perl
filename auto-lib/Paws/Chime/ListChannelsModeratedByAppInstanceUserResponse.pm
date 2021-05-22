
package Paws::Chime::ListChannelsModeratedByAppInstanceUserResponse;
  use Moose;
  has Channels => (is => 'ro', isa => 'ArrayRef[Paws::Chime::ChannelModeratedByAppInstanceUserSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListChannelsModeratedByAppInstanceUserResponse

=head1 ATTRIBUTES


=head2 Channels => ArrayRef[L<Paws::Chime::ChannelModeratedByAppInstanceUserSummary>]

The moderated channels in the request.


=head2 NextToken => Str

The token returned from previous API requests until the number of
channels moderated by the user is reached.


=head2 _request_id => Str


=cut

