
package Paws::Lightsail::GetContainerImagesResult;
  use Moose;
  has ContainerImages => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::ContainerImage]', traits => ['NameInRequest'], request_name => 'containerImages' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetContainerImagesResult

=head1 ATTRIBUTES


=head2 ContainerImages => ArrayRef[L<Paws::Lightsail::ContainerImage>]

An array of objects that describe container images that are registered
to the container service.


=head2 _request_id => Str


=cut

1;