
package Paws::StorageGateway::UpdateNFSFileShareOutput;
  use Moose;
  has FileShareARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateNFSFileShareOutput

=head1 ATTRIBUTES


=head2 FileShareARN => Str

The Amazon Resource Name (ARN) of the updated file share.


=head2 _request_id => Str


=cut

1;