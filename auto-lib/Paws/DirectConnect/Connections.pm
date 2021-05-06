
package Paws::DirectConnect::Connections;
  use Moose;
  has Connections => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::Connection]', traits => ['NameInRequest'], request_name => 'connections' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Connections

=head1 ATTRIBUTES


=head2 Connections => ArrayRef[L<Paws::DirectConnect::Connection>]

The connections.


=head2 _request_id => Str


=cut

1;