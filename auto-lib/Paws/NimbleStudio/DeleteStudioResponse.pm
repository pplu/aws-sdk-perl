
package Paws::NimbleStudio::DeleteStudioResponse;
  use Moose;
  has Studio => (is => 'ro', isa => 'Paws::NimbleStudio::Studio', traits => ['NameInRequest'], request_name => 'studio');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::DeleteStudioResponse

=head1 ATTRIBUTES


=head2 Studio => L<Paws::NimbleStudio::Studio>

Information about a studio.


=head2 _request_id => Str


=cut

