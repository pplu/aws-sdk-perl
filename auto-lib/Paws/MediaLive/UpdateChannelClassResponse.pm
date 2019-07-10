
package Paws::MediaLive::UpdateChannelClassResponse;
  use Moose;
  has Channel => (is => 'ro', isa => 'Paws::MediaLive::Channel', traits => ['NameInRequest'], request_name => 'channel');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateChannelClassResponse

=head1 ATTRIBUTES


=head2 Channel => L<Paws::MediaLive::Channel>




=head2 _request_id => Str


=cut

