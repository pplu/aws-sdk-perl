
package Paws::Lightsail::ContainerServicesListResult;
  use Moose;
  has ContainerServices => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::ContainerService]', traits => ['NameInRequest'], request_name => 'containerServices' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::ContainerServicesListResult

=head1 ATTRIBUTES


=head2 ContainerServices => ArrayRef[L<Paws::Lightsail::ContainerService>]

An array of objects that describe one or more container services.


=head2 _request_id => Str


=cut

1;