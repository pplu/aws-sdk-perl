
package Paws::StorageGateway::AssociateFileSystemOutput;
  use Moose;
  has FileSystemAssociationARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::AssociateFileSystemOutput

=head1 ATTRIBUTES


=head2 FileSystemAssociationARN => Str

The ARN of the newly created file system association.


=head2 _request_id => Str


=cut

1;