
package Paws::Glue::GetDevEndpointResponse;
  use Moose;
  has DevEndpoint => (is => 'ro', isa => 'Paws::Glue::DevEndpoint');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDevEndpointResponse

=head1 ATTRIBUTES


=head2 DevEndpoint => L<Paws::Glue::DevEndpoint>

A DevEndpoint definition.


=head2 _request_id => Str


=cut

1;