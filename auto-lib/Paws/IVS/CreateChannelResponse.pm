
package Paws::IVS::CreateChannelResponse;
  use Moose;
  has Channel => (is => 'ro', isa => 'Paws::IVS::Channel', traits => ['NameInRequest'], request_name => 'channel');
  has StreamKey => (is => 'ro', isa => 'Paws::IVS::StreamKey', traits => ['NameInRequest'], request_name => 'streamKey');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::CreateChannelResponse

=head1 ATTRIBUTES


=head2 Channel => L<Paws::IVS::Channel>




=head2 StreamKey => L<Paws::IVS::StreamKey>




=head2 _request_id => Str


=cut

