
package Paws::NimbleStudio::AcceptEulasResponse;
  use Moose;
  has EulaAcceptances => (is => 'ro', isa => 'ArrayRef[Paws::NimbleStudio::EulaAcceptance]', traits => ['NameInRequest'], request_name => 'eulaAcceptances');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::AcceptEulasResponse

=head1 ATTRIBUTES


=head2 EulaAcceptances => ArrayRef[L<Paws::NimbleStudio::EulaAcceptance>]

A collection of EULA acceptances.


=head2 _request_id => Str


=cut

