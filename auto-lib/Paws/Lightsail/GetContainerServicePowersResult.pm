
package Paws::Lightsail::GetContainerServicePowersResult;
  use Moose;
  has Powers => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::ContainerServicePower]', traits => ['NameInRequest'], request_name => 'powers' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetContainerServicePowersResult

=head1 ATTRIBUTES


=head2 Powers => ArrayRef[L<Paws::Lightsail::ContainerServicePower>]

An array of objects that describe the powers that can be specified for
a container service.


=head2 _request_id => Str


=cut

1;