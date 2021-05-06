
package Paws::Lightsail::CloseInstancePublicPortsResult;
  use Moose;
  has Operation => (is => 'ro', isa => 'Paws::Lightsail::Operation', traits => ['NameInRequest'], request_name => 'operation' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CloseInstancePublicPortsResult

=head1 ATTRIBUTES


=head2 Operation => L<Paws::Lightsail::Operation>

An array of key-value pairs that contains information about the
operation.


=head2 _request_id => Str


=cut

1;