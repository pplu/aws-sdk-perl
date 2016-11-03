
package Paws::DirectConnect::DeleteInterconnectResponse;
  use Moose;
  has InterconnectState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'interconnectState' );


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DeleteInterconnectResponse

=head1 ATTRIBUTES


=head2 InterconnectState => Str



Valid values are: C<"requested">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">


=cut

1;