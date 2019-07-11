
package Paws::StorageGateway::AssignTapePoolOutput;
  use Moose;
  has TapeARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::AssignTapePoolOutput

=head1 ATTRIBUTES


=head2 TapeARN => Str

The unique Amazon Resource Names (ARN) of the virtual tape that was
added to the tape pool.


=head2 _request_id => Str


=cut

1;