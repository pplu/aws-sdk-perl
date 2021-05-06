
package Paws::StorageGateway::DeleteTapeOutput;
  use Moose;
  has TapeARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DeleteTapeOutput

=head1 ATTRIBUTES


=head2 TapeARN => Str

The Amazon Resource Name (ARN) of the deleted virtual tape.


=head2 _request_id => Str


=cut

1;