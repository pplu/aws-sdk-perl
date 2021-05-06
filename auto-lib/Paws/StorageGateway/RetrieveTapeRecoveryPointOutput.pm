
package Paws::StorageGateway::RetrieveTapeRecoveryPointOutput;
  use Moose;
  has TapeARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::RetrieveTapeRecoveryPointOutput

=head1 ATTRIBUTES


=head2 TapeARN => Str

The Amazon Resource Name (ARN) of the virtual tape for which the
recovery point was retrieved.


=head2 _request_id => Str


=cut

1;