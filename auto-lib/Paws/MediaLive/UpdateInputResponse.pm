
package Paws::MediaLive::UpdateInputResponse;
  use Moose;
  has Input => (is => 'ro', isa => 'Paws::MediaLive::Input', traits => ['NameInRequest'], request_name => 'input');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateInputResponse

=head1 ATTRIBUTES


=head2 Input => L<Paws::MediaLive::Input>




=head2 _request_id => Str


=cut

