
package Paws::Lightsail::RegisterContainerImageResult;
  use Moose;
  has ContainerImage => (is => 'ro', isa => 'Paws::Lightsail::ContainerImage', traits => ['NameInRequest'], request_name => 'containerImage' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::RegisterContainerImageResult

=head1 ATTRIBUTES


=head2 ContainerImage => L<Paws::Lightsail::ContainerImage>




=head2 _request_id => Str


=cut

1;