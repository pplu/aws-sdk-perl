
package Paws::StorageGateway::DeleteTapePoolOutput;
  use Moose;
  has PoolARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DeleteTapePoolOutput

=head1 ATTRIBUTES


=head2 PoolARN => Str

The Amazon Resource Name (ARN) of the custom tape pool being deleted.


=head2 _request_id => Str


=cut

1;