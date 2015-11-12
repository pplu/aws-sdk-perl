
package Paws::DirectConnect::ConfirmConnectionResponse;
  use Moose;
  has ConnectionState => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'connectionState' );


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::ConfirmConnectionResponse

=head1 ATTRIBUTES


=head2 ConnectionState => Str

  


=cut

1;