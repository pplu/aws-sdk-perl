
package Paws::MediaLive::UpdateMultiplexResponse;
  use Moose;
  has Multiplex => (is => 'ro', isa => 'Paws::MediaLive::Multiplex', traits => ['NameInRequest'], request_name => 'multiplex');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateMultiplexResponse

=head1 ATTRIBUTES


=head2 Multiplex => L<Paws::MediaLive::Multiplex>

The updated multiplex.


=head2 _request_id => Str


=cut

