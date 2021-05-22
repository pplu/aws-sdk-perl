
package Paws::StorageGateway::DisassociateFileSystemOutput;
  use Moose;
  has FileSystemAssociationARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DisassociateFileSystemOutput

=head1 ATTRIBUTES


=head2 FileSystemAssociationARN => Str

The Amazon Resource Name (ARN) of the deleted file system association.


=head2 _request_id => Str


=cut

1;