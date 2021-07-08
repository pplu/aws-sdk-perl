
package Paws::NimbleStudio::UpdateStudioComponentResponse;
  use Moose;
  has StudioComponent => (is => 'ro', isa => 'Paws::NimbleStudio::StudioComponent', traits => ['NameInRequest'], request_name => 'studioComponent');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::UpdateStudioComponentResponse

=head1 ATTRIBUTES


=head2 StudioComponent => L<Paws::NimbleStudio::StudioComponent>

Information about the studio component.


=head2 _request_id => Str


=cut

