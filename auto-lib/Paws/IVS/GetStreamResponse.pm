
package Paws::IVS::GetStreamResponse;
  use Moose;
  has Stream => (is => 'ro', isa => 'Paws::IVS::Stream', traits => ['NameInRequest'], request_name => 'stream');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::GetStreamResponse

=head1 ATTRIBUTES


=head2 Stream => L<Paws::IVS::Stream>




=head2 _request_id => Str


=cut

