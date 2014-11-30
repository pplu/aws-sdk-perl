
package Paws::StorageGateway::DeleteTapeOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has TapeARN => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DeleteTapeOutput

=head1 ATTRIBUTES

=head2 TapeARN => Str

  

The Amazon Resource Name (ARN) of the deleted virtual tape.











=cut

1;