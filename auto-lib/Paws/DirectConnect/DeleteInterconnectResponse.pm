
package Paws::DirectConnect::DeleteInterconnectResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has interconnectState => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DeleteInterconnectResponse

=head1 ATTRIBUTES

=head2 interconnectState => Str

  


=cut

1;