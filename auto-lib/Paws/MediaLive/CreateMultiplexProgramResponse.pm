
package Paws::MediaLive::CreateMultiplexProgramResponse;
  use Moose;
  has MultiplexProgram => (is => 'ro', isa => 'Paws::MediaLive::MultiplexProgram', traits => ['NameInRequest'], request_name => 'multiplexProgram');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CreateMultiplexProgramResponse

=head1 ATTRIBUTES


=head2 MultiplexProgram => L<Paws::MediaLive::MultiplexProgram>

The newly created multiplex program.


=head2 _request_id => Str


=cut

