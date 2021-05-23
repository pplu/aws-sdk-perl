
package Paws::IVS::GetChannelResponse;
  use Moose;
  has Channel => (is => 'ro', isa => 'Paws::IVS::Channel', traits => ['NameInRequest'], request_name => 'channel');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::GetChannelResponse

=head1 ATTRIBUTES


=head2 Channel => L<Paws::IVS::Channel>




=head2 _request_id => Str


=cut

