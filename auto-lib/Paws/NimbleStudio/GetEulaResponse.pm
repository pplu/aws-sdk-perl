
package Paws::NimbleStudio::GetEulaResponse;
  use Moose;
  has Eula => (is => 'ro', isa => 'Paws::NimbleStudio::Eula', traits => ['NameInRequest'], request_name => 'eula');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::GetEulaResponse

=head1 ATTRIBUTES


=head2 Eula => L<Paws::NimbleStudio::Eula>

The EULA.


=head2 _request_id => Str


=cut

